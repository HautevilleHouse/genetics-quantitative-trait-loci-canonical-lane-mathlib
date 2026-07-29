import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneticsQuantitativeTraitLociCanonicalLaneLean

structure LinkageAnalysisPackage where
  recombinationFraction : Prop
  lodScore : Prop
  geneticMarkers : Type u
  pedigreeData : Type v
  phaseKnown : Prop
  noInterference : Prop
  morgansDistance : Prop

structure LinkageAnalysisEvidence (L : LinkageAnalysisPackage) where
  recombinationFractionClosed : L.recombinationFraction
  lodScoreClosed : L.lodScore
  phaseKnownClosed : L.phaseKnown
  noInterferenceClosed : L.noInterference
  morgansDistanceClosed : L.morgansDistance

def LinkageAnalysisClosed (L : LinkageAnalysisPackage) : Prop :=
  L.recombinationFraction ∧ L.lodScore ∧ L.phaseKnown ∧
  L.noInterference ∧ L.morgansDistance

theorem linkage_analysis_closed_from_evidence
    (L : LinkageAnalysisPackage) (E : LinkageAnalysisEvidence L) :
    LinkageAnalysisClosed L := by
  exact And.intro E.recombinationFractionClosed
    (And.intro E.lodScoreClosed
      (And.intro E.phaseKnownClosed
        (And.intro E.noInterferenceClosed E.morgansDistanceClosed)))

end GeneticsQuantitativeTraitLociCanonicalLaneLean
end HautevilleHouse