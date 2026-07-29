import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DistributionFunctionsAssociatedAdditivePositiveTheoremCanonicalLaneLean.DistributionFunctions

namespace HautevilleHouse
namespace DistributionFunctionsAssociatedAdditivePositiveTheoremCanonicalLaneLean

structure ConvolutionStabilityPackage {D : DistributionFunctionPackage} (E : DistributionFunctionEvidence D) where
  convolutionOperation : (underlyingSpace D → ℝ) → (underlyingSpace D → ℝ) → (underlyingSpace D → ℝ)
  closedUnderConvolution : Prop
  associativity : Prop
  identityElement : underlyingSpace D → ℝ
  identityProperty : Prop

structure ConvolutionStabilityEvidence {D : DistributionFunctionPackage} {E : DistributionFunctionEvidence D} (C : ConvolutionStabilityPackage E) where
  closedUnderConvolutionClosed : C.closedUnderConvolution
  associativityClosed : C.associativity
  identityPropertyClosed : C.identityProperty

def ConvolutionStabilityClosed {D : DistributionFunctionPackage} {E : DistributionFunctionEvidence D} (C : ConvolutionStabilityPackage E) : Prop :=
  C.closedUnderConvolution ∧ C.associativity ∧ C.identityProperty

theorem convolution_stability_closed_from_evidence {D : DistributionFunctionPackage} {E : DistributionFunctionEvidence D} (C : ConvolutionStabilityPackage E) (Ev : ConvolutionStabilityEvidence C) : ConvolutionStabilityClosed C := by
  exact And.intro Ev.closedUnderConvolutionClosed (And.intro Ev.associativityClosed Ev.identityPropertyClosed)

end DistributionFunctionsAssociatedAdditivePositiveTheoremCanonicalLaneLean
end HautevilleHouse