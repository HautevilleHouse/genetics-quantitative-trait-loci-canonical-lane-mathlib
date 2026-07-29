import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneticsQuantitativeTraitLociCanonicalLaneLean

structure HardyWeinbergEquilibriumPackage where
  alleleFrequencies : Type u
  genotypeFrequencies : Type v
  diploidPopulation : Prop
  randomMating : Prop
  noSelection : Prop
  noMutation : Prop
  noMigration : Prop
  infinitePopulation : Prop

structure HardyWeinbergEquilibriumEvidence (H : HardyWeinbergEquilibriumPackage) where
  diploidPopulationClosed : H.diploidPopulation
  randomMatingClosed : H.randomMating
  noSelectionClosed : H.noSelection
  noMutationClosed : H.noMutation
  noMigrationClosed : H.noMigration
  infinitePopulationClosed : H.infinitePopulation

def HardyWeinbergEquilibriumClosed (H : HardyWeinbergEquilibriumPackage) : Prop :=
  H.diploidPopulation ∧ H.randomMating ∧ H.noSelection ∧
  H.noMutation ∧ H.noMigration ∧ H.infinitePopulation

theorem hardy_weinberg_equilibrium_closed_from_evidence
    (H : HardyWeinbergEquilibriumPackage)
    (E : HardyWeinbergEquilibriumEvidence H) :
    HardyWeinbergEquilibriumClosed H := by
  exact And.intro E.diploidPopulationClosed
    (And.intro E.randomMatingClosed
      (And.intro E.noSelectionClosed
        (And.intro E.noMutationClosed
          (And.intro E.noMigrationClosed E.infinitePopulationClosed))))

end GeneticsQuantitativeTraitLociCanonicalLaneLean
end HautevilleHouse