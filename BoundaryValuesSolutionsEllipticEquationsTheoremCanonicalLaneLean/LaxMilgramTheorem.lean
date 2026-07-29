import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryValuesSolutionsEllipticEquationsTheoremCanonicalLaneLean

structure LaxMilgramSetup where
  hilbertSpace : Type u
  bilinearForm : Type v
  coercivity : Prop
  boundedness : Prop
  linearFunctional : Type w

structure LaxMilgramTheorem where
  uniqueSolution : Prop
  stabilityEstimate : Prop

structure LaxMilgramEvidence (L : LaxMilgramTheorem) where
  uniqueSolutionClosed : L.uniqueSolution
  stabilityEstimateClosed : L.stabilityEstimate

def LaxMilgramClosed (L : LaxMilgramTheorem) : Prop :=
  L.uniqueSolution ∧ L.stabilityEstimate

theorem lax_milgram_closed_from_evidence (L : LaxMilgramTheorem)
    (E : LaxMilgramEvidence L) : LaxMilgramClosed L := by
  exact And.intro E.uniqueSolutionClosed E.stabilityEstimateClosed

end BoundaryValuesSolutionsEllipticEquationsTheoremCanonicalLaneLean
end HautevilleHouse