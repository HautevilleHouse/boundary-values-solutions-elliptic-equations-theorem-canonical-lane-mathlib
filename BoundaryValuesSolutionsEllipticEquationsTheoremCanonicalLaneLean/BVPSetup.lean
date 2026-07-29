import Mathlib.Analysis.Calculus.ContDiff
import BoundaryValuesSolutionsEllipticEquationsTheoremCanonicalLaneLean.EllipticPDE

namespace HautevilleHouse
namespace BoundaryValuesSolutionsEllipticEquationsTheoremCanonicalLaneLean

structure BVPSetup (Ω : Type*) [TopologicalSpace Ω] where
  domain : Ω
  boundary : Set Ω
  operator : LinearEllipticOperator Ω
  boundaryCondition : BoundaryCondition Ω
  sourceTerm : Ω → ℝ
  bcsatisfied : Prop

structure BVPSolution (Ω : Type*) [TopologicalSpace Ω] (S : BVPSetup Ω) where
  solution : Ω → ℝ
  satisfiesPDE : Prop
  satisfiesBC : Prop
  regularity : Prop

def BVPSolutionExists (Ω : Type*) [TopologicalSpace Ω] (S : BVPSetup Ω) : Prop :=
  ∃ (sol : BVPSolution Ω S), sol.satisfiesPDE ∧ sol.satisfiesBC ∧ sol.regularity

def BVPSolutionUnique (Ω : Type*) [TopologicalSpace Ω] (S : BVPSetup Ω) (sol : BVPSolution Ω S) : Prop :=
  ∀ (sol' : BVPSolution Ω S), (sol'.satisfiesPDE ∧ sol'.satisfiesBC) → (∀ x ∈ S.domain, sol.solution x = sol'.solution x)

end BoundaryValuesSolutionsEllipticEquationsTheoremCanonicalLaneLean
end HautevilleHouse