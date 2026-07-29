import HautevilleHouse.DistributionFunctionsAssociatedAdditivePositiveTheoremCanonicalLaneLean.PositiveRecurrence

/-!
# Ergodicity Package
-/

namespace HautevilleHouse
namespace DistributionFunctionsAssociatedAdditivePositiveTheoremCanonicalLaneLean

structure ErgodicityPackage {K : DistributionFunctionKernelPackage}
    {O : AdditivePositiveOperatorPackage K} {M : FixedPointMeasurePackage K O}
    {R : PositiveRecurrencePackage K O M} where
  ergodicTheorem : Prop
  mixingProperty : Prop
  limitDistribution : Prop
  uniqueErgodicMeasure : Prop

structure ErgodicityEvidence {K : DistributionFunctionKernelPackage}
    {O : AdditivePositiveOperatorPackage K} {M : FixedPointMeasurePackage K O}
    {R : PositiveRecurrencePackage K O M} (E : ErgodicityPackage K O M R) where
  ergodicTheoremClosed : E.ergodicTheorem
  mixingPropertyClosed : E.mixingProperty
  limitDistributionClosed : E.limitDistribution
  uniqueErgodicMeasureClosed : E.uniqueErgodicMeasure

def ErgodicityClosed {K : DistributionFunctionKernelPackage}
    {O : AdditivePositiveOperatorPackage K} {M : FixedPointMeasurePackage K O}
    {R : PositiveRecurrencePackage K O M} (E : ErgodicityPackage K O M R) : Prop :=
  E.ergodicTheorem ∧ E.mixingProperty ∧ E.limitDistribution ∧ E.uniqueErgodicMeasure

theorem ergodicity_closed_from_evidence {K : DistributionFunctionKernelPackage}
    {O : AdditivePositiveOperatorPackage K} {M : FixedPointMeasurePackage K O}
    {R : PositiveRecurrencePackage K O M} (P : ErgodicityPackage K O M R)
    (Ev : ErgodicityEvidence P) : ErgodicityClosed P := by
  exact And.intro Ev.ergodicTheoremClosed
    (And.intro Ev.mixingPropertyClosed (And.intro Ev.limitDistributionClosed Ev.uniqueErgodicMeasureClosed))

end DistributionFunctionsAssociatedAdditivePositiveTheoremCanonicalLaneLean
end HautevilleHouse
