import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineInequalitiesTheoremCanonicalLaneLean

structure GeometryOfNumbersPackage (A : AdmissibleClass) where
  lattice : Set (ℤ ^ 2)
  convexBody : Set (ℝ ^ 2)
  volume : ℝ
  minkowskiBound : Prop
  minkowskiBoundProof : minkowskiBound

def GeometryOfNumbersClosed {A : AdmissibleClass} (P : GeometryOfNumbersPackage A) : Prop :=
  P.minkowskiBound

theorem geometry_of_numbers_closed_from_evidence {A : AdmissibleClass}
    (P : GeometryOfNumbersPackage A) (h : P.minkowskiBound) :
    GeometryOfNumbersClosed P := h

end DiophantineInequalitiesTheoremCanonicalLaneLean
end HautevilleHouse