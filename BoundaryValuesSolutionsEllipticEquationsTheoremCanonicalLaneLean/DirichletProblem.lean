import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryValuesSolutionsEllipticEquationsTheoremCanonicalLaneLean

structure DirichletProblem where
  operator : EllipticOperator
  boundaryData : BoundaryValueFunction
  solutionSpace : SobolevSpace
  weakFormulation : Prop
  existenceUniqueness : Prop

structure DirichletEvidence where
  problem : DirichletProblem
  solutionExists : Prop
  solutionUnique : Prop
  solutionSatisfiesPDE : Prop
  boundaryConditionMet : Prop

def DirichletClosed (D : DirichletEvidence) : Prop :=
  D.solutionExists ∧ D.solutionUnique ∧ D.solutionSatisfiesPDE ∧ D.boundaryConditionMet

end BoundaryValuesSolutionsEllipticEquationsTheoremCanonicalLaneLean
end HautevilleHouse