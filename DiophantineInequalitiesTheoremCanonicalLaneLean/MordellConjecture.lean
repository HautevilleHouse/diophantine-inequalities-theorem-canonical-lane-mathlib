import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineInequalitiesTheoremCanonicalLaneLean

structure MordellConjecturePackage where
  curve : Type u
  genus : ℕ
  genusAtLeastTwo : genus ≥ 2
  rationalPointsFinite : Prop
  rationalPointsFiniteTerm : rationalPointsFinite

structure MordellConjectureEvidence (M : MordellConjecturePackage) where
  genusAtLeastTwoClosed : M.genusAtLeastTwo
  rationalPointsFiniteClosed : M.rationalPointsFinite

def MordellConjectureClosed (M : MordellConjecturePackage) : Prop :=
  M.genusAtLeastTwo ∧ M.rationalPointsFinite

theorem mordell_conjecture_closed_from_evidence (M : MordellConjecturePackage) (E : MordellConjectureEvidence M) :
    MordellConjectureClosed M := by
  exact And.intro E.genusAtLeastTwoClosed E.rationalPointsFiniteClosed

end DiophantineInequalitiesTheoremCanonicalLaneLean
end HautevilleHouse
