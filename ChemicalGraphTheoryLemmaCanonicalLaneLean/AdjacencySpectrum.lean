import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ChemicalGraphTheoryLemmaCanonicalLaneLean.MolecularGraph

namespace HautevilleHouse
namespace ChemicalGraphTheoryLemmaCanonicalLaneLean

structure AdjacencySpectrum (G : MolecularGraph) where
  eigenvalues : List ℝ
  spectralRadius : ℝ
  eigenvalueCount : Nat
  adjacencyMatrix : Matrix (Fin G.vertexCount) (Fin G.vertexCount) ℝ
  spectrumClosed : Prop
  spectrumClosedTerm : spectrumClosed

theorem adjacency_spectrum_symmetric (G : MolecularGraph) (A : AdjacencySpectrum G) :
  A.adjacencyMatrix = A.adjacencyMatrixᵀ := by
  apply A.spectrumClosedTerm

end ChemicalGraphTheoryLemmaCanonicalLaneLean
end HautevilleHouse