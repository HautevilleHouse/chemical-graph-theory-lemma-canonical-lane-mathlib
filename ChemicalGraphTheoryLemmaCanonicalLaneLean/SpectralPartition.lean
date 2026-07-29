import ChemicalGraphTheoryLemmaCanonicalLaneLean.HuckelModel

namespace HautevilleHouse
namespace ChemicalGraphTheoryLemmaCanonicalLaneLean

structure SpectralPartitionPackage {G : MolecularGraph} {H : HuckelModelPackage G} where
  occupiedOrbitals : List ℝ
  homoEnergy : ℝ
  lumoEnergy : ℝ
  gap : ℝ := lumoEnergy - homoEnergy
  gapPositive : gap > 0

structure SpectralPartitionEvidence {G : MolecularGraph} {H : HuckelModelPackage G} (S : SpectralPartitionPackage G H) where
  homoLumoGapClosed : S.gapPositive
  occupiedOrbitalsClosed : S.occupiedOrbitals.length = G.vertexCount / 2

def SpectralPartitionClosed {G : MolecularGraph} {H : HuckelModelPackage G} (S : SpectralPartitionPackage G H) : Prop :=
  S.gapPositive ∧ S.occupiedOrbitals.length = G.vertexCount / 2

theorem spectral_partition_closed_from_evidence {G : MolecularGraph} {H : HuckelModelPackage G} (S : SpectralPartitionPackage G H) (E : SpectralPartitionEvidence S) : SpectralPartitionClosed S := by
  exact And.intro E.homoLumoGapClosed E.occupiedOrbitalsClosed

end ChemicalGraphTheoryLemmaCanonicalLaneLean
end HautevilleHouse