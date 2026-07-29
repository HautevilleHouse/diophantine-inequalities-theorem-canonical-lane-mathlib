import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineInequalitiesTheoremCanonicalLaneLean

structure ApproximationMethod where
  methodName : String
  approximationAccuracy : ℚ
  iterationLimit : ℕ
  converges : Prop

def ApproximationMethod.GuaranteedAccuracy (A : ApproximationMethod) : Prop := A.converges

end DiophantineInequalitiesTheoremCanonicalLaneLean
end HautevilleHouse