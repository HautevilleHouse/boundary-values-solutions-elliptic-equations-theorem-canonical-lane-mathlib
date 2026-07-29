import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryValuesSolutionsEllipticEquationsTheoremCanonicalLaneLean

structure BoundaryDomain where
  omega : Type u
  topology : TopologicalSpace omega
  boundary : Set omega
  smoothBoundary : Prop

structure BoundaryValueFunction where
  domain : BoundaryDomain
  functionSpace : Type v
  traceOperator : Type w
  compatibilityCondition : Prop

end BoundaryValuesSolutionsEllipticEquationsTheoremCanonicalLaneLean
end HautevilleHouse