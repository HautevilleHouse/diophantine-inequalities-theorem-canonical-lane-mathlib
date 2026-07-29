import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineInequalitiesTheoremCanonicalLaneLean

structure RothInequalityPackage where
  irrationalAlpha : Prop
  approximationExponent : Prop
  effectiveConstant : Prop
  homogeneousCase : Prop
  inhomogeneousCase : Prop

structure RothInequalityEvidence (R : RothInequalityPackage) where
  irrationalAlphaClosed : R.irrationalAlpha
  approximationExponentClosed : R.approximationExponent
  effectiveConstantClosed : R.effectiveConstant
  homogeneousCaseClosed : R.homogeneousCase
  inhomogeneousCaseClosed : R.inhomogeneousCase

def RothInequalityClosed (R : RothInequalityPackage) : Prop :=
  R.irrationalAlpha ∧ R.approximationExponent ∧ R.effectiveConstant ∧ R.homogeneousCase ∧ R.inhomogeneousCase

theorem roth_inequality_closed_from_evidence (R : RothInequalityPackage) (E : RothInequalityEvidence R) :
    RothInequalityClosed R := by
  exact And.intro E.irrationalAlphaClosed
    (And.intro E.approximationExponentClosed
      (And.intro E.effectiveConstantClosed
        (And.intro E.homogeneousCaseClosed E.inhomogeneousCaseClosed)))

end DiophantineInequalitiesTheoremCanonicalLaneLean
end HautevilleHouse