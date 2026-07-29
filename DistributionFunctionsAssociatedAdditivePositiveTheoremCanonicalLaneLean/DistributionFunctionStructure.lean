import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionFunctionsAssociatedAdditivePositiveTheoremCanonicalLaneLean

structure DistributionFunctionSpace where
  carrier : Type u
  probabilityMeasure : carrier → ℝ
  distributionFunction : carrier → ℝ → ℝ
  cumulativeRightContinuous : Prop
  limitsAtInfinity : Prop

structure AssociatedAdditiveFunctional where
  space : DistributionFunctionSpace
  additiveFunction : (carrier → ℝ) → ℝ
  linearity : Prop
  positivity : Prop
  continuity : Prop

structure DFAAPAdmittedObject where
  space : DistributionFunctionSpace
  additiveFunctional : AssociatedAdditiveFunctional
  positiveTheoremStatement : Prop
  conclusion : positiveTheoremStatement

def DFAAPWitnessClosed (O : DFAAPAdmittedObject) : Prop :=
  O.positiveTheoremStatement

end DistributionFunctionsAssociatedAdditivePositiveTheoremCanonicalLaneLean
end HautevilleHouse