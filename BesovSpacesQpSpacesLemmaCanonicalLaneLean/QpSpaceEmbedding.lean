import BesovSpacesQpSpacesLemmaCanonicalLaneLean.BesovSpaceDefinition

namespace HautevilleHouse
namespace BesovSpacesQpSpacesLemmaCanonicalLaneLean

structure QpSpaceEmbeddingPackage {B : BesovSpacePackage} where
  qpSpace : Type
  embeddingOperator : Type
  embeddingBounded : Prop
  normEquivalence : Prop
  qpCharacterization : Prop

structure QpSpaceEmbeddingEvidence {B : BesovSpacePackage} (Q : QpSpaceEmbeddingPackage B) where
  embeddingBoundedClosed : Q.embeddingBounded
  normEquivalenceClosed : Q.normEquivalence
  qpCharacterizationClosed : Q.qpCharacterization

def QpSpaceEmbeddingClosed {B : BesovSpacePackage} (Q : QpSpaceEmbeddingPackage B) : Prop :=
  Q.embeddingBounded ∧ Q.normEquivalence ∧ Q.qpCharacterization

theorem qp_space_embedding_closed_from_evidence {B : BesovSpacePackage}
    (Q : QpSpaceEmbeddingPackage B) (E : QpSpaceEmbeddingEvidence Q) :
    QpSpaceEmbeddingClosed Q := by
  exact And.intro E.embeddingBoundedClosed (And.intro E.normEquivalenceClosed E.qpCharacterizationClosed)

end BesovSpacesQpSpacesLemmaCanonicalLaneLean
end HautevilleHouse