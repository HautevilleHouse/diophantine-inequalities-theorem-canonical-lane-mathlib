import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineInequalitiesTheoremCanonicalLaneLean

structure HenselLiftingData where
  prime : ℕ
  liftingDepth : ℕ
  initialSolution : ℤ
  finalSolution : ℤ
  liftSuccess : Prop

def HenselLiftingData.LiftComplete (H : HenselLiftingData) : Prop := H.liftSuccess

end DiophantineInequalitiesTheoremCanonicalLaneLean
end HautevilleHouse