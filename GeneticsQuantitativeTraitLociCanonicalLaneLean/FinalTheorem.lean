import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneticsQuantitativeTraitLociCanonicalLaneLean

def ConstrainedGeneticsQtlClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_genetics_qtl_endgame (A : AdmissibleClass) : ConstrainedGeneticsQtlClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GeneticsQuantitativeTraitLociCanonicalLaneLean
end HautevilleHouse