import DiophantineInequalitiesTheoremCanonicalLaneLean.ThueSiegelPackage

namespace HautevilleHouse
namespace DiophantineInequalitiesTheoremCanonicalLaneLean

structure RothTheoremPackage where
  algebraicNumber : Type
  degree : Nat
  approximationExponent : Prop
  inequality : Prop
  finitenessOfGoodApproximations : Prop

structure RothTheoremEvidence (R : RothTheoremPackage) where
  approximationExponentClosed : R.approximationExponent
  inequalityClosed : R.inequality
  finitenessClosed : R.finitenessOfGoodApproximations

def RothTheoremClosed (R : RothTheoremPackage) : Prop :=
  R.approximationExponent ∧ R.inequality ∧ R.finitenessOfGoodApproximations

theorem roth_theorem_closed_from_evidence (R : RothTheoremPackage) (E : RothTheoremEvidence R) :
    RothTheoremClosed R := by
  exact And.intro E.approximationExponentClosed
    (And.intro E.inequalityClosed E.finitenessClosed)

end DiophantineInequalitiesTheoremCanonicalLaneLean
end HautevilleHouse