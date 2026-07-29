import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryValuesSolutionsEllipticEquationsTheoremCanonicalLaneLean

structure InteriorRegularityPackage where
  solutionSmoothness : Nat → Prop
  schauderEstimates : Prop
  gainOfRegularity : Prop

structure BoundaryRegularityPackage where
  boundarySmoothness : Nat → Prop
  boundarySchauderEstimates : Prop
  compatibilityConditions : Prop

structure RegularityEvidence (I : InteriorRegularityPackage) (B : BoundaryRegularityPackage) where
  interiorSmoothnessClosed : I.solutionSmoothness 2
  gainOfRegularityClosed : I.gainOfRegularity
  boundarySmoothnessClosed : B.boundarySmoothness 1
  boundarySchauderEstimatesClosed : B.boundarySchauderEstimates

def RegularityClosed (I : InteriorRegularityPackage) (B : BoundaryRegularityPackage) : Prop :=
  I.solutionSmoothness 2 ∧ I.gainOfRegularity ∧ B.boundarySmoothness 1 ∧ B.boundarySchauderEstimates

theorem regularity_closed_from_evidence (I : InteriorRegularityPackage) (B : BoundaryRegularityPackage)
    (E : RegularityEvidence I B) : RegularityClosed I B := by
  exact And.intro E.interiorSmoothnessClosed
    (And.intro E.gainOfRegularityClosed
      (And.intro E.boundarySmoothnessClosed E.boundarySchauderEstimatesClosed))

end BoundaryValuesSolutionsEllipticEquationsTheoremCanonicalLaneLean
end HautevilleHouse