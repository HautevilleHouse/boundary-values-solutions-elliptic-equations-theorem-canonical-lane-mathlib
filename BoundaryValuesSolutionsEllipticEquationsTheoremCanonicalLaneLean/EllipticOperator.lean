import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryValuesSolutionsEllipticEquationsTheoremCanonicalLaneLean

structure EllipticOperatorPackage where
  domain : Type u
  topology : TopologicalSpace domain
  measure : Type v
  coefficientType : Type w
  principalSymbol : Type x
  uniformEllipticity : Prop
  boundedCoefficients : Prop
  smoothCoefficientFamily : Prop
  uniformEllipticityTerm : uniformEllipticity
  boundedCoefficientsTerm : boundedCoefficients
  smoothCoefficientFamilyTerm : smoothCoefficientFamily

structure EllipticOperatorEvidence (E : EllipticOperatorPackage) where
  uniformEllipticityClosed : E.uniformEllipticity
  boundedCoefficientsClosed : E.boundedCoefficients
  smoothCoefficientFamilyClosed : E.smoothCoefficientFamily

def EllipticOperatorClosed (E : EllipticOperatorPackage) : Prop :=
  E.uniformEllipticity ∧ E.boundedCoefficients ∧ E.smoothCoefficientFamily

theorem elliptic_operator_closed_from_evidence (E : EllipticOperatorPackage)
    (Ev : EllipticOperatorEvidence E) : EllipticOperatorClosed E := by
  exact And.intro Ev.uniformEllipticityClosed
    (And.intro Ev.boundedCoefficientsClosed Ev.smoothCoefficientFamilyClosed)

end BoundaryValuesSolutionsEllipticEquationsTheoremCanonicalLaneLean
end HautevilleHouse