import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneticsQuantitativeTraitLociCanonicalLaneLean

structure SequenceAlignmentPackage where
  querySequence : Type u
  referenceSequence : Type v
  substitutionMatrix : Type w
  gapPenalty : Prop
  alignmentScore : Prop
  optimalAlignment : Prop
  affineGapModel : Prop

structure SequenceAlignmentEvidence (S : SequenceAlignmentPackage) where
  substitutionMatrixClosed : S.substitutionMatrix
  gapPenaltyClosed : S.gapPenalty
  alignmentScoreClosed : S.alignmentScore
  optimalAlignmentClosed : S.optimalAlignment
  affineGapModelClosed : S.affineGapModel

def SequenceAlignmentClosed (S : SequenceAlignmentPackage) : Prop :=
  S.substitutionMatrix ∧ S.gapPenalty ∧ S.alignmentScore ∧
  S.optimalAlignment ∧ S.affineGapModel

theorem sequence_alignment_closed_from_evidence
    (S : SequenceAlignmentPackage) (E : SequenceAlignmentEvidence S) :
    SequenceAlignmentClosed S := by
  exact And.intro E.substitutionMatrixClosed
    (And.intro E.gapPenaltyClosed
      (And.intro E.alignmentScoreClosed
        (And.intro E.optimalAlignmentClosed E.affineGapModelClosed)))

end GeneticsQuantitativeTraitLociCanonicalLaneLean
end HautevilleHouse