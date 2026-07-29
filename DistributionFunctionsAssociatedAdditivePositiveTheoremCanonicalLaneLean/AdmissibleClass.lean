import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionFunctionsAssociatedAdditivePositiveTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : DFAAPAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  DFAAPWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DistributionFunctionsAssociatedAdditivePositiveTheoremCanonicalLaneLean
end HautevilleHouse