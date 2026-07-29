import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryValuesSolutionsEllipticEquationsTheoremCanonicalLaneLean

structure WeakSolutionPackage where
  trialSpace : Type u
  testSpace : Type v
  bilinearForm : Type w
  linearFunctional : Type x
  coercivity : Prop
  boundedness : Prop
  coercivityTerm : coercivity
  boundednessTerm : boundedness

structure WeakSolutionEvidence (W : WeakSolutionPackage) where
  coercivityClosed : W.coercivity
  boundednessClosed : W.boundedness

def WeakSolutionClosed (W : WeakSolutionPackage) : Prop :=
  W.coercivity ∧ W.boundedness

theorem weak_solution_closed_from_evidence (W : WeakSolutionPackage)
    (Ev : WeakSolutionEvidence W) : WeakSolutionClosed W := by
  exact And.intro Ev.coercivityClosed Ev.boundednessClosed

end BoundaryValuesSolutionsEllipticEquationsTheoremCanonicalLaneLean
end HautevilleHouse