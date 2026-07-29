import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DistributionFunctionsAssociatedAdditivePositiveTheoremCanonicalLaneLean.DistributionFunctions

namespace HautevilleHouse
namespace DistributionFunctionsAssociatedAdditivePositiveTheoremCanonicalLaneLean

structure FourierTransformBridgePackage {D : DistributionFunctionPackage} (E : DistributionFunctionEvidence D) where
  fourierTransform : (underlyingSpace D → ℝ) → (underlyingSpace D → ℂ)
  injectivity : Prop
  positivityPreservation : Prop
  convolutionToMultiplication : Prop

structure FourierTransformBridgeEvidence {D : DistributionFunctionPackage} {E : DistributionFunctionEvidence D} (F : FourierTransformBridgePackage E) where
  injectivityClosed : F.injectivity
  positivityPreservationClosed : F.positivityPreservation
  convolutionToMultiplicationClosed : F.convolutionToMultiplication

def FourierTransformBridgeClosed {D : DistributionFunctionPackage} {E : DistributionFunctionEvidence D} (F : FourierTransformBridgePackage E) : Prop :=
  F.injectivity ∧ F.positivityPreservation ∧ F.convolutionToMultiplication

theorem fourier_transform_bridge_closed_from_evidence {D : DistributionFunctionPackage} {E : DistributionFunctionEvidence D} (F : FourierTransformBridgePackage E) (Ev : FourierTransformBridgeEvidence F) : FourierTransformBridgeClosed F := by
  exact And.intro Ev.injectivityClosed (And.intro Ev.positivityPreservationClosed Ev.convolutionToMultiplicationClosed)

end DistributionFunctionsAssociatedAdditivePositiveTheoremCanonicalLaneLean
end HautevilleHouse