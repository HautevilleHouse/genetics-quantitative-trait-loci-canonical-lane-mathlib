import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneticsQuantitativeTraitLociCanonicalLaneLean

structure QtlMappingPackage where
  markerMap : List String
  traitValues : List Float
  qtlLikelihoodRatio : Float
  qtlPosition : Float
  significantQtl : Prop
  permutationThreshold : Float

structure QtlMappingEvidence (Q : QtlMappingPackage) where
  qtlLikelihoodRatioClosed : Q.qtlLikelihoodRatio > Q.permutationThreshold
  significantQtlClosed : Q.significantQtl
  qtlPositionClosed : Q.qtlPosition > 0.0 ∧ Q.qtlPosition < 1.0

def QtlMappingClosed (Q : QtlMappingPackage) : Prop :=
  Q.qtlLikelihoodRatio > Q.permutationThreshold ∧ Q.significantQtl ∧ (Q.qtlPosition > 0.0 ∧ Q.qtlPosition < 1.0)

theorem qtl_mapping_closed_from_evidence (Q : QtlMappingPackage) (E : QtlMappingEvidence Q) : QtlMappingClosed Q := by
  exact And.intro E.qtlLikelihoodRatioClosed (And.intro E.significantQtlClosed E.qtlPositionClosed)

end GeneticsQuantitativeTraitLociCanonicalLaneLean
end HautevilleHouse