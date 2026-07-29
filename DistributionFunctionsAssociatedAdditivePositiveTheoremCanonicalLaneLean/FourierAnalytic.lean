import DistributionFunctionsAssociatedAdditivePositiveTheoremCanonicalLaneLean.MeasureConvolution
import Mathlib.Analysis.Fourier

namespace HautevilleHouse
namespace DistributionFunctionsAssociatedAdditivePositiveTheoremCanonicalLaneLean

structure FourierAnalyticProperties (D : AdditivePositiveDistribution) where
  characteristicFunction : D.carrier → ℂ
  fourierInversionFormula : Prop
  positivityCondition : Prop
  decayEstimates : Prop

def FourierAnalyticClosed {D : AdditivePositiveDistribution}
    (F : FourierAnalyticProperties D) : Prop :=
  F.fourierInversionFormula ∧ F.positivityCondition ∧ F.decayEstimates

theorem fourier_analytic_closed_from_evidence {D : AdditivePositiveDistribution}
    (F : FourierAnalyticProperties D)
    (hf : F.fourierInversionFormula) (hp : F.positivityCondition) (hd : F.decayEstimates) :
    FourierAnalyticClosed F := by
  exact And.intro hf (And.intro hp hd)

end DistributionFunctionsAssociatedAdditivePositiveTheoremCanonicalLaneLean
end HautevilleHouse