import DistributionFunctionsAssociatedAdditivePositiveTheoremCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace DistributionFunctionsAssociatedAdditivePositiveTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure DistributionFunctionSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure AdditivePositiveAdmittedObject where
  space : DistributionFunctionSpace
  additiveProperty : Prop
  positiveProperty : Prop
  conclusion : additiveProperty ∧ positiveProperty

structure AdditivePositiveEndgameState where
  object : AdditivePositiveAdmittedObject

def AdditivePositiveWitnessClosed (O : AdditivePositiveAdmittedObject) : Prop :=
  O.additiveProperty ∧ O.positiveProperty

end DistributionFunctionsAssociatedAdditivePositiveTheoremCanonicalLaneLean
end HautevilleHouse
