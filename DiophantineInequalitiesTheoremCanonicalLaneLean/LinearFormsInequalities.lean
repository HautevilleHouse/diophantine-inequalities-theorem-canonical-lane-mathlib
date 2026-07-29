import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineInequalitiesTheoremCanonicalLaneLean

structure LinearForm where
  coefficients : List ℤ

def LinearFormEvaluate (L : LinearForm) (args : List ℤ) : ℤ := 0

structure LinearInequalitySystem where
  forms : List LinearForm
  bounds : List ℤ
  consistent : Prop

def LinearInequalitySystem.Consistent (S : LinearInequalitySystem) : Prop := S.consistent

end DiophantineInequalitiesTheoremCanonicalLaneLean
end HautevilleHouse