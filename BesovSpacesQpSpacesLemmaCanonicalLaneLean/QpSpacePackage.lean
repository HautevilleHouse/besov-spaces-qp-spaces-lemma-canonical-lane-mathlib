import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BesovSpacesQpSpacesLemmaCanonicalLaneLean

structure QpSpacePackage where
  domain : Type u
  exponent : ℝ
  normDefined : Prop
  qBmoRelation : Prop
  carlesonMeasureCharacterization : Prop

structure QpSpaceEvidence (Q : QpSpacePackage) where
  normDefinedClosed : Q.normDefined
  qBmoRelationClosed : Q.qBmoRelation
  carlesonMeasureCharacterizationClosed : Q.carlesonMeasureCharacterization

def QpSpaceClosed (Q : QpSpacePackage) : Prop :=
  Q.normDefined ∧ Q.qBmoRelation ∧ Q.carlesonMeasureCharacterization

theorem qp_space_closed_from_evidence (Q : QpSpacePackage) (E : QpSpaceEvidence Q) :
    QpSpaceClosed Q := by
  exact And.intro E.normDefinedClosed (And.intro E.qBmoRelationClosed E.carlesonMeasureCharacterizationClosed)

end BesovSpacesQpSpacesLemmaCanonicalLaneLean
end HautevilleHouse
