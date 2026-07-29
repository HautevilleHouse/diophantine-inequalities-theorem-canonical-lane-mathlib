import DiophantineInequalitiesTheoremCanonicalLaneLean.HeightsAndApproximation

namespace HautevilleHouse
namespace DiophantineInequalitiesTheoremCanonicalLaneLean

structure ApproximationSystemPackage {E : EffectiveBoundPackage} {S : SiegelLemmaPackage E} {H : HeightPackage} where
  approximations : Set (List ℤ)
  densityEstimate : Prop

structure ApproximationSystemEvidence {E : EffectiveBoundPackage} {S : SiegelLemmaPackage E} {H : HeightPackage} (A : ApproximationSystemPackage) where
  densityEstimateClosed : A.densityEstimate

def ApproximationSystemClosed {E : EffectiveBoundPackage} {S : SiegelLemmaPackage E} {H : HeightPackage} (A : ApproximationSystemPackage) : Prop :=
  A.densityEstimate

theorem approximation_system_closed_from_evidence {E : EffectiveBoundPackage} {S : SiegelLemmaPackage E} {H : HeightPackage} (A : ApproximationSystemPackage) (ev : ApproximationSystemEvidence A) : ApproximationSystemClosed A := by
  exact ev.densityEstimateClosed

end DiophantineInequalitiesTheoremCanonicalLaneLean
end HautevilleHouse
