import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionFunctionsAssociatedAdditivePositiveTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  DFAAPWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DistributionFunctionsAssociatedAdditivePositiveTheoremCanonicalLaneLean
end HautevilleHouse