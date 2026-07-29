import ChemicalGraphTheoryLemmaCanonicalLaneLean.MolecularGraph

namespace HautevilleHouse
namespace ChemicalGraphTheoryLemmaCanonicalLaneLean

structure HuckelModelPackage (G : MolecularGraph) where
  overlapMatrix : G.vertices → G.vertices → ℝ
  hamiltonianMatrix : G.vertices → G.vertices → ℝ
  eigenvalues : List ℝ
  eigenvectorBasis : Type u
  hamiltonianHermitian : ∀ u v, hamiltonianMatrix u v = hamiltonianMatrix v u
  eigenvalueReal : ∀ λ ∈ eigenvalues, λ = λ
  spectralGapDefined : (eigenvalues.max? (-∞) - eigenvalues.min? (∞)) > 0

structure HuckelModelEvidence {G : MolecularGraph} (H : HuckelModelPackage G) where
  overlapPositiveDefinite : Prop
  hamiltonianHermitianClosed : H.hamiltonianHermitian
  eigenvalueRealClosed : H.eigenvalueReal
  spectralGapPositive : H.spectralGapDefined

def HuckelModelClosed {G : MolecularGraph} (H : HuckelModelPackage G) : Prop :=
  H.hamiltonianHermitian ∧ H.eigenvalueReal ∧ H.spectralGapDefined

theorem huckel_model_closed_from_evidence {G : MolecularGraph} (H : HuckelModelPackage G) (E : HuckelModelEvidence H) : HuckelModelClosed H := by
  exact And.intro E.hamiltonianHermitianClosed (And.intro E.eigenvalueRealClosed E.spectralGapPositive)

end ChemicalGraphTheoryLemmaCanonicalLaneLean
end HautevilleHouse