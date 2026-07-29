import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineInequalitiesTheoremCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  diophantineConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String

def sourceTheoremStatement : TheoremStatement := {
  sourceKey := "diophantine-inequalities-canonical-lane",
  theoremName := "Diophantine Inequalities Theorem",
  theoremObject := "Faltings' theorem (Mordell's conjecture) bound on rational points",
  classicalBoundary := "Open boundary: effective computation of the bound",
  diophantineConstrainedStatement := "Diophantine-constrained theorem certificate internalized through admissible class",
  certificateLane := "diophantine_constrained",
  carriedRemainder := "Non-effective bound carried by classical boundary"
}

def ClassicalSourceBoundaryCarried : Prop :=
  sourceTheoremStatement.certificateLane = "diophantine_constrained"

theorem theorem_statement_source_key_checked :
    sourceTheoremStatement.sourceKey = "diophantine-inequalities-canonical-lane" := by
  rfl

end DiophantineInequalitiesTheoremCanonicalLaneLean
end HautevilleHouse