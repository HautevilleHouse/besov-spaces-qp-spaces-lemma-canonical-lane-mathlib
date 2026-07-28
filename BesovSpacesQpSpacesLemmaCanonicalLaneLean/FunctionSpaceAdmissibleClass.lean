import HautevilleHouse.BesovSpacesQpSpacesLemmaCanonicalLaneLean.BesovSpacePackage
import HautevilleHouse.BesovSpacesQpSpacesLemmaCanonicalLaneLean.QpSpacePackage
import HautevilleHouse.BesovSpacesQpSpacesLemmaCanonicalLaneLean.BesovQpEmbeddingPackage

namespace HautevilleHouse
namespace BesovSpacesQpSpacesLemmaCanonicalLaneLean

structure FunctionSpaceAdmittedObject where
  domain : Type u
  topology : TopologicalSpace domain
  measure : MeasureTheory.Measure domain
  besovPackage : BesovSpacePackage
  qpPackage : QpSpacePackage
  embeddingPackage : BesovQpEmbeddingPackage besovPackage qpPackage
  embeddingClosed : BesovQpEmbeddingClosed embeddingPackage

structure FunctionSpaceAdmissibleClass where
  object : FunctionSpaceAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def functionSpaceAdmittedClosure (A : FunctionSpaceAdmissibleClass) : Prop :=
  BesovQpEmbeddingClosed A.object.embeddingPackage ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BesovSpacesQpSpacesLemmaCanonicalLaneLean
end HautevilleHouse
