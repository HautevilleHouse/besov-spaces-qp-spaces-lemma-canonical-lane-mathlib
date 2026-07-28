import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BesovSpacesQpSpacesLemmaCanonicalLaneLean

structure BesovSpacePackage where
  domain : Type u
  s : ℝ
  p : ℝ
  q : ℝ
  normDefined : Prop
  embeddingToContinuous : Prop
  characterizationByWavelets : Prop

structure BesovSpaceEvidence (B : BesovSpacePackage) where
  normDefinedClosed : B.normDefined
  embeddingToContinuousClosed : B.embeddingToContinuous
  characterizationByWaveletsClosed : B.characterizationByWavelets

def BesovSpaceClosed (B : BesovSpacePackage) : Prop :=
  B.normDefined ∧ B.embeddingToContinuous ∧ B.characterizationByWavelets

theorem besov_space_closed_from_evidence (B : BesovSpacePackage) (E : BesovSpaceEvidence B) :
    BesovSpaceClosed B := by
  exact And.intro E.normDefinedClosed (And.intro E.embeddingToContinuousClosed E.characterizationByWaveletsClosed)

end BesovSpacesQpSpacesLemmaCanonicalLaneLean
end HautevilleHouse
