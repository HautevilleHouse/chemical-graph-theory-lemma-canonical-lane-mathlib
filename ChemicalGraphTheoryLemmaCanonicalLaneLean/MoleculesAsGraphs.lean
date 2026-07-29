import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ChemicalGraphTheoryLemmaCanonicalLaneLean.MolecularGraph
import HautevilleHouse.ChemicalGraphTheoryLemmaCanonicalLaneLean.HuckelRule

namespace HautevilleHouse
namespace ChemicalGraphTheoryLemmaCanonicalLaneLean

structure MoleculesAsGraphs where
  molecule : Type u
  graphRepresentation : MolecularGraph
  verticesAtoms : graphRepresentation.vertexSet → String
  edgesBonds : graphRepresentation.edgeSet → ℕ
  cycleCount : ℕ
  aromaticRings : ℕ

def MoleculesAsGraphsClosed (M : MoleculesAsGraphs) : Prop :=
  M.aromaticRings ≤ M.cycleCount ∧ M.cycleCount ≥ 0

end ChemicalGraphTheoryLemmaCanonicalLaneLean
end HautevilleHouse