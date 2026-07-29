import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineInequalitiesTheoremCanonicalLaneLean

structure SimultaneousApproximationPackage (A : AdmissibleClass) where
  targets : List ℚ
  simultaneousApproximations : ℕ → ℚ
  errorVectors : ℕ → ℚ
  simultaneousBound : Prop
  simultaneousBoundProof : simultaneousBound

def SimultaneousApproximationClosed {A : AdmissibleClass} (P : SimultaneousApproximationPackage A) : Prop :=
  P.simultaneousBound

theorem simultaneous_approximation_from_evidence {A : AdmissibleClass}
    (P : SimultaneousApproximationPackage A) (h : P.simultaneousBound) :
    SimultaneousApproximationClosed P := h

end DiophantineInequalitiesTheoremCanonicalLaneLean
end HautevilleHouse