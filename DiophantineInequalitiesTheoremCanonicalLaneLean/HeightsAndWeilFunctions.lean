import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineInequalitiesTheoremCanonicalLaneLean

structure HeightsAndWeilFunctionsPackage where
  projectiveSpace : Type u
  projectiveSpaceDefined : Prop
  weilHeight : projectiveSpace → ℝ
  logarithmicHeight : projectiveSpace → ℝ
  heightProperties : Prop
  heightPropertiesTerm : heightProperties

structure HeightsAndWeilFunctionsEvidence (H : HeightsAndWeilFunctionsPackage) where
  projectiveSpaceDefinedClosed : H.projectiveSpaceDefined
  heightPropertiesClosed : H.heightProperties

def HeightsAndWeilFunctionsClosed (H : HeightsAndWeilFunctionsPackage) : Prop :=
  H.projectiveSpaceDefined ∧ H.heightProperties

theorem heights_and_weil_functions_closed_from_evidence (H : HeightsAndWeilFunctionsPackage) (E : HeightsAndWeilFunctionsEvidence H) :
    HeightsAndWeilFunctionsClosed H := by
  exact And.intro E.projectiveSpaceDefinedClosed E.heightPropertiesClosed

end DiophantineInequalitiesTheoremCanonicalLaneLean
end HautevilleHouse
