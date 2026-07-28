import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BesovSpacesQpSpacesLemmaCanonicalLaneLean

structure QpSpacePackage where
  parameter : ℝ
  qIndex : ℝ
  functionSpace : Type u
  qCondition : Prop
  besovEmbedding : Prop

structure QpSpaceEvidence (Q : QpSpacePackage) where
  qConditionClosed : Q.qCondition
  besovEmbeddingClosed : Q.besovEmbedding

def QpSpaceClosed (Q : QpSpacePackage) : Prop :=
  Q.qCondition ∧ Q.besovEmbedding

theorem qp_space_closed_from_evidence (Q : QpSpacePackage) (E : QpSpaceEvidence Q) :
    QpSpaceClosed Q := by
  exact And.intro E.qConditionClosed E.besovEmbeddingClosed

end BesovSpacesQpSpacesLemmaCanonicalLaneLean
end HautevilleHouse
