import canonicalLaneMathlib.AdmissibleClass

/-!
# Sequence Alignment Package
-/

namespace HautevilleHouse
namespace GeneticsQuantitativeTraitLociCanonicalLaneLean

structure SequenceAlignmentPackage where
  referenceGenome : Prop
  readSequences : Prop
  alignmentScore : Prop
  mappingQuality : Prop

structure SequenceAlignmentEvidence (S : SequenceAlignmentPackage) where
  referenceGenomeClosed : S.referenceGenome
  readSequencesClosed : S.readSequences
  alignmentScoreClosed : S.alignmentScore
  mappingQualityClosed : S.mappingQuality

def SequenceAlignmentClosed (S : SequenceAlignmentPackage) : Prop :=
  S.referenceGenome ∧ S.readSequences ∧
  S.alignmentScore ∧ S.mappingQuality

theorem sequence_alignment_closed_from_evidence (S : SequenceAlignmentPackage)
    (E : SequenceAlignmentEvidence S) : SequenceAlignmentClosed S := by
  exact And.intro E.referenceGenomeClosed
    (And.intro E.readSequencesClosed
      (And.intro E.alignmentScoreClosed E.mappingQualityClosed))

end GeneticsQuantitativeTraitLociCanonicalLaneLean
end HautevilleHouse