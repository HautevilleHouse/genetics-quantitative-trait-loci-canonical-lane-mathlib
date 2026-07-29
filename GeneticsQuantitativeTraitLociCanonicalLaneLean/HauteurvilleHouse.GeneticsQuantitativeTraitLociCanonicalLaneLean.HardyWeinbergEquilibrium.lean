import canonicalLaneMathlib.AdmissibleClass

/-!
# Hardy-Weinberg Equilibrium Package
-/

namespace HautevilleHouse
namespace GeneticsQuantitativeTraitLociCanonicalLaneLean

structure HardyWeinbergPackage where
  populationGenotypeFrequencies : Prop
  randomMatingAssumption : Prop
  noSelectionMutationMigration : Prop
  equilibriumCondition : Prop

structure HardyWeinbergEvidence (H : HardyWeinbergPackage) where
  populationGenotypeFrequenciesClosed : H.populationGenotypeFrequencies
  randomMatingAssumptionClosed : H.randomMatingAssumption
  noSelectionMutationMigrationClosed : H.noSelectionMutationMigration
  equilibriumConditionClosed : H.equilibriumCondition

def HardyWeinbergClosed (H : HardyWeinbergPackage) : Prop :=
  H.populationGenotypeFrequencies ∧ H.randomMatingAssumption ∧
  H.noSelectionMutationMigration ∧ H.equilibriumCondition

theorem hardy_weinberg_closed_from_evidence (H : HardyWeinbergPackage)
    (E : HardyWeinbergEvidence H) : HardyWeinbergClosed H := by
  exact And.intro E.populationGenotypeFrequenciesClosed
    (And.intro E.randomMatingAssumptionClosed
      (And.intro E.noSelectionMutationMigrationClosed E.equilibriumConditionClosed))

end GeneticsQuantitativeTraitLociCanonicalLaneLean
end HautevilleHouse