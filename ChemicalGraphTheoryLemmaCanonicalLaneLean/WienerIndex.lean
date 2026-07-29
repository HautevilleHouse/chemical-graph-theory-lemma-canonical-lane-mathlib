import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalGraphTheoryLemmaCanonicalLaneLean

structure WienerIndexPackage where
  distanceMatrix : Type u
  wienerIndex : ℕ
  indexComputed : Prop
  distanceMatrixDerived : Prop

structure WienerIndexEvidence (W : WienerIndexPackage) where
  indexComputedClosed : W.indexComputed
  distanceMatrixDerivedClosed : W.distanceMatrixDerived

def WienerIndexClosed (W : WienerIndexPackage) : Prop :=
  W.indexComputed ∧ W.distanceMatrixDerived

theorem wiener_index_closed_from_evidence (W : WienerIndexPackage)
    (E : WienerIndexEvidence W) : WienerIndexClosed W := by
  exact And.intro E.indexComputedClosed E.distanceMatrixDerivedClosed

end ChemicalGraphTheoryLemmaCanonicalLaneLean
end HautevilleHouse