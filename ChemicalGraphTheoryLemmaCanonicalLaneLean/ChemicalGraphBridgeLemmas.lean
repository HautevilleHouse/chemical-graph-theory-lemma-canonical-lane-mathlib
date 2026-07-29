import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ChemicalGraphTheoryLemmaCanonicalLaneLean.MolecularGraph
import HautevilleHouse.ChemicalGraphTheoryLemmaCanonicalLaneLean.HuckelRule

namespace HautevilleHouse
namespace ChemicalGraphTheoryLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  match A.object with
  | object => molecularGraph object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
  bridgeClosed A := by
  exact A.object.conclusion

end ChemicalGraphTheoryLemmaCanonicalLaneLean
end HautevilleHouse