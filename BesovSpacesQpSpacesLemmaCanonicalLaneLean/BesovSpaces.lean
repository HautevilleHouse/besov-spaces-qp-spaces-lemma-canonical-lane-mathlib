import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BesovSpacesQpSpacesLemmaCanonicalLaneLean

structure BesovSpacePackage where
  smoothnessIndex : ℝ
  integrabilityIndex : ℝ
  functionSpace : Type u
  normDefined : Prop
  fourierCharacterization : Prop

structure BesovSpaceEvidence (B : BesovSpacePackage) where
  normDefinedClosed : B.normDefined
  fourierCharacterizationClosed : B.fourierCharacterization

def BesovSpaceClosed (B : BesovSpacePackage) : Prop :=
  B.normDefined ∧ B.fourierCharacterization

theorem besov_space_closed_from_evidence (B : BesovSpacePackage) (E : BesovSpaceEvidence B) :
    BesovSpaceClosed B := by
  exact And.intro E.normDefinedClosed E.fourierCharacterizationClosed

end BesovSpacesQpSpacesLemmaCanonicalLaneLean
end HautevilleHouse
