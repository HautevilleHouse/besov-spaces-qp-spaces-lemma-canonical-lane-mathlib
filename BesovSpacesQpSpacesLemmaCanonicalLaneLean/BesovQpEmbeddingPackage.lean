import HautevilleHouse.BesovSpacesQpSpacesLemmaCanonicalLaneLean.BesovSpacePackage
import HautevilleHouse.BesovSpacesQpSpacesLemmaCanonicalLaneLean.QpSpacePackage

namespace HautevilleHouse
namespace BesovSpacesQpSpacesLemmaCanonicalLaneLean

structure BesovQpEmbeddingPackage (B : BesovSpacePackage) (Q : QpSpacePackage) where
  embeddingHolds : Prop
  normInequality : Prop
  sharpExponentCondition : Prop

structure BesovQpEmbeddingEvidence {B : BesovSpacePackage} {Q : QpSpacePackage}
    (E : BesovQpEmbeddingPackage B Q) where
  embeddingHoldsClosed : E.embeddingHolds
  normInequalityClosed : E.normInequality
  sharpExponentConditionClosed : E.sharpExponentCondition

def BesovQpEmbeddingClosed {B : BesovSpacePackage} {Q : QpSpacePackage}
    (E : BesovQpEmbeddingPackage B Q) : Prop :=
  E.embeddingHolds ∧ E.normInequality ∧ E.sharpExponentCondition

theorem besov_qp_embedding_closed_from_evidence {B : BesovSpacePackage} {Q : QpSpacePackage}
    (E : BesovQpEmbeddingPackage B Q) (Ev : BesovQpEmbeddingEvidence E) :
    BesovQpEmbeddingClosed E := by
  exact And.intro Ev.embeddingHoldsClosed (And.intro Ev.normInequalityClosed Ev.sharpExponentConditionClosed)

end BesovSpacesQpSpacesLemmaCanonicalLaneLean
end HautevilleHouse
