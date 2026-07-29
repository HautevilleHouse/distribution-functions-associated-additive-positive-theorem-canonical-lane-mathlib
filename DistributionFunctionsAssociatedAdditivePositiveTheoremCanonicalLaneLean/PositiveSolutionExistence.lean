import DistributionFunctionsAssociatedAdditivePositiveTheoremCanonicalLaneLean.AdditiveFunctionalEquation

namespace HautevilleHouse
namespace DistributionFunctionsAssociatedAdditivePositiveTheoremCanonicalLaneLean

structure PositiveSolutionExistence {F : AdditiveDistributionFamily}
    {P : PositiveAssociationMeasure F} {E : AdditiveFunctionalEquation F P} where
  solutionSpace : Type u
  existenceCondition : Prop
  uniquenessCondition : Prop
  positivityPreserved : Prop
  solutionClosed : solutionClosed

structure PositiveSolutionExistenceEvidence {F : AdditiveDistributionFamily}
    {P : PositiveAssociationMeasure F} {E : AdditiveFunctionalEquation F P}
    (S : PositiveSolutionExistence F P E) where
  existenceConditionClosed : S.existenceCondition
  uniquenessConditionClosed : S.uniquenessCondition
  positivityPreservedClosed : S.positivityPreserved

def PositiveSolutionExistenceClosed {F : AdditiveDistributionFamily}
    {P : PositiveAssociationMeasure F} {E : AdditiveFunctionalEquation F P}
    (S : PositiveSolutionExistence F P E) : Prop :=
  S.existenceCondition ∧ S.uniquenessCondition ∧ S.positivityPreserved

theorem positive_solution_existence_closed_from_evidence
    {F : AdditiveDistributionFamily} {P : PositiveAssociationMeasure F}
    {E : AdditiveFunctionalEquation F P} (S : PositiveSolutionExistence F P E)
    (Ev : PositiveSolutionExistenceEvidence S) : PositiveSolutionExistenceClosed S := by
  exact And.intro Ev.existenceConditionClosed
    (And.intro Ev.uniquenessConditionClosed Ev.positivityPreservedClosed)

end DistributionFunctionsAssociatedAdditivePositiveTheoremCanonicalLaneLean
end HautevilleHouse