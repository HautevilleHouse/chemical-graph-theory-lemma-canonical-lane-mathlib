import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ChemicalGraphTheoryLemmaCanonicalLaneLean.ChemicalGraphBridgeLemmas
import HautevilleHouse.ChemicalGraphTheoryLemmaCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace ChemicalGraphTheoryLemmaCanonicalLaneLean

def ConstrainedChemicalGraphClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_chemical_graph_endgame (A : AdmissibleClass) :
  ConstrainedChemicalGraphClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ChemicalGraphTheoryLemmaCanonicalLaneLean
end HautevilleHouse