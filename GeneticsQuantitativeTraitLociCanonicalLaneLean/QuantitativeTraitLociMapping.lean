import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneticsQuantitativeTraitLociCanonicalLaneLean

structure QuantitativeTraitLociMappingPackage where
  phenotypeData : Prop
  genotypeData : Prop
  statisticalModel : Prop
  qtlEffectSizes : Prop
  significanceThreshold : Prop

structure QuantitativeTraitLociMappingEvidence (Q : QuantitativeTraitLociMappingPackage) where
  phenotypeDataClosed : Q.phenotypeData
  genotypeDataClosed : Q.genotypeData
  statisticalModelClosed : Q.statisticalModel
  qtlEffectSizesClosed : Q.qtlEffectSizes
  significanceThresholdClosed : Q.significanceThreshold

def QuantitativeTraitLociMappingClosed (Q : QuantitativeTraitLociMappingPackage) : Prop :=
  Q.phenotypeData ∧ Q.genotypeData ∧
  Q.statisticalModel ∧ Q.qtlEffectSizes ∧ Q.significanceThreshold

theorem quantitative_trait_loci_mapping_closed_from_evidence
    (Q : QuantitativeTraitLociMappingPackage)
    (E : QuantitativeTraitLociMappingEvidence Q) :
    QuantitativeTraitLociMappingClosed Q := by
  exact And.intro E.phenotypeDataClosed
    (And.intro E.genotypeDataClosed
      (And.intro E.statisticalModelClosed
        (And.intro E.qtlEffectSizesClosed E.significanceThresholdClosed)))

end GeneticsQuantitativeTraitLociCanonicalLaneLean
end HautevilleHouse