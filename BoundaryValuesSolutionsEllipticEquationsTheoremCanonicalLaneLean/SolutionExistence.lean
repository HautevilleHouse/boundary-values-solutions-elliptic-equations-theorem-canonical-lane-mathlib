import BoundaryCondition

namespace HautevilleHouse
namespace BoundaryValuesSolutionsEllipticEquationsTheoremCanonicalLaneLean

structure SolutionExistencePackage {Op : EllipticOperatorPackage}
    {Bc : BoundaryConditionPackage Op} where
  solutionSpace : Type u
  existenceProof : Prop
  uniquenessProof : Prop
  regularityEstimate : Prop

structure SolutionExistenceEvidence {Op : EllipticOperatorPackage}
    {Bc : BoundaryConditionPackage Op} (S : SolutionExistencePackage Op Bc) where
  existenceClosed : S.existenceProof
  uniquenessClosed : S.uniquenessProof
  regularityClosed : S.regularityEstimate

def SolutionExistenceClosed {Op : EllipticOperatorPackage}
    {Bc : BoundaryConditionPackage Op} (S : SolutionExistencePackage Op Bc) : Prop :=
  S.existenceProof ∧ S.uniquenessProof ∧ S.regularityEstimate

theorem solution_existence_closed_from_evidence {Op : EllipticOperatorPackage}
    {Bc : BoundaryConditionPackage Op} (S : SolutionExistencePackage Op Bc)
    (Ev : SolutionExistenceEvidence S) : SolutionExistenceClosed S := by
  exact And.intro Ev.existenceClosed (And.intro Ev.uniquenessClosed Ev.regularityClosed)

end BoundaryValuesSolutionsEllipticEquationsTheoremCanonicalLaneLean
end HautevilleHouse