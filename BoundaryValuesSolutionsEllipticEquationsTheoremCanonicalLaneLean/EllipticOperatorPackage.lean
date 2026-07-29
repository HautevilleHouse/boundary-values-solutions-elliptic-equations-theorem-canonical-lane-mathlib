import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryValuesSolutionsEllipticEquationsTheorem

structure EllipticOperatorPackage where
  domainType : Type u
  boundaryType : Type v
  operatorSymbol : Prop
  uniformEllipticity : Prop
  boundedCoefficients : Prop
  smoothCoefficients : Prop

structure EllipticOperatorEvidence (E : EllipticOperatorPackage) where
  uniformEllipticityClosed : E.uniformEllipticity
  boundedCoefficientsClosed : E.boundedCoefficients
  smoothCoefficientsClosed : E.smoothCoefficients

def EllipticOperatorClosed (E : EllipticOperatorPackage) : Prop :=
  E.uniformEllipticity ∧ E.boundedCoefficients ∧ E.smoothCoefficients

theorem elliptic_operator_closed_from_evidence (E : EllipticOperatorPackage)
    (Ev : EllipticOperatorEvidence E) : EllipticOperatorClosed E := by
  exact And.intro Ev.uniformEllipticityClosed
    (And.intro Ev.boundedCoefficientsClosed Ev.smoothCoefficientsClosed)

end BoundaryValuesSolutionsEllipticEquationsTheorem
end HautevilleHouse