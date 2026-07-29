import HautevilleHouse.BoundaryValuesSolutionsEllipticEquationsTheoremCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace BoundaryValuesSolutionsEllipticEquationsTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : BoundaryValuesAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  BoundaryValuesWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BoundaryValuesSolutionsEllipticEquationsTheoremCanonicalLaneLean
end HautevilleHouse