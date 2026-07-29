import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryValuesSolutionsEllipticEquationsTheoremCanonicalLaneLean

structure TraceOperatorPackage where
  sourceSpace : Type u
  targetSpace : Type v
  continuity : Prop
  surjectivity : Prop
  compactness : Prop
  continuityTerm : continuity
  surjectivityTerm : surjectivity
  compactnessTerm : compactness

structure TraceOperatorEvidence (T : TraceOperatorPackage) where
  continuityClosed : T.continuity
  surjectivityClosed : T.surjectivity
  compactnessClosed : T.compactness

def TraceOperatorClosed (T : TraceOperatorPackage) : Prop :=
  T.continuity ∧ T.surjectivity ∧ T.compactness

theorem trace_operator_closed_from_evidence (T : TraceOperatorPackage)
    (Ev : TraceOperatorEvidence T) : TraceOperatorClosed T := by
  exact And.intro Ev.continuityClosed
    (And.intro Ev.surjectivityClosed Ev.compactnessClosed)

end BoundaryValuesSolutionsEllipticEquationsTheoremCanonicalLaneLean
end HautevilleHouse