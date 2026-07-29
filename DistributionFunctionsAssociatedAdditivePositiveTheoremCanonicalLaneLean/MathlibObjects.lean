import HautevilleHouse.DistributionFunctionsAssociatedAdditivePositiveTheoremCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace DistributionFunctionsAssociatedAdditivePositiveTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure AdditivePositiveSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure AdditivePositiveAdmittedObject where
  space : AdditivePositiveSpace
  closedThreeManifold : Prop
  simplyConnected : Prop
  sphereModel : Type
  sphereTopology : TopologicalSpace sphereModel
  homeomorphicToSphere : Prop
  conclusion : homeomorphicToSphere

structure AdditivePositiveEndgameState where
  object : AdditivePositiveAdmittedObject

def AdditivePositiveWitnessClosed (O : AdditivePositiveAdmittedObject) : Prop :=
  O.homeomorphicToSphere

end DistributionFunctionsAssociatedAdditivePositiveTheoremCanonicalLaneLean
end HautevilleHouse
