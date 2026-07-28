import BesovSpacesQpSpacesLemmaCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace BesovSpacesQpSpacesLemmaCanonicalLaneLean

structure BesovAdmittedObject where
  functionSpace : Type
  norm : Type
  smoothnessParameter : ℝ
  integrabilityParameter : ℝ
  qpParameter : ℝ
  besovNormFinite : Prop
  qpNormEmbedding : Prop
  conclusion : besovNormFinite ∧ qpNormEmbedding

structure AdmissibleClass where
  object : BesovAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  BesovWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BesovSpacesQpSpacesLemmaCanonicalLaneLean
end HautevilleHouse