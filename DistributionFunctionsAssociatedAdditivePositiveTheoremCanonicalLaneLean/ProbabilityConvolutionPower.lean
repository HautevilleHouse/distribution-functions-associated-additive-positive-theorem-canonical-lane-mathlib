import DistributionFunctionsAssociatedAdditivePositiveTheoremCanonicalLaneLean.FourierAnalytic

namespace HautevilleHouse
namespace DistributionFunctionsAssociatedAdditivePositiveTheoremCanonicalLaneLean

structure ConvolutionPowerSequence (D : AdditivePositiveDistribution) where
  power : ℕ → MeasureTheory.Measure D.carrier
  additivityProperty : Prop
  limitDistribution : Prop
  limitExistence : Prop

def ConvolutionPowerClosed {D : AdditivePositiveDistribution}
    (S : ConvolutionPowerSequence D) : Prop :=
  S.additivityProperty ∧ S.limitExistence ∧ S.limitDistribution

theorem convolution_power_closed_from_evidence {D : AdditivePositiveDistribution}
    (S : ConvolutionPowerSequence D)
    (hAdd : S.additivityProperty) (hLimEx : S.limitExistence) (hLimDist : S.limitDistribution) :
    ConvolutionPowerClosed S := by
  exact And.intro hAdd (And.intro hLimEx hLimDist)

end DistributionFunctionsAssociatedAdditivePositiveTheoremCanonicalLaneLean
end HautevilleHouse