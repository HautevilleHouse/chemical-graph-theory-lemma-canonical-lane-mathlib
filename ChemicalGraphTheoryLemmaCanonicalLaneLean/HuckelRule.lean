import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalGraphTheoryLemmaCanonicalLaneLean

structure HuckelMolecule where
  ringSize : Nat
  piElectronCount : Nat
  aromatic : Prop
  planar : Prop
  conjugatedSystem : Prop
  huckelRuleApplied : Prop

structure HuckelEvidence (M : HuckelMolecule) where
  aromaticClosed : M.aromatic
  planarClosed : M.planar
  conjugatedSystemClosed : M.conjugatedSystem
  huckelRuleAppliedClosed : M.huckelRuleApplied

def HuckelClosed (M : HuckelMolecule) : Prop :=
  M.aromatic ∧ M.planar ∧ M.conjugatedSystem ∧ M.huckelRuleApplied

theorem huckel_closed_from_evidence (M : HuckelMolecule) (E : HuckelEvidence M) :
    HuckelClosed M := by
  exact And.intro E.aromaticClosed
    (And.intro E.planarClosed
      (And.intro E.conjugatedSystemClosed E.huckelRuleAppliedClosed))

def huckelEndgame (A : AdmissibleClass) : Prop := bridgeClosed A ∧ gateClosed A

theorem huckel_endgame_proof (A : AdmissibleClass) : huckelEndgame A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ChemicalGraphTheoryLemmaCanonicalLaneLean
end HautevilleHouse
