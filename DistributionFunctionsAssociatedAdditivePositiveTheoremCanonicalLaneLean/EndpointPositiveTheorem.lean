import DistributionFunctionsAssociatedAdditivePositiveTheoremCanonicalLaneLean.PositiveSolutionExistence

namespace HautevilleHouse
namespace DistributionFunctionsAssociatedAdditivePositiveTheoremCanonicalLaneLean

structure EndpointPositiveTheorem {F : AdditiveDistributionFamily}
    {P : PositiveAssociationMeasure F} {E : AdditiveFunctionalEquation F P}
    {S : PositiveSolutionExistence F P E} where
  targetConclusion : Prop
  endpointCondition : Prop
  theoremClosed : theoremClosed

structure EndpointPositiveTheoremEvidence {F : AdditiveDistributionFamily}
    {P : PositiveAssociationMeasure F} {E : AdditiveFunctionalEquation F P}
    {S : PositiveSolutionExistence F P E} (T : EndpointPositiveTheorem F P E S) where
  targetConclusionClosed : T.targetConclusion
  endpointConditionClosed : T.endpointCondition

def EndpointPositiveTheoremClosed {F : AdditiveDistributionFamily}
    {P : PositiveAssociationMeasure F} {E : AdditiveFunctionalEquation F P}
    {S : PositiveSolutionExistence F P E} (T : EndpointPositiveTheorem F P E S) : Prop :=
  T.targetConclusion ∧ T.endpointCondition

theorem endpoint_positive_theorem_closed_from_evidence
    {F : AdditiveDistributionFamily} {P : PositiveAssociationMeasure F}
    {E : AdditiveFunctionalEquation F P} {S : PositiveSolutionExistence F P E}
    (T : EndpointPositiveTheorem F P E S) (Ev : EndpointPositiveTheoremEvidence T) :
    EndpointPositiveTheoremClosed T := by
  exact And.intro Ev.targetConclusionClosed Ev.endpointConditionClosed

end DistributionFunctionsAssociatedAdditivePositiveTheoremCanonicalLaneLean
end HautevilleHouse