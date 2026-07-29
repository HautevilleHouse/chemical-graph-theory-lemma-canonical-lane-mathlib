import HautevilleHouse.ChemicalGraphTheoryLemmaCanonicalLaneLean.MolecularGraphStructure

namespace HautevilleHouse
namespace ChemicalGraphTheoryLemmaCanonicalLaneLean

structure ReactionKineticsContainer {G : MolecularGraph} where
  rateConstants : G.vertices → G.vertices → ℝ
  equilibriumConstant : ℝ
  activationEnergiesBounded : Prop
  massActionLawValid : Prop

structure ReactionKineticsEvidence {G : MolecularGraph} (K : ReactionKineticsContainer G) where
  activationEnergiesBoundedClosed : K.activationEnergiesBounded
  massActionLawValidClosed : K.massActionLawValid

def ReactionKineticsClosed {G : MolecularGraph} (K : ReactionKineticsContainer G) : Prop :=
  K.activationEnergiesBounded ∧ K.massActionLawValid

theorem reaction_kinetics_closed_from_evidence {G : MolecularGraph} (K : ReactionKineticsContainer G) (E : ReactionKineticsEvidence K) : ReactionKineticsClosed K := by
  exact And.intro E.activationEnergiesBoundedClosed E.massActionLawValidClosed

end ChemicalGraphTheoryLemmaCanonicalLaneLean
end HautevilleHouse