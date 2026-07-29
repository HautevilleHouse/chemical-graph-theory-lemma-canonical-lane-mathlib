import HautevilleHouse.ChemicalGraphTheoryLemmaCanonicalLaneLean.HuckelModelPackage

namespace HautevilleHouse
namespace ChemicalGraphTheoryLemmaCanonicalLaneLean

structure CoulsonRushbrookePackage {M : MolecularGraphObject} (H : HuckelModelPackage M) where
  bipartiteCondition : Prop
  alternantPairingDerived : Prop
  zeroEnergyStates : Prop
  chargeDensityUniform : Prop
  bondOrderAlternation : Prop

structure CoulsonRushbrookeEvidence {M : MolecularGraphObject}
    {H : HuckelModelPackage M} (C : CoulsonRushbrookePackage H) where
  bipartiteConditionClosed : C.bipartiteCondition
  alternantPairingDerivedClosed : C.alternantPairingDerived
  zeroEnergyStatesClosed : C.zeroEnergyStates
  chargeDensityUniformClosed : C.chargeDensityUniform
  bondOrderAlternationClosed : C.bondOrderAlternation

def CoulsonRushbrookeClosed {M : MolecularGraphObject}
    {H : HuckelModelPackage M} (C : CoulsonRushbrookePackage H) : Prop :=
  C.bipartiteCondition ∧ C.alternantPairingDerived ∧ C.zeroEnergyStates ∧ C.chargeDensityUniform ∧ C.bondOrderAlternation

theorem coulson_rushbrooke_closed_from_evidence
    {M : MolecularGraphObject} {H : HuckelModelPackage M}
    (C : CoulsonRushbrookePackage H) (E : CoulsonRushbrookeEvidence C) :
    CoulsonRushbrookeClosed C := by
  exact And.intro E.bipartiteConditionClosed
    (And.intro E.alternantPairingDerivedClosed
      (And.intro E.zeroEnergyStatesClosed
        (And.intro E.chargeDensityUniformClosed E.bondOrderAlternationClosed)))

end ChemicalGraphTheoryLemmaCanonicalLaneLean
end HautevilleHouse