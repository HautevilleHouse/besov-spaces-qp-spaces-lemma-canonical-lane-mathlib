import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BesovSpacesQpSpacesLemmaCanonicalLaneLean

structure QpSpace where
  p : ℕ
  normDefined : Prop
  completeness : Prop
  ultrametricProperty : Prop

structure QpSpaceEvidence (Q : QpSpace) where
  normDefinedClosed : Q.normDefined
  completenessClosed : Q.completeness
  ultrametricPropertyClosed : Q.ultrametricProperty

def QpSpaceClosed (Q : QpSpace) : Prop :=
  Q.normDefined ∧ Q.completeness ∧ Q.ultrametricProperty

theorem qp_space_closed_from_evidence (Q : QpSpace) (E : QpSpaceEvidence Q) :
    QpSpaceClosed Q := by
  exact And.intro E.normDefinedClosed (And.intro E.completenessClosed E.ultrametricPropertyClosed)

end BesovSpacesQpSpacesLemmaCanonicalLaneLean
end HautevilleHouse