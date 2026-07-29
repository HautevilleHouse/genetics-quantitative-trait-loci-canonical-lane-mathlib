import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneticsQuantitativeTraitLociCanonicalLaneLean

structure AdmissibleClass where
  object : GeneticsAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  GeneticsWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end GeneticsQuantitativeTraitLociCanonicalLaneLean
end HautevilleHouse