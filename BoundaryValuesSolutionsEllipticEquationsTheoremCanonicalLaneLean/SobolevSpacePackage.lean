import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryValuesSolutionsEllipticEquationsTheorem

structure SobolevSpacePackage where
  functionSpace : Type u
  normDefined : Prop
  completeness : Prop
  embeddingTheorems : Prop

structure SobolevSpaceEvidence (S : SobolevSpacePackage) where
  normDefinedClosed : S.normDefined
  completenessClosed : S.completeness
  embeddingTheoremsClosed : S.embeddingTheorems

def SobolevSpaceClosed (S : SobolevSpacePackage) : Prop :=
  S.normDefined ∧ S.completeness ∧ S.embeddingTheorems

theorem sobolev_space_closed_from_evidence (S : SobolevSpacePackage)
    (Ev : SobolevSpaceEvidence S) : SobolevSpaceClosed S := by
  exact And.intro Ev.normDefinedClosed
    (And.intro Ev.completenessClosed Ev.embeddingTheoremsClosed)

end BoundaryValuesSolutionsEllipticEquationsTheorem
end HautevilleHouse