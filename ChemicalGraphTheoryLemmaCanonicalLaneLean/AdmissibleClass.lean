import canonicalLaneMathlib.ChemicalGraphTheoryLemmaCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace ChemicalGraphTheoryLemmaCanonicalLaneLean

structure AdmissibleClass where
  object : ChemicalGraphTheoryAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ChemicalGraphTheoryWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ChemicalGraphTheoryLemmaCanonicalLaneLean
end HautevilleHouse
