import DiophantineInequalitiesTheoremCanonicalLaneLean.DiophantineForms

namespace HautevilleHouse
namespace DiophantineInequalitiesTheoremCanonicalLaneLean

structure ThueEquationPackage where
  polynomial : Type
  degree : Nat
  discriminant : Prop
  solutionBound : Prop
  finiteness : Prop

structure ThueEquationEvidence (T : ThueEquationPackage) where
  discriminantClosed : T.discriminant
  solutionBoundClosed : T.solutionBound
  finitenessClosed : T.finiteness

def ThueEquationClosed (T : ThueEquationPackage) : Prop :=
  T.discriminant ∧ T.solutionBound ∧ T.finiteness

theorem thue_equation_closed_from_evidence (T : ThueEquationPackage) (E : ThueEquationEvidence T) :
    ThueEquationClosed T := by
  exact And.intro E.discriminantClosed
    (And.intro E.solutionBoundClosed E.finitenessClosed)

structure SiegelLemmaPackage where
  linearSystem : Type
  coefficientMatrix : Type
  solutionNorm : Type
  nontrivialSolution : Prop
  normBound : Prop

structure SiegelLemmaEvidence (S : SiegelLemmaPackage) where
  nontrivialSolutionClosed : S.nontrivialSolution
  normBoundClosed : S.normBound

def SiegelLemmaClosed (S : SiegelLemmaPackage) : Prop :=
  S.nontrivialSolution ∧ S.normBound

theorem siegel_lemma_closed_from_evidence (S : SiegelLemmaPackage) (E : SiegelLemmaEvidence S) :
    SiegelLemmaClosed S := by
  exact And.intro E.nontrivialSolutionClosed E.normBoundClosed

end DiophantineInequalitiesTheoremCanonicalLaneLean
end HautevilleHouse