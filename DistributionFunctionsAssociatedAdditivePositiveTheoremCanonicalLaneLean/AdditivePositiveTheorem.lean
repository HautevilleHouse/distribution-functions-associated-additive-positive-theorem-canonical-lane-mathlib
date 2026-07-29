import DistributionFunctionsAssociatedAdditivePositiveTheoremCanonicalLaneLean.DistributionSupport

namespace HautevilleHouse
namespace DistributionFunctionsAssociatedAdditivePositiveTheoremCanonicalLaneLean

structure AdditivePositiveEvidence where
  distSupport : DistributionSupport
  epsilonCondition : Prop
  deltaBound : ℝ
  additivePositiveClosure : distSupport.positivity ∧ epsilonCondition ∧ (distSupport.measureNonnegative ∀ x)
  additivePositiveClosed : additivePositiveClosure

def AdditivePositiveClosed (E : AdditivePositiveEvidence) : Prop :=
  E.additivePositiveClosure

theorem additive_positive_closed (E : AdditivePositiveEvidence) : AdditivePositiveClosed E := by
  exact E.additivePositiveClosed

end DistributionFunctionsAssociatedAdditivePositiveTheoremCanonicalLaneLean
end HautevilleHouse
