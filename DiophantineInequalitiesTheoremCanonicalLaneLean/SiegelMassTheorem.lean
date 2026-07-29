import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineInequalitiesTheoremCanonicalLaneLean

structure SiegelMassPackage where
  genusRepresentation : Prop
  massFormula : Prop
  localDensity : Prop
  tamagawaCondition : Prop

structure SiegelMassEvidence (S : SiegelMassPackage) where
  genusRepresentationClosed : S.genusRepresentation
  massFormulaClosed : S.massFormula
  localDensityClosed : S.localDensity
  tamagawaConditionClosed : S.tamagawaCondition

def SiegelMassClosed (S : SiegelMassPackage) : Prop :=
  S.genusRepresentation ∧ S.massFormula ∧ S.localDensity ∧ S.tamagawaCondition

theorem siegel_mass_closed_from_evidence (S : SiegelMassPackage) (E : SiegelMassEvidence S) :
    SiegelMassClosed S := by
  exact And.intro E.genusRepresentationClosed
    (And.intro E.massFormulaClosed
      (And.intro E.localDensityClosed E.tamagawaConditionClosed))

end DiophantineInequalitiesTheoremCanonicalLaneLean
end HautevilleHouse