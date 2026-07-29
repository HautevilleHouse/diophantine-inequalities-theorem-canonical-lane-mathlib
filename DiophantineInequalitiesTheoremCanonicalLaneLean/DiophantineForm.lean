import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineInequalitiesTheoremCanonicalLaneLean

structure DiophantineForm where
  coefficients : List ℤ
  degree : ℕ
  variables : ℕ
  homogeneityDegree : ℕ
  integralCoefficients : Bool

def DiophantineFormEvaluated (F : DiophantineForm) (args : List ℤ) : ℤ := 0

structure DiophantineFormInequality (F : DiophantineForm) where
  bound : ℤ
  strict : Bool
  assertedInequality : Prop

def DiophantineFormInequality.Asserted (I : DiophantineFormInequality F) : Prop := I.assertedInequality

end DiophantineInequalitiesTheoremCanonicalLaneLean
end HautevilleHouse