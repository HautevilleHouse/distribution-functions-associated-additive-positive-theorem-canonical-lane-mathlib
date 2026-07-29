import DistributionFunctionsAssociatedAdditivePositiveTheoremCanonicalLaneLean.ProbabilityConvolutionPower

namespace HautevilleHouse
namespace DistributionFunctionsAssociatedAdditivePositiveTheoremCanonicalLaneLean

structure StabilityEstimates (D : AdditivePositiveDistribution) where
  additivePositiveBound : ℝ
  stabilityUnderConvolution : Prop
  errorEstimates : Prop

def StabilityClosed {D : AdditivePositiveDistribution}
    (S : StabilityEstimates D) : Prop :=
  S.stabilityUnderConvolution ∧ S.errorEstimates

theorem stability_closed_from_evidence {D : AdditivePositiveDistribution}
    (S : StabilityEstimates D) (hStab : S.stabilityUnderConvolution)
    (hErr : S.errorEstimates) : StabilityClosed S := by
  exact And.intro hStab hErr

end DistributionFunctionsAssociatedAdditivePositiveTheoremCanonicalLaneLean
end HautevilleHouse