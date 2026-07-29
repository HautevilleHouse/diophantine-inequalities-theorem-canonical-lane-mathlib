import DiophantineInequalitiesTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineInequalitiesTheoremCanonicalLaneLean

structure DiophantineInequality where
  polynomial : List ℤ
  solutions : Set (List ℤ)
  finiteness : Prop

structure AdmittedDiophantineObject where
  inequality : DiophantineInequality
  effectiveBound : Prop
  solutionsEnumerated : Prop
  conclusion : solutionsEnumerated

structure DiophantineEndgameState where
  object : AdmittedDiophantineObject

def DiophantineWitnessClosed (O : AdmittedDiophantineObject) : Prop := O.solutionsEnumerated

end DiophantineInequalitiesTheoremCanonicalLaneLean
end HautevilleHouse
