import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BesovSpacesQpSpacesLemmaCanonicalLaneLean

structure BesovSpaceEmbeddingsPackage where
  sourceBesovSpace : Type u
  targetBesovSpace : Type v
  embeddingContinuous : Prop
  embeddingCompact : Prop
  embeddingClosed : embeddingContinuous ∧ embeddingCompact

structure BesovSpaceEmbeddingsEvidence (B : BesovSpaceEmbeddingsPackage) where
  embeddingContinuousClosed : B.embeddingContinuous
  embeddingCompactClosed : B.embeddingCompact

def BesovSpaceEmbeddingsClosed (B : BesovSpaceEmbeddingsPackage) : Prop :=
  B.embeddingContinuous ∧ B.embeddingCompact

theorem besov_space_embeddings_closed_from_evidence (B : BesovSpaceEmbeddingsPackage)
    (E : BesovSpaceEmbeddingsEvidence B) : BesovSpaceEmbeddingsClosed B :=
  And.intro E.embeddingContinuousClosed E.embeddingCompactClosed

end BesovSpacesQpSpacesLemmaCanonicalLaneLean
end HautevilleHouse