import canonicalLaneMathlib.AdmissibleClass
import BoundaryValuesSolutionsEllipticEquationsTheorem.EllipticOperatorPackage
import BoundaryValuesSolutionsEllipticEquationsTheorem.SobolevSpacePackage
import BoundaryValuesSolutionsEllipticEquationsTheorem.WeakSolutionPackage
import BoundaryValuesSolutionsEllipticEquationsTheorem.FredholmAlternativePackage
import BoundaryValuesSolutionsEllipticEquationsTheorem.RegularityPackage

namespace HautevilleHouse
namespace BoundaryValuesSolutionsEllipticEquationsTheorem

structure BoundaryValuesAnalyticFoundation where
  ellipticOperator : EllipticOperatorPackage
  ellipticEvidence : EllipticOperatorEvidence ellipticOperator
  sobolevSpace : SobolevSpacePackage
  sobolevEvidence : SobolevSpaceEvidence sobolevSpace
  weakSolution : WeakSolutionPackage
  weakEvidence : WeakSolutionEvidence weakSolution
  fredholmAlternative : FredholmAlternativePackage
  fredholmEvidence : FredholmAlternativeEvidence fredholmAlternative
  regularity : RegularityPackage
  regularityEvidence : RegularityEvidence regularity

def BoundaryValuesAnalyticFoundationClosed (A : BoundaryValuesAnalyticFoundation) : Prop :=
  EllipticOperatorClosed A.ellipticOperator ∧
  SobolevSpaceClosed A.sobolevSpace ∧
  WeakSolutionClosed A.weakSolution ∧
  FredholmAlternativeClosed A.fredholmAlternative ∧
  RegularityClosed A.regularity

theorem boundary_values_analytic_foundation_closed_from_evidence
    (A : BoundaryValuesAnalyticFoundation) : BoundaryValuesAnalyticFoundationClosed A := by
  exact And.intro (elliptic_operator_closed_from_evidence A.ellipticOperator A.ellipticEvidence)
    (And.intro (sobolev_space_closed_from_evidence A.sobolevSpace A.sobolevEvidence)
      (And.intro (weak_solution_closed_from_evidence A.weakSolution A.weakEvidence)
        (And.intro (fredholm_alternative_closed_from_evidence A.fredholmAlternative A.fredholmEvidence)
          (regularity_closed_from_evidence A.regularity A.regularityEvidence))))

end BoundaryValuesSolutionsEllipticEquationsTheorem
end HautevilleHouse