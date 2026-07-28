import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BesovSpacesQpSpacesLemmaCanonicalLaneLean.BesovSpace
import HautevilleHouse.BesovSpacesQpSpacesLemmaCanonicalLaneLean.QpSpace

namespace HautevilleHouse
namespace BesovSpacesQpSpacesLemmaCanonicalLaneLean

structure EmbeddingLemma where
  besov : BesovSpace
  qp : QpSpace
  embeddingMap : Type
  boundedness : Prop
  density : Prop

structure EmbeddingLemmaEvidence (E : EmbeddingLemma) where
  boundednessClosed : E.boundedness
  densityClosed : E.density

def EmbeddingLemmaClosed (E : EmbeddingLemma) : Prop :=
  E.boundedness ∧ E.density

theorem embedding_lemma_closed_from_evidence (E : EmbeddingLemma) (Ev : EmbeddingLemmaEvidence E) :
    EmbeddingLemmaClosed E := by
  exact And.intro Ev.boundednessClosed Ev.densityClosed

def BesovQpWitnessClosed (O : BesovQpAdmissibleObject) : Prop :=
  O.embeddingExists

end BesovSpacesQpSpacesLemmaCanonicalLaneLean
end HautevilleHouse