import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionFunctionsAssociatedAdditivePositiveTheoremCanonicalLaneLean

structure DistributionFunctionPackage where
  underlyingSpace : Type u
  measure : Type v
  additiveSemigroup : Type w
  distributionFunction : underlyingSpace → ℝ
  additiveProperty : Prop
  positiveDefiniteness : Prop

structure DistributionFunctionEvidence (D : DistributionFunctionPackage) where
  additivePropertyClosed : D.additiveProperty
  positiveDefinitenessClosed : D.positiveDefiniteness

def DistributionFunctionsClosed (D : DistributionFunctionPackage) : Prop :=
  D.additiveProperty ∧ D.positiveDefiniteness

theorem distribution_functions_closed_from_evidence (D : DistributionFunctionPackage) (E : DistributionFunctionEvidence D) : DistributionFunctionsClosed D := by
  exact And.intro E.additivePropertyClosed E.positiveDefinitenessClosed

end DistributionFunctionsAssociatedAdditivePositiveTheoremCanonicalLaneLean
end HautevilleHouse