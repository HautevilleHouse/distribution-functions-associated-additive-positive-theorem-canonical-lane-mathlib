import DistributionFunctionsAssociatedAdditivePositiveTheoremCanonicalLaneLean.PositiveAssociationMeasure

namespace HautevilleHouse
namespace DistributionFunctionsAssociatedAdditivePositiveTheoremCanonicalLaneLean

structure AdditiveFunctionalEquation {F : AdditiveDistributionFamily}
    {P : PositiveAssociationMeasure F} where
  equationType : Type u
  functionalRelation : Prop
  continuityCondition : Prop
  boundaryCondition : Prop
  equationClosed : equationClosed

structure AdditiveFunctionalEquationEvidence {F : AdditiveDistributionFamily}
    {P : PositiveAssociationMeasure F} (E : AdditiveFunctionalEquation F P) where
  functionalRelationClosed : E.functionalRelation
  continuityConditionClosed : E.continuityCondition
  boundaryConditionClosed : E.boundaryCondition

def AdditiveFunctionalEquationClosed {F : AdditiveDistributionFamily}
    {P : PositiveAssociationMeasure F} (E : AdditiveFunctionalEquation F P) : Prop :=
  E.functionalRelation ∧ E.continuityCondition ∧ E.boundaryCondition

theorem additive_functional_equation_closed_from_evidence
    {F : AdditiveDistributionFamily} {P : PositiveAssociationMeasure F}
    (E : AdditiveFunctionalEquation F P) (Ev : AdditiveFunctionalEquationEvidence E) :
    AdditiveFunctionalEquationClosed E := by
  exact And.intro Ev.functionalRelationClosed
    (And.intro Ev.continuityConditionClosed Ev.boundaryConditionClosed)

end DistributionFunctionsAssociatedAdditivePositiveTheoremCanonicalLaneLean
end HautevilleHouse