import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineInequalitiesTheoremCanonicalLaneLean

structure SubspaceInequalityPackage where
  linearFormSystem : Prop
  rationalApproximation : Prop
  smallHeightSolution : Prop
  quantitativeVersion : Prop

structure SubspaceInequalityEvidence (S : SubspaceInequalityPackage) where
  linearFormSystemClosed : S.linearFormSystem
  rationalApproximationClosed : S.rationalApproximation
  smallHeightSolutionClosed : S.smallHeightSolution
  quantitativeVersionClosed : S.quantitativeVersion

def SubspaceInequalityClosed (S : SubspaceInequalityPackage) : Prop :=
  S.linearFormSystem ∧ S.rationalApproximation ∧ S.smallHeightSolution ∧ S.quantitativeVersion

theorem subspace_inequality_closed_from_evidence (S : SubspaceInequalityPackage) (E : SubspaceInequalityEvidence S) :
    SubspaceInequalityClosed S := by
  exact And.intro E.linearFormSystemClosed
    (And.intro E.rationalApproximationClosed
      (And.intro E.smallHeightSolutionClosed E.quantitativeVersionClosed))

end DiophantineInequalitiesTheoremCanonicalLaneLean
end HautevilleHouse