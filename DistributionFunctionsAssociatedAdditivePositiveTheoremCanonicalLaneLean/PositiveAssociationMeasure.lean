import DistributionFunctionsAssociatedAdditivePositiveTheoremCanonicalLaneLean.AdditiveDistributionFamily

namespace HautevilleHouse
namespace DistributionFunctionsAssociatedAdditivePositiveTheoremCanonicalLaneLean

structure PositiveAssociationMeasure {F : AdditiveDistributionFamily} where
  measure : F.underlyingSpace → ℝ
  monotonicity : Prop
  positivity : Prop
  associationInequality : Prop
  measureClosed : measureClosed

structure PositiveAssociationMeasureEvidence {F : AdditiveDistributionFamily}
    (P : PositiveAssociationMeasure F) where
  monotonicityClosed : P.monotonicity
  positivityClosed : P.positivity
  associationInequalityClosed : P.associationInequality

def PositiveAssociationMeasureClosed {F : AdditiveDistributionFamily}
    (P : PositiveAssociationMeasure F) : Prop :=
  P.monotonicity ∧ P.positivity ∧ P.associationInequality

theorem positive_association_measure_closed_from_evidence
    {F : AdditiveDistributionFamily} (P : PositiveAssociationMeasure F)
    (E : PositiveAssociationMeasureEvidence P) : PositiveAssociationMeasureClosed P := by
  exact And.intro E.monotonicityClosed (And.intro E.positivityClosed E.associationInequalityClosed)

end DistributionFunctionsAssociatedAdditivePositiveTheoremCanonicalLaneLean
end HautevilleHouse