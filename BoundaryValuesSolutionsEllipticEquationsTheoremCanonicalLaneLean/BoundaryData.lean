import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryValuesSolutionsEllipticEquationsTheoremCanonicalLaneLean

structure BoundaryDataPackage where
  boundaryType : String
  regularity : Prop
  compatibilityCondition : Prop

default

structure BoundaryDataEvidence (B : BoundaryDataPackage) where
  regularityClosed : B.regularity
  compatibilityConditionClosed : B.compatibilityCondition

def BoundaryDataClosed (B : BoundaryDataPackage) : Prop :=
  B.regularity ∧ B.compatibilityCondition

theorem boundary_data_closed_from_evidence (B : BoundaryDataPackage) (Ev : BoundaryDataEvidence B) : BoundaryDataClosed B :=
  And.intro Ev.regularityClosed Ev.compatibilityConditionClosed

end BoundaryValuesSolutionsEllipticEquationsTheoremCanonicalLaneLean
end HautevilleHouse