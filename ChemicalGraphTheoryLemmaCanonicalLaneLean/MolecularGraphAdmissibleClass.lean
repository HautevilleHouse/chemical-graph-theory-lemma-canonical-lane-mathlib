import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalGraphTheoryLemmaCanonicalLaneLean

structure MolecularGraphObject where
  vertices : Nat
  edges : Nat
  adjacencyMatrix : Type u
  spectrum : Prop
  huckelModelConvergence : Prop

structure AdmittedObject where
  graph : MolecularGraphObject
  bipartite : Prop
  alternant : Prop
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

end ChemicalGraphTheoryLemmaCanonicalLaneLean
end HautevilleHouse