import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryValuesSolutionsEllipticEquationsTheorem

structure FredholmAlternativePackage where
  compactEmbedding : Prop
  indexTheorem : Prop
  uniquenessCriterion : Prop
  existenceCriterion : Prop

structure FredholmAlternativeEvidence (F : FredholmAlternativePackage) where
  compactEmbeddingClosed : F.compactEmbedding
  indexTheoremClosed : F.indexTheorem
  uniquenessCriterionClosed : F.uniquenessCriterion
  existenceCriterionClosed : F.existenceCriterion

def FredholmAlternativeClosed (F : FredholmAlternativePackage) : Prop :=
  F.compactEmbedding ∧ F.indexTheorem ∧ F.uniquenessCriterion ∧ F.existenceCriterion

theorem fredholm_alternative_closed_from_evidence (F : FredholmAlternativePackage)
    (Ev : FredholmAlternativeEvidence F) : FredholmAlternativeClosed F := by
  exact And.intro Ev.compactEmbeddingClosed
    (And.intro Ev.indexTheoremClosed
      (And.intro Ev.uniquenessCriterionClosed Ev.existenceCriterionClosed))

end BoundaryValuesSolutionsEllipticEquationsTheorem
end HautevilleHouse