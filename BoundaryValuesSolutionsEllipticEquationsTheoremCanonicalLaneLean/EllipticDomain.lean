import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryValuesSolutionsEllipticEquationsTheoremCanonicalLaneLean

structure EllipticDomain where
  carrier : Type
  boundaryOperator : Prop
  interiorOperator : Prop
  smoothBoundary : Prop

structure EllipticDomainEvidence (Ω : EllipticDomain) where
  boundaryOperatorClosed : Ω.boundaryOperator
  interiorOperatorClosed : Ω.interiorOperator
  smoothBoundaryClosed : Ω.smoothBoundary

def EllipticDomainClosed (Ω : EllipticDomain) : Prop :=
  Ω.boundaryOperator ∧ Ω.interiorOperator ∧ Ω.smoothBoundary

theorem elliptic_domain_closed_from_evidence (Ω : EllipticDomain)
    (E : EllipticDomainEvidence Ω) : EllipticDomainClosed Ω := by
  exact And.intro E.boundaryOperatorClosed
    (And.intro E.interiorOperatorClosed E.smoothBoundaryClosed)

end BoundaryValuesSolutionsEllipticEquationsTheoremCanonicalLaneLean
end HautevilleHouse