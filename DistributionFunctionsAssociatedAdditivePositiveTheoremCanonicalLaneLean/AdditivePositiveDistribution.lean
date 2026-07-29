import DistributionFunctionsAssociatedAdditivePositiveTheoremCanonicalLaneLean.AdmissibleClass
import Mathlib.MeasureTheory.ProbabilityDistribution

namespace HautevilleHouse
namespace DistributionFunctionsAssociatedAdditivePositiveTheoremCanonicalLaneLean

structure AdditivePositiveDistribution where
  carrier : Type u
  measure : MeasureTheory.Measure carrier
  additivePositiveProperty : Prop
  distributionFunction : Type v
  densityFunction : Prop
  momentsFinite : ℕ → Prop

structure AdditivePositiveDistributionEvidence (D : AdditivePositiveDistribution) where
  additivePositivePropertyClosed : D.additivePositiveProperty
  densityFunctionClosed : D.densityFunction
  momentsFiniteClosed : ∀ n, D.momentsFinite n

def AdditivePositiveDistributionClosed (D : AdditivePositiveDistribution) : Prop :=
  D.additivePositiveProperty ∧ D.densityFunction ∧ (∀ n, D.momentsFinite n)

theorem additive_positive_distribution_closed_from_evidence
    (D : AdditivePositiveDistribution) (E : AdditivePositiveDistributionEvidence D) :
    AdditivePositiveDistributionClosed D := by
  exact And.intro E.additivePositivePropertyClosed
    (And.intro E.densityFunctionClosed E.momentsFiniteClosed)

end DistributionFunctionsAssociatedAdditivePositiveTheoremCanonicalLaneLean
end HautevilleHouse