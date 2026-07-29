import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneticsQuantitativeTraitLociCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  GeneticWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end GeneticsQuantitativeTraitLociCanonicalLaneLean
end HautevilleHouse