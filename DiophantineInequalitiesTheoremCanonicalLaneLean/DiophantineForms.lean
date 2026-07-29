import DiophantineInequalitiesTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineInequalitiesTheoremCanonicalLaneLean

structure QuadraticFormPackage where
  matrix : Type
  representation : Type
  positiveDefinite : Prop
  integrality : Prop
  minimalVector : Prop
  inequalityBound : Prop

structure QuadraticFormEvidence (Q : QuadraticFormPackage) where
  positiveDefiniteClosed : Q.positiveDefinite
  integralityClosed : Q.integrality
  minimalVectorClosed : Q.minimalVector
  inequalityBoundClosed : Q.inequalityBound

def QuadraticFormClosed (Q : QuadraticFormPackage) : Prop :=
  Q.positiveDefinite ∧ Q.integrality ∧ Q.minimalVector ∧ Q.inequalityBound

theorem quadratic_form_closed_from_evidence (Q : QuadraticFormPackage) (E : QuadraticFormEvidence Q) :
    QuadraticFormClosed Q := by
  exact And.intro E.positiveDefiniteClosed
    (And.intro E.integralityClosed
      (And.intro E.minimalVectorClosed E.inequalityBoundClosed))

end DiophantineInequalitiesTheoremCanonicalLaneLean
end HautevilleHouse