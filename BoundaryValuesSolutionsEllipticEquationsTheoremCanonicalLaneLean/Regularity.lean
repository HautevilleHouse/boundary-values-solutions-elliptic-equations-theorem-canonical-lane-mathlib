import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryValuesSolutionsEllipticEquationsTheoremCanonicalLaneLean

structure RegularityResult where
  solution : DirichletProblem ∨ NeumannProblem
  interiorRegularity : Prop
  boundaryRegularity : Prop
  hölderContinuity : Prop

structure RegularityEvidence where
  result : RegularityResult
  interiorRegularityClosed : result.interiorRegularity
  boundaryRegularityClosed : result.boundaryRegularity
  hölderContinuityClosed : result.hölderContinuity

def RegularityClosed (R : RegularityEvidence) : Prop :=
  R.interiorRegularityClosed ∧ R.boundaryRegularityClosed ∧ R.hölderContinuityClosed

end BoundaryValuesSolutionsEllipticEquationsTheoremCanonicalLaneLean
end HautevilleHouse