import BesovSpacesQpSpacesLemmaCanonicalLaneLean.QpSpaceEmbedding

namespace HautevilleHouse
namespace BesovSpacesQpSpacesLemmaCanonicalLaneLean

structure InterpolationPackage {B : BesovSpacePackage} {Q : QpSpaceEmbeddingPackage B} where
  interpolationSpace : Type
  realInterpolation : Prop
  complexInterpolation : Prop
  reiterationTheorem : Prop

structure InterpolationEvidence {B : BesovSpacePackage} {Q : QpSpaceEmbeddingPackage B}
    (I : InterpolationPackage B Q) where
  realInterpolationClosed : I.realInterpolation
  complexInterpolationClosed : I.complexInterpolation
  reiterationTheoremClosed : I.reiterationTheorem

def InterpolationClosed {B : BesovSpacePackage} {Q : QpSpaceEmbeddingPackage B}
    (I : InterpolationPackage B Q) : Prop :=
  I.realInterpolation ∧ I.complexInterpolation ∧ I.reiterationTheorem

theorem interpolation_closed_from_evidence {B : BesovSpacePackage} {Q : QpSpaceEmbeddingPackage B}
    (I : InterpolationPackage B Q) (E : InterpolationEvidence I) :
    InterpolationClosed I := by
  exact And.intro E.realInterpolationClosed (And.intro E.complexInterpolationClosed E.reiterationTheoremClosed)

end BesovSpacesQpSpacesLemmaCanonicalLaneLean
end HautevilleHouse