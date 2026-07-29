import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineInequalitiesTheoremCanonicalLaneLean

structure ThueEquation where
  polynomial : ℤ[X]
  degree : ℕ
  trivialSolutions : List ℤ
  finitenessOfSolutions : Prop

def ThueEquation.FiniteSolutions (T : ThueEquation) : Prop := T.finitenessOfSolutions

end DiophantineInequalitiesTheoremCanonicalLaneLean
end HautevilleHouse