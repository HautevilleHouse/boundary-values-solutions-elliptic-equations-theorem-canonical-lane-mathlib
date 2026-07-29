import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryValuesSolutionsEllipticEquationsTheoremCanonicalLaneLean

structure BilinearForm (V : Type u) where
  coercivity : Prop
  boundedness : Prop
  symmetry : Prop

structure LaxMilgramSetup where
  hilbertSpace : Type u
  bilinearForm : BilinearForm hilbertSpace
  linearFunctional : Type v
  uniqueSolutionExists : Prop

structure LaxMilgramEvidence (L : LaxMilgramSetup) where
  coercivityClosed : L.bilinearForm.coercivity
  boundednessClosed : L.bilinearForm.boundedness
  linearFunctionalBounded : Prop
  uniqueSolutionExistsClosed : L.uniqueSolutionExists

def LaxMilgramClosed (L : LaxMilgramSetup) : Prop :=
  L.bilinearForm.coercivity ∧ L.bilinearForm.boundedness ∧ L.uniqueSolutionExists

theorem lax_milgram_closed_from_evidence (L : LaxMilgramSetup)
    (E : LaxMilgramEvidence L) : LaxMilgramClosed L := by
  exact And.intro E.coercivityClosed
    (And.intro E.boundednessClosed E.uniqueSolutionExistsClosed)

end BoundaryValuesSolutionsEllipticEquationsTheoremCanonicalLaneLean
end HautevilleHouse