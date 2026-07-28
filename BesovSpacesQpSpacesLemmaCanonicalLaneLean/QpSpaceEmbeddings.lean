import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BesovSpacesQpSpacesLemmaCanonicalLaneLean

structure QpSpaceEmbeddingsPackage where
  sourceQpSpace : Type u
  targetQpSpace : Type v
  embeddingIsometric : Prop
  embeddingClosed : embeddingIsometric

structure QpSpaceEmbeddingsEvidence (Q : QpSpaceEmbeddingsPackage) where
  embeddingIsometricClosed : Q.embeddingIsometric

def QpSpaceEmbeddingsClosed (Q : QpSpaceEmbeddingsPackage) : Prop :=
  Q.embeddingIsometric

theorem qp_space_embeddings_closed_from_evidence (Q : QpSpaceEmbeddingsPackage)
    (E : QpSpaceEmbeddingsEvidence Q) : QpSpaceEmbeddingsClosed Q :=
  E.embeddingIsometricClosed

end BesovSpacesQpSpacesLemmaCanonicalLaneLean
end HautevilleHouse