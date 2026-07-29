import Mathlib.Analysis.Calculus.ContDiff
import Mathlib.FunctionalAnalysis.PDEs.Elliptic

namespace HautevilleHouse
namespace BoundaryValuesSolutionsEllipticEquationsTheoremCanonicalLaneLean

structure LinearEllipticOperator (Ω : Type*) [TopologicalSpace Ω] where
  principalSymbol : (Ω × ℝ) → ℝ
  coercivity : Prop
  boundedness : Prop

structure BoundaryCondition (Ω : Type*) [TopologicalSpace Ω] where
  boundaryOperator : (Ω → ℝ) → (Ω → ℝ)
  compatibility : Prop

structure WeakSolution (Ω : Type*) [TopologicalSpace Ω] (L : LinearEllipticOperator Ω) (bc : BoundaryCondition Ω) where
  functionVal : Ω → ℝ
  weakFormSolved : Prop
  regularity : Prop

def WeakSolutionExists (Ω : Type*) [TopologicalSpace Ω] (L : LinearEllipticOperator Ω) (bc : BoundaryCondition Ω) : Prop :=
  ∃ (u : WeakSolution Ω L bc), u.weakFormSolved

def WeakSolutionUnique (Ω : Type*) [TopologicalSpace Ω] (L : LinearEllipticOperator Ω) (bc : BoundaryCondition Ω) (u : WeakSolution Ω L bc) : Prop :=
  ∀ (v : WeakSolution Ω L bc), v.functionVal = u.functionVal

end BoundaryValuesSolutionsEllipticEquationsTheoremCanonicalLaneLean
end HautevilleHouse