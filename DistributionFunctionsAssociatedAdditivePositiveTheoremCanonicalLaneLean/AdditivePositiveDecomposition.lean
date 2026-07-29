import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DistributionFunctionsAssociatedAdditivePositiveTheoremCanonicalLaneLean.DistributionFunctions

namespace HautevilleHouse
namespace DistributionFunctionsAssociatedAdditivePositiveTheoremCanonicalLaneLean

structure AdditivePositiveDecompositionPackage {D : DistributionFunctionPackage} (E : DistributionFunctionEvidence D) where
  positivePart : underlyingSpace D → ℝ
  negativePart : underlyingSpace D → ℝ
  decompositionLaw : Prop
  positivityPreserving : Prop

structure AdditivePositiveDecompositionEvidence {D : DistributionFunctionPackage} {E : DistributionFunctionEvidence D} (A : AdditivePositiveDecompositionPackage E) where
  decompositionLawClosed : A.decompositionLaw
  positivityPreservingClosed : A.positivityPreserving

def AdditivePositiveDecompositionClosed {D : DistributionFunctionPackage} {E : DistributionFunctionEvidence D} (A : AdditivePositiveDecompositionPackage E) : Prop :=
  A.decompositionLaw ∧ A.positivityPreserving

theorem additive_positive_decomposition_closed_from_evidence {D : DistributionFunctionPackage} {E : DistributionFunctionEvidence D} (A : AdditivePositiveDecompositionPackage E) (Ev : AdditivePositiveDecompositionEvidence A) : AdditivePositiveDecompositionClosed A := by
  exact And.intro Ev.decompositionLawClosed Ev.positivityPreservingClosed

end DistributionFunctionsAssociatedAdditivePositiveTheoremCanonicalLaneLean
end HautevilleHouse