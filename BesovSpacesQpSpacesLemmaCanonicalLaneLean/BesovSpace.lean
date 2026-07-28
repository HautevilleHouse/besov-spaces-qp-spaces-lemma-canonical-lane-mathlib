import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BesovSpacesQpSpacesLemmaCanonicalLaneLean

structure BesovSpace where
  p : ℝ
  q : ℝ
  s : ℝ
  domain : Type
  normDefined : Prop
  completeness : Prop

structure BesovSpaceEvidence (B : BesovSpace) where
  normDefinedClosed : B.normDefined
  completenessClosed : B.completeness

def BesovSpaceClosed (B : BesovSpace) : Prop :=
  B.normDefined ∧ B.completeness

theorem besov_space_closed_from_evidence (B : BesovSpace) (E : BesovSpaceEvidence B) :
    BesovSpaceClosed B := by
  exact And.intro E.normDefinedClosed E.completenessClosed

end BesovSpacesQpSpacesLemmaCanonicalLaneLean
end HautevilleHouse