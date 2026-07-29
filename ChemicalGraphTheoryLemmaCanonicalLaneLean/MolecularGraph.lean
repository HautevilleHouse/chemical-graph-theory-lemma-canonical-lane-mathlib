import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalGraphTheoryLemmaCanonicalLaneLean

structure MolecularGraph where
  vertexSet : Type u
  edgeSet : Type v
  adjacency : edgeSet → vertexSet → vertexSet → Prop
  simple : Prop
  undirected : Prop
  finiteGraph : Prop
  vertexCount : Nat
  edgeCount : Nat

def molecularGraph (G : MolecularGraph) : Prop :=
  G.simple ∧ G.undirected ∧ G.finiteGraph

end ChemicalGraphTheoryLemmaCanonicalLaneLean
end HautevilleHouse