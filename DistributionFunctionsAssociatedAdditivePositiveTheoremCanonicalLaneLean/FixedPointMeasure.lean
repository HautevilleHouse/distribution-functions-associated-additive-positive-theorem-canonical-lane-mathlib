import HautevilleHouse.DistributionFunctionsAssociatedAdditivePositiveTheoremCanonicalLaneLean.AdditivePositiveOperator

/-!
# Fixed Point Measure Package
-/

namespace HautevilleHouse
namespace DistributionFunctionsAssociatedAdditivePositiveTheoremCanonicalLaneLean

structure FixedPointMeasurePackage {K : DistributionFunctionKernelPackage}
    {O : AdditivePositiveOperatorPackage K} where
  measure : Type
  invariant : Prop
  uniqueness : Prop
  positivity : Prop
  momentCondition : Prop

structure FixedPointMeasureEvidence {K : DistributionFunctionKernelPackage}
    {O : AdditivePositiveOperatorPackage K} (M : FixedPointMeasurePackage K O) where
  invariantClosed : M.invariant
  uniquenessClosed : M.uniqueness
  positivityClosed : M.positivity
  momentConditionClosed : M.momentCondition

def FixedPointMeasureClosed {K : DistributionFunctionKernelPackage}
    {O : AdditivePositiveOperatorPackage K} (M : FixedPointMeasurePackage K O) : Prop :=
  M.invariant ∧ M.uniqueness ∧ M.positivity ∧ M.momentCondition

theorem fixed_point_measure_closed_from_evidence {K : DistributionFunctionKernelPackage}
    {O : AdditivePositiveOperatorPackage K} (M : FixedPointMeasurePackage K O)
    (E : FixedPointMeasureEvidence M) : FixedPointMeasureClosed M := by
  exact And.intro E.invariantClosed
    (And.intro E.uniquenessClosed (And.intro E.positivityClosed E.momentConditionClosed))

end DistributionFunctionsAssociatedAdditivePositiveTheoremCanonicalLaneLean
end HautevilleHouse
