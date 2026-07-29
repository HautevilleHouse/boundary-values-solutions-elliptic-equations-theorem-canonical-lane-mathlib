import EllipticOperator

namespace HautevilleHouse
namespace BoundaryValuesSolutionsEllipticEquationsTheoremCanonicalLaneLean

structure BoundaryConditionPackage {Op : EllipticOperatorPackage} where
  boundaryType : Type u
  boundaryOperator : Type v
  compatibilityWithOperator : Prop
  wellPosedBoundary : Prop

structure BoundaryConditionEvidence {Op : EllipticOperatorPackage}
    (B : BoundaryConditionPackage Op) where
  compatibilityClosed : B.compatibilityWithOperator
  wellPosedClosed : B.wellPosedBoundary

def BoundaryConditionClosed {Op : EllipticOperatorPackage}
    (B : BoundaryConditionPackage Op) : Prop :=
  B.compatibilityWithOperator ∧ B.wellPosedBoundary

theorem boundary_condition_closed_from_evidence {Op : EllipticOperatorPackage}
    (B : BoundaryConditionPackage Op) (Ev : BoundaryConditionEvidence B) :
    BoundaryConditionClosed B := by
  exact And.intro Ev.compatibilityClosed Ev.wellPosedClosed

end BoundaryValuesSolutionsEllipticEquationsTheoremCanonicalLaneLean
end HautevilleHouse