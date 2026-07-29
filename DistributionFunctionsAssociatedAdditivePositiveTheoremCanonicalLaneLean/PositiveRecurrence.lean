import HautevilleHouse.DistributionFunctionsAssociatedAdditivePositiveTheoremCanonicalLaneLean.FixedPointMeasure

/-!
# Positive Recurrence Package
-/

namespace HautevilleHouse
namespace DistributionFunctionsAssociatedAdditivePositiveTheoremCanonicalLaneLean

structure PositiveRecurrencePackage {K : DistributionFunctionKernelPackage}
    {O : AdditivePositiveOperatorPackage K} {M : FixedPointMeasurePackage K O} where
  recurrentSet : Type
  hittingTimeFinite : Prop
  returnProbability : Prop
  stationaryDistribution : Prop

structure PositiveRecurrenceEvidence {K : DistributionFunctionKernelPackage}
    {O : AdditivePositiveOperatorPackage K} {M : FixedPointMeasurePackage K O}
    (R : PositiveRecurrencePackage K O M) where
  hittingTimeFiniteClosed : R.hittingTimeFinite
  returnProbabilityClosed : R.returnProbability
  stationaryDistributionClosed : R.stationaryDistribution

def PositiveRecurrenceClosed {K : DistributionFunctionKernelPackage}
    {O : AdditivePositiveOperatorPackage K} {M : FixedPointMeasurePackage K O}
    (R : PositiveRecurrencePackage K O M) : Prop :=
  R.hittingTimeFinite ∧ R.returnProbability ∧ R.stationaryDistribution

theorem positive_recurrence_closed_from_evidence {K : DistributionFunctionKernelPackage}
    {O : AdditivePositiveOperatorPackage K} {M : FixedPointMeasurePackage K O}
    (R : PositiveRecurrencePackage K O M) (E : PositiveRecurrenceEvidence R) :
    PositiveRecurrenceClosed R := by
  exact And.intro E.hittingTimeFiniteClosed
    (And.intro E.returnProbabilityClosed E.stationaryDistributionClosed)

end DistributionFunctionsAssociatedAdditivePositiveTheoremCanonicalLaneLean
end HautevilleHouse
