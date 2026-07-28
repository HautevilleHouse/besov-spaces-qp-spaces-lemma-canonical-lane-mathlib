import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BesovSpacesQpSpacesLemmaCanonicalLaneLean.BesovSpaceEmbeddings
import HautevilleHouse.BesovSpacesQpSpacesLemmaCanonicalLaneLean.QpSpaceEmbeddings

namespace HautevilleHouse
namespace BesovSpacesQpSpacesLemmaCanonicalLaneLean

def besovQpBridge (B : BesovSpaceEmbeddingsPackage) (Q : QpSpaceEmbeddingsPackage) : Prop :=
  BesovSpaceEmbeddingsClosed B ∧ QpSpaceEmbeddingsClosed Q

theorem besov_qp_bridge_from_evidence (B : BesovSpaceEmbeddingsPackage)
    (EB : BesovSpaceEmbeddingsEvidence B) (Q : QpSpaceEmbeddingsPackage)
    (EQ : QpSpaceEmbeddingsEvidence Q) : besovQpBridge B Q :=
  And.intro (besov_space_embeddings_closed_from_evidence B EB)
             (qp_space_embeddings_closed_from_evidence Q EQ)

end BesovSpacesQpSpacesLemmaCanonicalLaneLean
end HautevilleHouse