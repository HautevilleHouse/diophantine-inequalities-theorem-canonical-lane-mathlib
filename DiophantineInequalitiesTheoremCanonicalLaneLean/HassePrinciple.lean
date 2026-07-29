import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineInequalitiesTheoremCanonicalLaneLean

structure HassePrinciplePackage where
  globalMin : Prop
  localObstruction : Prop
  brauerManinObstruction : Prop
  weakApproximation : Prop
  counterexampleKnown : Prop

structure HassePrincipleEvidence (H : HassePrinciplePackage) where
  globalMinClosed : H.globalMin
  localObstructionClosed : H.localObstruction
  brauerManinObstructionClosed : H.brauerManinObstruction
  weakApproximationClosed : H.weakApproximation
  counterexampleKnownClosed : H.counterexampleKnown

def HassePrincipleClosed (H : HassePrinciplePackage) : Prop :=
  H.globalMin ∧ H.localObstruction ∧ H.brauerManinObstruction ∧ H.weakApproximation ∧ H.counterexampleKnown

theorem hasse_principle_closed_from_evidence (H : HassePrinciplePackage) (E : HassePrincipleEvidence H) :
    HassePrincipleClosed H := by
  exact And.intro E.globalMinClosed
    (And.intro E.localObstructionClosed
      (And.intro E.brauerManinObstructionClosed
        (And.intro E.weakApproximationClosed E.counterexampleKnownClosed)))

end DiophantineInequalitiesTheoremCanonicalLaneLean
end HautevilleHouse