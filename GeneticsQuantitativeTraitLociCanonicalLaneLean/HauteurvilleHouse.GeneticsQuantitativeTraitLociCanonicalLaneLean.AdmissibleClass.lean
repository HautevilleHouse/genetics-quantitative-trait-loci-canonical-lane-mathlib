import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneticsQuantitativeTraitLociCanonicalLaneLean

structure AdmissibleClass where
  object : GeneticAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  GeneticWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end GeneticsQuantitativeTraitLociCanonicalLaneLean
end HautevilleHouse