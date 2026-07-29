import ChemicalGraphTheoryLemmaCanonicalLaneLean.SpectralPartition
import ChemicalGraphTheoryLemmaCanonicalLaneLean.TopologicalIndices

namespace HautevilleHouse
namespace ChemicalGraphTheoryLemmaCanonicalLaneLean

structure ReactivityDescriptorPackage {G : MolecularGraph} {H : HuckelModelPackage G} {S : SpectralPartitionPackage G H} {T : TopologicalIndexPackage G} where
  hardness : ℝ := S.gap / 2
  electrophilicity : ℝ
  chemicalPotential : ℝ := (S.homoEnergy + S.lumoEnergy) / 2
  hardnessPositive : hardness > 0
  electrophilicityPositive : electrophilicity > 0

structure ReactivityDescriptorEvidence {G : MolecularGraph} {H : HuckelModelPackage G} {S : SpectralPartitionPackage G H} {T : TopologicalIndexPackage G} (R : ReactivityDescriptorPackage G H S T) where
  hardnessPositiveClosed : R.hardnessPositive
  electrophilicityPositiveClosed : R.electrophilicityPositive

def ReactivityDescriptorClosed {G : MolecularGraph} {H : HuckelModelPackage G} {S : SpectralPartitionPackage G H} {T : TopologicalIndexPackage G} (R : ReactivityDescriptorPackage G H S T) : Prop :=
  R.hardnessPositive ∧ R.electrophilicityPositive

theorem reactivity_descriptor_closed_from_evidence {G : MolecularGraph} {H : HuckelModelPackage G} {S : SpectralPartitionPackage G H} {T : TopologicalIndexPackage G} (R : ReactivityDescriptorPackage G H S T) (E : ReactivityDescriptorEvidence R) : ReactivityDescriptorClosed R := by
  exact And.intro E.hardnessPositiveClosed E.electrophilicityPositiveClosed

end ChemicalGraphTheoryLemmaCanonicalLaneLean
end HautevilleHouse