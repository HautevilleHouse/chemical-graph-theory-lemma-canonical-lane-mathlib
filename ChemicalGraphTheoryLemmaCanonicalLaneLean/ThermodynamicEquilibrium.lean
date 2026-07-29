import HautevilleHouse.ChemicalGraphTheoryLemmaCanonicalLaneLean.ChemicalReactionKinetics

namespace HautevilleHouse
namespace ChemicalGraphTheoryLemmaCanonicalLaneLean

structure ThermodynamicEquilibriumPackage {G : MolecularGraph} (K : ReactionKineticsContainer G) where
  gibbsFreeEnergy : ℝ
  boltzmannDistributionValid : Prop
  partitionFunctionConverges : Prop
  equilibriumStable : Prop

structure ThermodynamicEquilibriumEvidence {G : MolecularGraph} {K : ReactionKineticsContainer G} (T : ThermodynamicEquilibriumPackage K) where
  boltzmannDistributionValidClosed : T.boltzmannDistributionValid
  partitionFunctionConvergesClosed : T.partitionFunctionConverges
  equilibriumStableClosed : T.equilibriumStable

def ThermodynamicEquilibriumClosed {G : MolecularGraph} {K : ReactionKineticsContainer G} (T : ThermodynamicEquilibriumPackage K) : Prop :=
  T.boltzmannDistributionValid ∧ T.partitionFunctionConverges ∧ T.equilibriumStable

theorem thermodynamic_equilibrium_closed_from_evidence {G : MolecularGraph} {K : ReactionKineticsContainer G} (T : ThermodynamicEquilibriumPackage K) (E : ThermodynamicEquilibriumEvidence T) : ThermodynamicEquilibriumClosed T := by
  exact And.intro E.boltzmannDistributionValidClosed (And.intro E.partitionFunctionConvergesClosed E.equilibriumStableClosed)

end ChemicalGraphTheoryLemmaCanonicalLaneLean
end HautevilleHouse