import DistributionFunctionsAssociatedAdditivePositiveTheoremCanonicalLaneLean.AdditivePositiveDistribution

namespace HautevilleHouse
namespace DistributionFunctionsAssociatedAdditivePositiveTheoremCanonicalLaneLean

structure ConvolutionPackage (D : AdditivePositiveDistribution) where
  convolutionMeasure : MeasureTheory.Measure D.carrier
  convolutionFormula : Prop
  associative : Prop
  commutative : Prop

def ConvolutionClosed {D : AdditivePositiveDistribution} (C : ConvolutionPackage D) : Prop :=
  C.convolutionFormula ∧ C.associative ∧ C.commutative

theorem convolution_closed_from_properties {D : AdditivePositiveDistribution}
    (C : ConvolutionPackage D) (hFormula : C.convolutionFormula)
    (hAssoc : C.associative) (hComm : C.commutative) : ConvolutionClosed C := by
  exact And.intro hFormula (And.intro hAssoc hComm)

end DistributionFunctionsAssociatedAdditivePositiveTheoremCanonicalLaneLean
end HautevilleHouse