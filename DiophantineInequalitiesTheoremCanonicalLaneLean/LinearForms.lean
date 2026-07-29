import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineInequalitiesTheoremCanonicalLaneLean

structure LinearFormsPackage (A : AdmissibleClass) where
  n : ℕ
  linearForms : List (ℤ → ℤ)
  domain : Set (ℤ ^ n)
  bound : ℕ

def LinearFormsClosed {A : AdmissibleClass} (P : LinearFormsPackage A) : Prop :=
  ∀ x ∈ P.domain, ∀ f ∈ P.linearForms, |f (x 0)| ≤ (P.bound : ℤ)

theorem linear_forms_closed {A : AdmissibleClass} (P : LinearFormsPackage A) : LinearFormsClosed P :=
  sorry

end DiophantineInequalitiesTheoremCanonicalLaneLean
end HautevilleHouse