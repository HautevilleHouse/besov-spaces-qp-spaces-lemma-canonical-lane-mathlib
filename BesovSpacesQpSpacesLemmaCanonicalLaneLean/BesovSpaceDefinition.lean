import BesovSpacesQpSpacesLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BesovSpacesQpSpacesLemmaCanonicalLaneLean

structure BesovSpacePackage where
  domain : Type
  smoothness : ℝ
  integrability : ℝ
  normDefined : Prop
  atomicDecomposition : Prop
  sobolevEmbedding : Prop

structure BesovSpaceEvidence (B : BesovSpacePackage) where
  normDefinedClosed : B.normDefined
  atomicDecompositionClosed : B.atomicDecomposition
  sobolevEmbeddingClosed : B.sobolevEmbedding

def BesovSpaceClosed (B : BesovSpacePackage) : Prop :=
  B.normDefined ∧ B.atomicDecomposition ∧ B.sobolevEmbedding

theorem besov_space_closed_from_evidence (B : BesovSpacePackage) (E : BesovSpaceEvidence B) :
    BesovSpaceClosed B := by
  exact And.intro E.normDefinedClosed (And.intro E.atomicDecompositionClosed E.sobolevEmbeddingClosed)

end BesovSpacesQpSpacesLemmaCanonicalLaneLean
end HautevilleHouse