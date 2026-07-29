import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalGraphTheoryLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  MolecularGraphClosed A.object ∧ AdjacencyMatrixClosed A.object.adjacency

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact And.intro A.object.graphIsConnected A.object.eigenvalueBounded

end ChemicalGraphTheoryLemmaCanonicalLaneLean
end HautevilleHouse