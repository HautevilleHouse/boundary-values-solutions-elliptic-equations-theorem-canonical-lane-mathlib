import HautevilleHouse.BoundaryValuesSolutionsEllipticEquationsTheoremCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace BoundaryValuesSolutionsEllipticEquationsTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  BoundaryValuesWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end BoundaryValuesSolutionsEllipticEquationsTheoremCanonicalLaneLean
end HautevilleHouse