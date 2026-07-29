import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionFunctionsAssociatedAdditivePositiveTheoremCanonicalLaneLean

structure DistributionSupport where
  carrier : Type u
  measure : carrier → ℝ
  positivity : Prop
  positivityTerm : positivity
  additiveStructure : AddCommMonoid carrier
  measureAdditive : ∀ x y, measure (x + y) = measure x + measure y
  measureNonnegative : ∀ x, measure x ≥ 0
  supportedOnPositive : Set carrier
  supportClosed : ∀ x, measure x > 0 → x ∈ supportedOnPositive
  supportClosedTerm : supportClosed

def DistributionSupportClosed (D : DistributionSupport) : Prop :=
  D.positivity ∧ (∀ x, D.measure x ≥ 0) ∧ D.supportClosed

theorem distribution_support_closed (D : DistributionSupport) : DistributionSupportClosed D := by
  exact And.intro D.positivityTerm (And.intro D.measureNonnegative D.supportClosedTerm)

end DistributionFunctionsAssociatedAdditivePositiveTheoremCanonicalLaneLean
end HautevilleHouse
