import HautevilleHouse.ChemicalGraphTheoryLemmaCanonicalLaneLean.AdjacencyMatrixSpectrum

namespace HautevilleHouse
namespace ChemicalGraphTheoryLemmaCanonicalLaneLean

structure HuckelOrbitalPackage {G : MolecularGraph} (A : AdjacencyMatrix G) where
  piElectronCount : ℕ
  homoEnergy : ℝ
  lumoEnergy : ℝ
  energyLevelsStable : Prop
  aromaticStabilization : Prop

structure HuckelOrbitalEvidence {G : MolecularGraph} {A : AdjacencyMatrix G} (H : HuckelOrbitalPackage A) where
  energyLevelsStableClosed : H.energyLevelsStable
  aromaticStabilizationClosed : H.aromaticStabilization

def HuckelOrbitalClosed {G : MolecularGraph} {A : AdjacencyMatrix G} (H : HuckelOrbitalPackage A) : Prop :=
  H.energyLevelsStable ∧ H.aromaticStabilization

theorem huckel_orbital_closed_from_evidence {G : MolecularGraph} {A : AdjacencyMatrix G} (H : HuckelOrbitalPackage A) (E : HuckelOrbitalEvidence H) : HuckelOrbitalClosed H := by
  exact And.intro E.energyLevelsStableClosed E.aromaticStabilizationClosed

end ChemicalGraphTheoryLemmaCanonicalLaneLean
end HautevilleHouse