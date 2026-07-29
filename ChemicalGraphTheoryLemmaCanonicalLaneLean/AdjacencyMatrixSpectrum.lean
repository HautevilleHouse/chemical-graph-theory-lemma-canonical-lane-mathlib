import HautevilleHouse.ChemicalGraphTheoryLemmaCanonicalLaneLean.MolecularGraphStructure

namespace HautevilleHouse
namespace ChemicalGraphTheoryLemmaCanonicalLaneLean

structure AdjacencyMatrix (G : MolecularGraph) where
  matrixType : Type u
  eigenvalues : List ℝ
  spectralGap : ℝ
  eigenvalueBounded : Prop
  spectrumSymmetric : Prop

structure AdjacencyMatrixEvidence {G : MolecularGraph} (A : AdjacencyMatrix G) where
  eigenvalueBoundedClosed : A.eigenvalueBounded
  spectrumSymmetricClosed : A.spectrumSymmetric

def AdjacencyMatrixClosed {G : MolecularGraph} (A : AdjacencyMatrix G) : Prop :=
  A.eigenvalueBounded ∧ A.spectrumSymmetric

theorem adjacency_matrix_closed_from_evidence {G : MolecularGraph} (A : AdjacencyMatrix G) (E : AdjacencyMatrixEvidence A) : AdjacencyMatrixClosed A := by
  exact And.intro E.eigenvalueBoundedClosed E.spectrumSymmetricClosed

end ChemicalGraphTheoryLemmaCanonicalLaneLean
end HautevilleHouse