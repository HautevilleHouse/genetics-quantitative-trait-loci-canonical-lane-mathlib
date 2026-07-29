import canonicalLaneMathlib.AdmissibleClass

/-!
# Phylogenetic Tree Package
-/

namespace HautevilleHouse
namespace GeneticsQuantitativeTraitLociCanonicalLaneLean

structure PhylogeneticTreePackage where
  geneticDistanceMatrix : Prop
  treeTopology : Prop
  branchLengths : Prop
  likelihoodScore : Prop

structure PhylogeneticTreeEvidence (P : PhylogeneticTreePackage) where
  geneticDistanceMatrixClosed : P.geneticDistanceMatrix
  treeTopologyClosed : P.treeTopology
  branchLengthsClosed : P.branchLengths
  likelihoodScoreClosed : P.likelihoodScore

def PhylogeneticTreeClosed (P : PhylogeneticTreePackage) : Prop :=
  P.geneticDistanceMatrix ∧ P.treeTopology ∧
  P.branchLengths ∧ P.likelihoodScore

theorem phylogenetic_tree_closed_from_evidence (P : PhylogeneticTreePackage)
    (E : PhylogeneticTreeEvidence P) : PhylogeneticTreeClosed P := by
  exact And.intro E.geneticDistanceMatrixClosed
    (And.intro E.treeTopologyClosed
      (And.intro E.branchLengthsClosed E.likelihoodScoreClosed))

end GeneticsQuantitativeTraitLociCanonicalLaneLean
end HautevilleHouse