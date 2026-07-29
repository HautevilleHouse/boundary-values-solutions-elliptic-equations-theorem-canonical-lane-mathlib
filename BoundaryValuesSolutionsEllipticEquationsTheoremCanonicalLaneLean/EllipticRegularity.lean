import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryValuesSolutionsEllipticEquationsTheoremCanonicalLaneLean

structure SchauderEstimates where
  holderNormEstimate : Prop
  interiorRegularity : Prop
  boundaryRegularity : Prop

structure SobolevRegularity where
  weakSolutionExistence : Prop
  embeddingTheorems : Prop

structure EllipticRegularityPackage where
  schauder : SchauderEstimates
  sobolev : SobolevRegularity

structure EllipticRegularityEvidence (R : EllipticRegularityPackage) where
  holderNormEstimateClosed : R.schauder.holderNormEstimate
  interiorRegularityClosed : R.schauder.interiorRegularity
  boundaryRegularityClosed : R.schauder.boundaryRegularity
  weakSolutionExistenceClosed : R.sobolev.weakSolutionExistence
  embeddingTheoremsClosed : R.sobolev.embeddingTheorems

def EllipticRegularityClosed (R : EllipticRegularityPackage) : Prop :=
  R.schauder.holderNormEstimate ∧ R.schauder.interiorRegularity ∧
  R.schauder.boundaryRegularity ∧ R.sobolev.weakSolutionExistence ∧
  R.sobolev.embeddingTheorems

theorem elliptic_regularity_closed_from_evidence
    (R : EllipticRegularityPackage) (E : EllipticRegularityEvidence R) :
    EllipticRegularityClosed R := by
  exact And.intro E.holderNormEstimateClosed
    (And.intro E.interiorRegularityClosed
      (And.intro E.boundaryRegularityClosed
        (And.intro E.weakSolutionExistenceClosed E.embeddingTheoremsClosed)))

end BoundaryValuesSolutionsEllipticEquationsTheoremCanonicalLaneLean
end HautevilleHouse