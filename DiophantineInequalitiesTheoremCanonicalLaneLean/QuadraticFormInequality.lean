import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineInequalitiesTheoremCanonicalLaneLean

structure QuadraticFormPackage where
  matrixDims : Nat × Nat
  positiveDefinite : Prop
  determinantBound : Prop
  pellReduction : Prop
  spinorException : Prop

structure QuadraticFormEvidence (Q : QuadraticFormPackage) where
  positiveDefiniteClosed : Q.positiveDefinite
  determinantBoundClosed : Q.determinantBound
  pellReductionClosed : Q.pellReduction
  spinorExceptionClosed : Q.spinorException

def QuadraticFormInequalityClosed (Q : QuadraticFormPackage) : Prop :=
  Q.positiveDefinite ∧ Q.determinantBound ∧ Q.pellReduction ∧ Q.spinorException

theorem quadratic_form_inequality_closed_from_evidence (Q : QuadraticFormPackage) (E : QuadraticFormEvidence Q) :
    QuadraticFormInequalityClosed Q := by
  exact And.intro E.positiveDefiniteClosed
    (And.intro E.determinantBoundClosed
      (And.intro E.pellReductionClosed E.spinorExceptionClosed))

end DiophantineInequalitiesTheoremCanonicalLaneLean
end HautevilleHouse