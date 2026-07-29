import DiophantineInequalitiesTheoremCanonicalLaneLean.SiegelLemma

namespace HautevilleHouse
namespace DiophantineInequalitiesTheoremCanonicalLaneLean

structure HeightPackage {E : EffectiveBoundPackage} {S : SiegelLemmaPackage E} where
  heightFunction : (List ℤ) → ℕ
  approximationTheorem : Prop

structure HeightEvidence {E : EffectiveBoundPackage} {S : SiegelLemmaPackage E} (H : HeightPackage) where
  heightDefined : ∀ x : List ℤ, H.heightFunction x ≥ 0
  approximationClosed : H.approximationTheorem

def HeightClosed {E : EffectiveBoundPackage} {S : SiegelLemmaPackage E} (H : HeightPackage) : Prop :=
  (∀ x : List ℤ, H.heightFunction x ≥ 0) ∧ H.approximationTheorem

theorem height_closed_from_evidence {E : EffectiveBoundPackage} {S : SiegelLemmaPackage E} (H : HeightPackage) (ev : HeightEvidence H) : HeightClosed H := by
  exact And.intro ev.heightDefined ev.approximationClosed

end DiophantineInequalitiesTheoremCanonicalLaneLean
end HautevilleHouse
