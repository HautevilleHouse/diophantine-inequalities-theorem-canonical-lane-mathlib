import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineInequalitiesTheoremCanonicalLaneLean

structure SiegelLemmaData where
  matrix : List (List ℤ)
  columns : ℕ
  rows : ℕ
  bound : ℕ
  nontrivialSolutionExists : Prop

def SiegelLemmaData.NontrivialSolution (S : SiegelLemmaData) : Prop := S.nontrivialSolutionExists

end DiophantineInequalitiesTheoremCanonicalLaneLean
end HautevilleHouse