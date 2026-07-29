import HautevilleHouse.DistributionFunctionsAssociatedAdditivePositiveTheoremCanonicalLaneLean.DistributionFunctionKernel

/-!
# Additive Positive Operator Package
-/

namespace HautevilleHouse
namespace DistributionFunctionsAssociatedAdditivePositiveTheoremCanonicalLaneLean

structure AdditivePositiveOperatorPackage {K : DistributionFunctionKernelPackage} where
  operator : Type
  additiveAction : Prop
  positiveAction : Prop
  spectralGap : Prop
  eigenvalueOne : Prop

structure AdditivePositiveOperatorEvidence {K : DistributionFunctionKernelPackage}
    (O : AdditivePositiveOperatorPackage K) where
  additiveActionClosed : O.additiveAction
  positiveActionClosed : O.positiveAction
  spectralGapClosed : O.spectralGap
  eigenvalueOneClosed : O.eigenvalueOne

def AdditivePositiveOperatorClosed {K : DistributionFunctionKernelPackage}
    (O : AdditivePositiveOperatorPackage K) : Prop :=
  O.additiveAction ∧ O.positiveAction ∧ O.spectralGap ∧ O.eigenvalueOne

theorem additive_positive_operator_closed_from_evidence {K : DistributionFunctionKernelPackage}
    (O : AdditivePositiveOperatorPackage K) (E : AdditivePositiveOperatorEvidence O) :
    AdditivePositiveOperatorClosed O := by
  exact And.intro E.additiveActionClosed
    (And.intro E.positiveActionClosed (And.intro E.spectralGapClosed E.eigenvalueOneClosed))

end DistributionFunctionsAssociatedAdditivePositiveTheoremCanonicalLaneLean
end HautevilleHouse
