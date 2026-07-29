import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneticsQuantitativeTraitLociCanonicalLaneLean

structure PhylogeneticsPackage where
  taxa : Type u
  treeTopology : Type v
  branchLengths : Type w
  substitutionModel : Type x
  likelihoodFunction : Prop
  bootstrapSupport : Prop
  molecularClock : Prop

structure PhylogeneticsEvidence (P : PhylogeneticsPackage) where
  treeTopologyClosed : P.treeTopology
  branchLengthsClosed : P.branchLengths
  substitutionModelClosed : P.substitutionModel
  likelihoodFunctionClosed : P.likelihoodFunction
  bootstrapSupportClosed : P.bootstrapSupport
  molecularClockClosed : P.molecularClock

def PhylogeneticsClosed (P : PhylogeneticsPackage) : Prop :=
  P.treeTopology ∧ P.branchLengths ∧ P.substitutionModel ∧
  P.likelihoodFunction ∧ P.bootstrapSupport ∧ P.molecularClock

theorem phylogenetics_closed_from_evidence
    (P : PhylogeneticsPackage) (E : PhylogeneticsEvidence P) :
    PhylogeneticsClosed P := by
  exact And.intro E.treeTopologyClosed
    (And.intro E.branchLengthsClosed
      (And.intro E.substitutionModelClosed
        (And.intro E.likelihoodFunctionClosed
          (And.intro E.bootstrapSupportClosed E.molecularClockClosed))))

end GeneticsQuantitativeTraitLociCanonicalLaneLean
end HautevilleHouse