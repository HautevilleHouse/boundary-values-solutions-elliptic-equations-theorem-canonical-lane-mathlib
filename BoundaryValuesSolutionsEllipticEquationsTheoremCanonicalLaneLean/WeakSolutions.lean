import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryValuesSolutionsEllipticEquationsTheoremCanonicalLaneLean

structure WeakSolutionPackage where
  sobolevSpace : Type u
  bilinearForm : Prop
  weakFormulation : Prop
  laxMilgramConditions : Prop

structure WeakSolutionEvidence (W : WeakSolutionPackage) where
  sobolevSpaceClosed : W.sobolevSpace
  bilinearFormClosed : W.bilinearForm
  weakFormulationClosed : W.weakFormulation
  laxMilgramConditionsClosed : W.laxMilgramConditions

def WeakSolutionClosed (W : WeakSolutionPackage) : Prop :=
  W.sobolevSpace ∧ W.bilinearForm ∧ W.weakFormulation ∧ W.laxMilgramConditions

theorem weak_solution_closed_from_evidence (W : WeakSolutionPackage)
    (E : WeakSolutionEvidence W) : WeakSolutionClosed W := by
  exact And.intro E.sobolevSpaceClosed
    (And.intro E.bilinearFormClosed
      (And.intro E.weakFormulationClosed E.laxMilgramConditionsClosed))

end BoundaryValuesSolutionsEllipticEquationsTheoremCanonicalLaneLean
end HautevilleHouse