import ChemicalGraphTheoryLemmaCanonicalLaneLean.MolecularGraph

namespace HautevilleHouse
namespace ChemicalGraphTheoryLemmaCanonicalLaneLean

structure TopologicalIndexPackage (G : MolecularGraph) where
  wienerIndex : ℝ
  randicIndex : ℝ
  connectivityIndex : ℝ
  wienerComputed : wienerIndex > 0
  randicComputed : randicIndex > 0
  connectivityComputed : connectivityIndex > 0

structure TopologicalIndexEvidence {G : MolecularGraph} (T : TopologicalIndexPackage G) where
  wienerPositive : T.wienerComputed
  randicPositive : T.randicComputed
  connectivityPositive : T.connectivityComputed

def TopologicalIndexClosed {G : MolecularGraph} (T : TopologicalIndexPackage G) : Prop :=
  T.wienerComputed ∧ T.randicComputed ∧ T.connectivityComputed

theorem topological_index_closed_from_evidence {G : MolecularGraph} (T : TopologicalIndexPackage G) (E : TopologicalIndexEvidence T) : TopologicalIndexClosed T := by
  exact And.intro E.wienerPositive (And.intro E.randicPositive E.connectivityPositive)

end ChemicalGraphTheoryLemmaCanonicalLaneLean
end HautevilleHouse