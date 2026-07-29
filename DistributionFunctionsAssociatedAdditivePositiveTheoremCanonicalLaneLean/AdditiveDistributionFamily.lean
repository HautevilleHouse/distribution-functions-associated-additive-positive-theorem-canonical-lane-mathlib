import DistributionFunctionsAssociatedAdditivePositiveTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DistributionFunctionsAssociatedAdditivePositiveTheoremCanonicalLaneLean

structure AdditiveDistributionFamily where
  underlyingSpace : Type u
  distributionFamily : underlyingSpace → ℝ
  additiveProperty : underlyingSpace → underlyingSpace → underlyingSpace
  additiveIdentity : underlyingSpace
  distributivityLaw : Prop
  positivityCondition : Prop
  additivityClosed : additivityClosed

structure AdditiveDistributionFamilyEvidence (F : AdditiveDistributionFamily) where
  distributivityLawClosed : F.distributivityLaw
  positivityConditionClosed : F.positivityCondition

def AdditiveDistributionFamilyClosed (F : AdditiveDistributionFamily) : Prop :=
  F.distributivityLaw ∧ F.positivityCondition

theorem additive_distribution_family_closed_from_evidence
    (F : AdditiveDistributionFamily) (E : AdditiveDistributionFamilyEvidence F) :
    AdditiveDistributionFamilyClosed F := by
  exact And.intro E.distributivityLawClosed E.positivityConditionClosed

end DistributionFunctionsAssociatedAdditivePositiveTheoremCanonicalLaneLean
end HautevilleHouse