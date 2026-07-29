import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryValuesSolutionsEllipticEquationsTheoremCanonicalLaneLean

structure PoissonEquationPackage where
  domain : Type u
  laplacian : Type v
  sourceTerm : Type w
  boundaryCondition : Type x
  existence : Prop
  uniqueness : Prop
  existenceTerm : existence
  uniquenessTerm : uniqueness

structure PoissonEquationEvidence (P : PoissonEquationPackage) where
  existenceClosed : P.existence
  uniquenessClosed : P.uniqueness

def PoissonEquationClosed (P : PoissonEquationPackage) : Prop :=
  P.existence ∧ P.uniqueness

theorem poisson_equation_closed_from_evidence (P : PoissonEquationPackage)
    (Ev : PoissonEquationEvidence P) : PoissonEquationClosed P := by
  exact And.intro Ev.existenceClosed Ev.uniquenessClosed

end BoundaryValuesSolutionsEllipticEquationsTheoremCanonicalLaneLean
end HautevilleHouse