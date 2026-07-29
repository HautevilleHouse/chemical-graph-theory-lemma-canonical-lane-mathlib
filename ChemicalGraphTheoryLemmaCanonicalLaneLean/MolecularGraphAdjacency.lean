import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalGraphTheoryLemmaCanonicalLaneLean

structure MolecularGraph where
  vertexCount : Nat
  edgeCount : Nat
  adjacencyMatrix : Nat → Nat → Nat
  connected : Prop
  degreeSequence : List Nat
  hamiltonian : Prop
  bipartite : Prop

structure AdjacencyEvidence (G : MolecularGraph) where
  connectedClosed : G.connected
  degreeSequenceValid : G.degreeSequence.length = G.vertexCount
  hamiltonianClosed : G.hamiltonian
  bipartiteClosed : G.bipartite

def AdjacencyClosed (G : MolecularGraph) : Prop :=
  G.connected ∧ G.hamiltonian ∧ G.bipartite

theorem adjacency_closed_from_evidence (G : MolecularGraph) (E : AdjacencyEvidence G) :
    AdjacencyClosed G := by
  exact And.intro E.connectedClosed (And.intro E.hamiltonianClosed E.bipartiteClosed)

end ChemicalGraphTheoryLemmaCanonicalLaneLean
end HautevilleHouse
