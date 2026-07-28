import canonicalLaneMathlib.AdmissibleClass
import BesovSpacesQpSpacesLemmaCanonicalLaneLean.BesovSpaces
import BesovSpacesQpSpacesLemmaCanonicalLaneLean.QpSpaces

namespace HautevilleHouse
namespace BesovSpacesQpSpacesLemmaCanonicalLaneLean

structure BesovQpAdmissibleClass where
  besov : BesovSpacePackage
  qp : QpSpacePackage
  besovEvidence : BesovSpaceEvidence besov
  qpEvidence : QpSpaceEvidence qp
  embeddingConsistent : Prop
  embeddingConsistentClosed : embeddingConsistent

def bridgeClosed (A : BesovQpAdmissibleClass) : Prop :=
  BesovSpaceClosed A.besov

def gateClosed (A : BesovQpAdmissibleClass) : Prop :=
  QpSpaceClosed A.qp

theorem bridge_from_admissible_class (A : BesovQpAdmissibleClass) : bridgeClosed A := by
  exact besov_space_closed_from_evidence A.besov A.besovEvidence

theorem gate_from_admissible_class (A : BesovQpAdmissibleClass) : gateClosed A := by
  exact qp_space_closed_from_evidence A.qp A.qpEvidence

def ConstrainedBesovQpClosure (A : BesovQpAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_besov_qp_endgame (A : BesovQpAdmissibleClass) :
    ConstrainedBesovQpClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BesovSpacesQpSpacesLemmaCanonicalLaneLean
end HautevilleHouse
