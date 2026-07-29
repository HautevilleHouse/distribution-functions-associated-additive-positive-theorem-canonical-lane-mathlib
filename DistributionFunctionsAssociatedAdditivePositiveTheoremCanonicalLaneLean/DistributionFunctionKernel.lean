import HautevilleHouse.DistributionFunctionsAssociatedAdditivePositiveTheoremCanonicalLaneLean.AdmissibleClass

/-!
# Distribution Function Kernel Package
-/

namespace HautevilleHouse
namespace DistributionFunctionsAssociatedAdditivePositiveTheoremCanonicalLaneLean

structure DistributionFunctionKernelPackage where
  domain : Type
  codomain : Type
  additiveProperty : Prop
  positivityCondition : Prop
  kernelRegular : Prop
  densityExists : Prop

structure DistributionFunctionKernelEvidence (K : DistributionFunctionKernelPackage) where
  additivePropertyClosed : K.additiveProperty
  positivityConditionClosed : K.positivityCondition
  kernelRegularClosed : K.kernelRegular
  densityExistsClosed : K.densityExists

def DistributionFunctionKernelClosed (K : DistributionFunctionKernelPackage) : Prop :=
  K.additiveProperty ∧ K.positivityCondition ∧ K.kernelRegular ∧ K.densityExists

theorem distribution_function_kernel_closed_from_evidence (K : DistributionFunctionKernelPackage)
    (E : DistributionFunctionKernelEvidence K) : DistributionFunctionKernelClosed K := by
  exact And.intro E.additivePropertyClosed
    (And.intro E.positivityConditionClosed (And.intro E.kernelRegularClosed E.densityExistsClosed))

end DistributionFunctionsAssociatedAdditivePositiveTheoremCanonicalLaneLean
end HautevilleHouse
