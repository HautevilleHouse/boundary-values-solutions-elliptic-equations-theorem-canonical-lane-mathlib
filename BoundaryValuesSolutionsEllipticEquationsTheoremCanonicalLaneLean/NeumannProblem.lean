import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryValuesSolutionsEllipticEquationsTheoremCanonicalLaneLean

structure NeumannProblem where
  operator : EllipticOperator
  boundaryFlux : BoundaryValueFunction
  solutionSpace : SobolevSpace
  weakFormulation : Prop
  existenceCondition : Prop
  uniquenessModConstants : Prop

structure NeumannEvidence where
  problem : NeumannProblem
  solutionExists : Prop
  uniquenessModConstantsClosed : Prop
  solutionSatisfiesPDE : Prop
  boundaryConditionMet : Prop

def NeumannClosed (N : NeumannEvidence) : Prop :=
  N.solutionExists ∧ N.uniquenessModConstantsClosed ∧ N.solutionSatisfiesPDE ∧ N.boundaryConditionMet

end BoundaryValuesSolutionsEllipticEquationsTheoremCanonicalLaneLean
end HautevilleHouse