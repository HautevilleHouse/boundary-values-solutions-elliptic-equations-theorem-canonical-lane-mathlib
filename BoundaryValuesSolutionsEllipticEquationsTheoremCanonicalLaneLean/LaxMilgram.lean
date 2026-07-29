import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryValuesSolutionsEllipticEquationsTheoremCanonicalLaneLean

structure LaxMilgramPackage where
  hilbertSpace : Type u
  bilinearForm : Type v
  linearFunctional : Type w
  coercivity : Prop
  boundedness : Prop
  existence : Prop
  uniqueness : Prop
  coercivityTerm : coercivity
  boundednessTerm : boundedness
  existenceTerm : existence
  uniquenessTerm : uniqueness

structure LaxMilgramEvidence (L : LaxMilgramPackage) where
  coercivityClosed : L.coercivity
  boundednessClosed : L.boundedness
  existenceClosed : L.existence
  uniquenessClosed : L.uniqueness

def LaxMilgramClosed (L : LaxMilgramPackage) : Prop :=
  L.coercivity ∧ L.boundedness ∧ L.existence ∧ L.uniqueness

theorem lax_milgram_closed_from_evidence (L : LaxMilgramPackage)
    (Ev : LaxMilgramEvidence L) : LaxMilgramClosed L := by
  exact And.intro Ev.coercivityClosed
    (And.intro Ev.boundednessClosed
      (And.intro Ev.existenceClosed Ev.uniquenessClosed))

end BoundaryValuesSolutionsEllipticEquationsTheoremCanonicalLaneLean
end HautevilleHouse