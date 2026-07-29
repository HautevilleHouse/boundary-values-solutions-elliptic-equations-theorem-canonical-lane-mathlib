import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryValuesSolutionsEllipticEquationsTheorem

structure RegularityPackage where
  interiorRegularity : Prop
  boundaryRegularity : Prop
  schauderEstimates : Prop

structure RegularityEvidence (R : RegularityPackage) where
  interiorRegularityClosed : R.interiorRegularity
  boundaryRegularityClosed : R.boundaryRegularity
  schauderEstimatesClosed : R.schauderEstimates

def RegularityClosed (R : RegularityPackage) : Prop :=
  R.interiorRegularity ∧ R.boundaryRegularity ∧ R.schauderEstimates

theorem regularity_closed_from_evidence (R : RegularityPackage)
    (Ev : RegularityEvidence R) : RegularityClosed R := by
  exact And.intro Ev.interiorRegularityClosed
    (And.intro Ev.boundaryRegularityClosed Ev.schauderEstimatesClosed)

end BoundaryValuesSolutionsEllipticEquationsTheorem
end HautevilleHouse