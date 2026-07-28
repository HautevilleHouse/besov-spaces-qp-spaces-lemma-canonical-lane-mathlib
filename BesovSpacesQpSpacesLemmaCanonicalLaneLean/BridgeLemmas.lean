import HautevilleHouse.BesovSpacesQpSpacesLemmaCanonicalLaneLean.FunctionSpaceAdmissibleClass

namespace HautevilleHouse
namespace BesovSpacesQpSpacesLemmaCanonicalLaneLean

def bridgeClosed (A : FunctionSpaceAdmissibleClass) : Prop :=
  BesovQpEmbeddingClosed A.object.embeddingPackage

theorem bridge_from_admissible_class (A : FunctionSpaceAdmissibleClass) :
    bridgeClosed A := by
  exact A.object.embeddingClosed

def gateClosed (A : FunctionSpaceAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : FunctionSpaceAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end BesovSpacesQpSpacesLemmaCanonicalLaneLean
end HautevilleHouse
