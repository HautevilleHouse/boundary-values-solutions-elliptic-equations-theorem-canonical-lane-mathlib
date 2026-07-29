import HautevilleHouse.BoundaryValuesSolutionsEllipticEquationsTheoremCanonicalLaneLean.ReviewerBridge

namespace HautevilleHouse
namespace BoundaryValuesSolutionsEllipticEquationsTheoremCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  constrainedStatement : String
  certificateLane : String
  carriedRemainder : String
deriving Repr, DecidableEq

end BoundaryValuesSolutionsEllipticEquationsTheoremCanonicalLaneLean
end HautevilleHouse