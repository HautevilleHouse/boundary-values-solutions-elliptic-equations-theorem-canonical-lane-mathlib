import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryValuesSolutionsEllipticEquationsTheoremCanonicalLaneLean

structure SobolevSpacePackage where
  baseSpace : Type u
  norm : Type v
  innerProduct : Type w
  fractionalOrder : Prop
  embeddingTheorems : Prop
  compactEmbedding : Prop
  fractionalOrderTerm : fractionalOrder
  embeddingTheoremsTerm : embeddingTheorems
  compactEmbeddingTerm : compactEmbedding

structure SobolevSpaceEvidence (S : SobolevSpacePackage) where
  fractionalOrderClosed : S.fractionalOrder
  embeddingTheoremsClosed : S.embeddingTheorems
  compactEmbeddingClosed : S.compactEmbedding

def SobolevSpaceClosed (S : SobolevSpacePackage) : Prop :=
  S.fractionalOrder ∧ S.embeddingTheorems ∧ S.compactEmbedding

theorem sobolev_space_closed_from_evidence (S : SobolevSpacePackage)
    (Ev : SobolevSpaceEvidence S) : SobolevSpaceClosed S := by
  exact And.intro Ev.fractionalOrderClosed
    (And.intro Ev.embeddingTheoremsClosed Ev.compactEmbeddingClosed)

end BoundaryValuesSolutionsEllipticEquationsTheoremCanonicalLaneLean
end HautevilleHouse