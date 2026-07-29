import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryValuesSolutionsEllipticEquationsTheorem

structure WeakSolutionPackage where
  bilinearForm : Prop
  weakFormulation : Prop
  liftingProperty : Prop
  traceOperator : Prop

structure WeakSolutionEvidence (W : WeakSolutionPackage) where
  bilinearFormClosed : W.bilinearForm
  weakFormulationClosed : W.weakFormulation
  liftingPropertyClosed : W.liftingProperty
  traceOperatorClosed : W.traceOperator

def WeakSolutionClosed (W : WeakSolutionPackage) : Prop :=
  W.bilinearForm ∧ W.weakFormulation ∧ W.liftingProperty ∧ W.traceOperator

theorem weak_solution_closed_from_evidence (W : WeakSolutionPackage)
    (Ev : WeakSolutionEvidence W) : WeakSolutionClosed W := by
  exact And.intro Ev.bilinearFormClosed
    (And.intro Ev.weakFormulationClosed
      (And.intro Ev.liftingPropertyClosed Ev.traceOperatorClosed))

end BoundaryValuesSolutionsEllipticEquationsTheorem
end HautevilleHouse