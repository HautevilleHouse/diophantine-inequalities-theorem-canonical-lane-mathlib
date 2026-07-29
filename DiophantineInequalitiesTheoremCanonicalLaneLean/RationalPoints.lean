import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineInequalitiesTheoremCanonicalLaneLean

structure RationalPointsPackage where
  field : Type u
  charZero : Prop
  norm : Type v
  normedField : Prop
  curve : Type w
  curveDefined : Prop
  rationalPoints : Type x
  rationalPointsSet : Set curve
  heightFunction : curve → ℝ
  heightLowerBound : Prop
  heightLowerBoundTerm : heightLowerBound

structure RationalPointsEvidence (R : RationalPointsPackage) where
  charZeroClosed : R.charZero
  normedFieldClosed : R.normedField
  curveDefinedClosed : R.curveDefined
  heightLowerBoundClosed : R.heightLowerBound

def RationalPointsClosed (R : RationalPointsPackage) : Prop :=
  R.charZero ∧ R.normedField ∧ R.curveDefined ∧ R.heightLowerBound

theorem rational_points_closed_from_evidence (R : RationalPointsPackage) (E : RationalPointsEvidence R) :
    RationalPointsClosed R := by
  exact And.intro E.charZeroClosed (And.intro E.normedFieldClosed (And.intro E.curveDefinedClosed E.heightLowerBoundClosed))

end DiophantineInequalitiesTheoremCanonicalLaneLean
end HautevilleHouse
