import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineInequalitiesTheoremCanonicalLaneLean

structure RationalApproximationPackage (A : AdmissibleClass) where
  targetIrrational : ℚ → Prop
  bestApproximationSequence : ℕ → ℚ
  approximationError : ℕ → ℚ
  errorBound : Prop
  errorBoundProof : errorBound

structure RationalApproximationEvidence {A : AdmissibleClass} (P : RationalApproximationPackage A) where
  errorBoundClosed : P.errorBound
  sequenceConverges : ∀ n : ℕ, |P.approximationError n| ≤ 1 / (n+1 : ℚ)

def RationalApproximationClosed {A : AdmissibleClass} (P : RationalApproximationPackage A) : Prop :=
  P.errorBound

theorem rational_approximation_closed_from_evidence {A : AdmissibleClass}
    (P : RationalApproximationPackage A) (E : RationalApproximationEvidence P) :
    RationalApproximationClosed P := by
  exact E.errorBoundClosed

end DiophantineInequalitiesTheoremCanonicalLaneLean
end HautevilleHouse