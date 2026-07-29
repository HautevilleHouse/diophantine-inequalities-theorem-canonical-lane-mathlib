import Mathlib

namespace HautevilleHouse
namespace DiophantineInequalitiesTheoremCanonicalLaneLean

structure DiophantineEquation where
  carrier : Type
  variables : List Type
  polynomial : carrier → Prop

structure DiophantineAdmittedObject where
  equation : DiophantineEquation
  integerSolution : Prop
  polynomialInequality : Prop
  inequalityDirection : Prop
  conclusion : integerSolution ∧ polynomialInequality ∧ inequalityDirection

structure DiophantineEndgameState where
  object : DiophantineAdmittedObject

def DiophantineWitnessClosed (O : DiophantineAdmittedObject) : Prop :=
  O.integerSolution ∧ O.polynomialInequality ∧ O.inequalityDirection

end DiophantineInequalitiesTheoremCanonicalLaneLean
end HautevilleHouse