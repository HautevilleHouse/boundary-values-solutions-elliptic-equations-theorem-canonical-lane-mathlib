import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryValuesSolutionsEllipticEquationsTheoremCanonicalLaneLean

structure FredholmOperator (X Y : Type u) [NormedAddCommGroup X] [NormedAddCommGroup Y] where
  operator : X → Y
  linear : Prop
  finiteDimensionalKernel : Prop
  finiteDimensionalCokernel : Prop
  closedRange : Prop
  index : ℤ

structure FredholmAlternative (X Y : Type u) [NormedAddCommGroup X] [NormedAddCommGroup Y]
  (T : FredholmOperator X Y) where
  indexDefined : T.index = 0
  uniquenessImpliesExistence : Prop
  existenceImpliesUniqueness : Prop

structure FredholmEvidence {X Y : Type u} [NormedAddCommGroup X] [NormedAddCommGroup Y]
  (T : FredholmOperator X Y) (A : FredholmAlternative T) where
  indexDefinedClosed : A.indexDefined
  uniquenessImpliesExistenceClosed : A.uniquenessImpliesExistence
  existenceImpliesUniquenessClosed : A.existenceImpliesUniqueness

def FredholmAlternativeClosed {X Y : Type u} [NormedAddCommGroup X] [NormedAddCommGroup Y]
  {T : FredholmOperator X Y} (A : FredholmAlternative T) : Prop :=
  A.indexDefined ∧ A.uniquenessImpliesExistence ∧ A.existenceImpliesUniqueness

theorem fredholm_alternative_closed_from_evidence
    {X Y : Type u} [NormedAddCommGroup X] [NormedAddCommGroup Y]
    {T : FredholmOperator X Y} (A : FredholmAlternative T)
    (E : FredholmEvidence T A) : FredholmAlternativeClosed A := by
  exact And.intro E.indexDefinedClosed
    (And.intro E.uniquenessImpliesExistenceClosed E.existenceImpliesUniquenessClosed)

end BoundaryValuesSolutionsEllipticEquationsTheoremCanonicalLaneLean
end HautevilleHouse