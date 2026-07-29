import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalGraphTheoryLemmaCanonicalLaneLean

structure MolecularGraph where
  vertices : Type u
  edges : vertices → vertices → Prop
  bondOrders : vertices → vertices → Nat
  hydrogenAtoms : vertices → Nat
  graphIsConnected : Prop
  degreeAtMostFour : Prop
  noMultipleEdges : Prop

structure MolecularGraphEvidence (G : MolecularGraph) where
  graphIsConnectedClosed : G.graphIsConnected
  degreeAtMostFourClosed : G.degreeAtMostFour
  noMultipleEdgesClosed : G.noMultipleEdges

def MolecularGraphClosed (G : MolecularGraph) : Prop :=
  G.graphIsConnected ∧ G.degreeAtMostFour ∧ G.noMultipleEdges

theorem molecular_graph_closed_from_evidence (G : MolecularGraph) (E : MolecularGraphEvidence G) : MolecularGraphClosed G := by
  exact And.intro E.graphIsConnectedClosed (And.intro E.degreeAtMostFourClosed E.noMultipleEdgesClosed)

end ChemicalGraphTheoryLemmaCanonicalLaneLean
end HautevilleHouse