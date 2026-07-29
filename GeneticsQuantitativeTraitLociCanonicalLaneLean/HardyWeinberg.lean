import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneticsQuantitativeTraitLociCanonicalLaneLean

structure HardyWeinbergPackage where
  alleleFrequencies : List ℚ
  expectedGenotypeFrequencies : List ℚ
  equilibriumCondition : Prop
  chiSquaredStatistic : ℚ
  degreesFreedom : ℕ
  pValue : ℚ
  equilibriumConditionClosed : equilibriumCondition

def HardyWeinbergClosed (H : HardyWeinbergPackage) : Prop :=
  H.equilibriumCondition

theorem hardy_weinberg_closed_from_evidence (H : HardyWeinbergPackage) : HardyWeinbergClosed H :=
  H.equilibriumConditionClosed

end GeneticsQuantitativeTraitLociCanonicalLaneLean
end HautevilleHouse
