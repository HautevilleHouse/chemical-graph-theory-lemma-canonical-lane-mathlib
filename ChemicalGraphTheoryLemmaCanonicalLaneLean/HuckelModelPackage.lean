import HautevilleHouse.ChemicalGraphTheoryLemmaCanonicalLaneLean.MolecularGraphAdmissibleClass

namespace HautevilleHouse
namespace ChemicalGraphTheoryLemmaCanonicalLaneLean

structure HuckelModelPackage (M : MolecularGraphObject) where
  secularDeterminant : Prop
  eigenvalueBoundedness : Prop
  energyLevelsQuantized : Prop
  alternantPairing : Prop
  topologicalResonanceEnergy : Prop

structure HuckelModelEvidence {M : MolecularGraphObject} (H : HuckelModelPackage M) where
  secularDeterminantClosed : H.secularDeterminant
  eigenvalueBoundednessClosed : H.eigenvalueBoundedness
  energyLevelsQuantizedClosed : H.energyLevelsQuantized
  alternantPairingClosed : H.alternantPairing
  topologicalResonanceEnergyClosed : H.topologicalResonanceEnergy

def HuckelModelClosed {M : MolecularGraphObject} (H : HuckelModelPackage M) : Prop :=
  H.secularDeterminant ∧ H.eigenvalueBoundedness ∧ H.energyLevelsQuantized ∧ H.alternantPairing ∧ H.topologicalResonanceEnergy

theorem huckel_model_closed_from_evidence
    {M : MolecularGraphObject} (H : HuckelModelPackage M) (E : HuckelModelEvidence H) :
    HuckelModelClosed H := by
  exact And.intro E.secularDeterminantClosed
    (And.intro E.eigenvalueBoundednessClosed
      (And.intro E.energyLevelsQuantizedClosed
        (And.intro E.alternantPairingClosed E.topologicalResonanceEnergyClosed)))

end ChemicalGraphTheoryLemmaCanonicalLaneLean
end HautevilleHouse