import DiophantineInequalitiesTheoremCanonicalLaneLean.DiophantineObjects

namespace HautevilleHouse
namespace DiophantineInequalitiesTheoremCanonicalLaneLean

structure EffectiveBoundPackage where
  polynomial : List ℤ
  bound : ℕ
  boundComputed : Prop

structure EffectiveBoundEvidence (E : EffectiveBoundPackage) where
  boundComputedClosed : E.boundComputed

def EffectiveBoundClosed (E : EffectiveBoundPackage) : Prop := E.boundComputed

theorem effective_bound_closed_from_evidence (E : EffectiveBoundPackage) (ev : EffectiveBoundEvidence E) : EffectiveBoundClosed E := by
  exact ev.boundComputedClosed

end DiophantineInequalitiesTheoremCanonicalLaneLean
end HautevilleHouse
