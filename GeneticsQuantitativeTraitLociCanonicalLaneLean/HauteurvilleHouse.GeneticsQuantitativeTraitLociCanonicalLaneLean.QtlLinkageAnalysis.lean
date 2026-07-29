import canonicalLaneMathlib.AdmissibleClass

/-!
# QTL Linkage Analysis Package
-/

namespace HautevilleHouse
namespace GeneticsQuantitativeTraitLociCanonicalLaneLean

structure QtlLinkagePackage where
  markerMap : Prop
  recombinationFraction : Prop
  lodScore : Prop
  quantitativeTraitVariance : Prop

structure QtlLinkageEvidence (Q : QtlLinkagePackage) where
  markerMapClosed : Q.markerMap
  recombinationFractionClosed : Q.recombinationFraction
  lodScoreClosed : Q.lodScore
  quantitativeTraitVarianceClosed : Q.quantitativeTraitVariance

def QtlLinkageClosed (Q : QtlLinkagePackage) : Prop :=
  Q.markerMap ∧ Q.recombinationFraction ∧
  Q.lodScore ∧ Q.quantitativeTraitVariance

theorem qtl_linkage_closed_from_evidence (Q : QtlLinkagePackage)
    (E : QtlLinkageEvidence Q) : QtlLinkageClosed Q := by
  exact And.intro E.markerMapClosed
    (And.intro E.recombinationFractionClosed
      (And.intro E.lodScoreClosed E.quantitativeTraitVarianceClosed))

end GeneticsQuantitativeTraitLociCanonicalLaneLean
end HautevilleHouse