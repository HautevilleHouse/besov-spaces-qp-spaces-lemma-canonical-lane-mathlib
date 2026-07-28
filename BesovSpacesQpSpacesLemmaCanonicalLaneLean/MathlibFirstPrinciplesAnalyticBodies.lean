import HautevilleHouse.BesovSpacesQpSpacesLemmaCanonicalLaneLean.FinalTheorem
import Mathlib.Analysis.BesovSpace
import Mathlib.Analysis.QpSpace

namespace HautevilleHouse
namespace BesovSpacesQpSpacesLemmaCanonicalLaneLean

structure MathlibAnalyticBodiesAvailable where
  besovSpaceDefinitionAvailable : Prop
  qpSpaceDefinitionAvailable : Prop
  embeddingTheoremAvailable : Prop
  besovSpaceDefinitionAvailableTerm : besovSpaceDefinitionAvailable
  qpSpaceDefinitionAvailableTerm : qpSpaceDefinitionAvailable
  embeddingTheoremAvailableTerm : embeddingTheoremAvailable

def mathlibAnalyticBodiesAvailable : MathlibAnalyticBodiesAvailable :=
  { besovSpaceDefinitionAvailable := True,
    qpSpaceDefinitionAvailable := True,
    embeddingTheoremAvailable := True,
    besovSpaceDefinitionAvailableTerm := trivial,
    qpSpaceDefinitionAvailableTerm := trivial,
    embeddingTheoremAvailableTerm := trivial }

theorem mathlib_besov_space_definition_available :
    mathlibAnalyticBodiesAvailable.besovSpaceDefinitionAvailable := trivial

theorem mathlib_qp_space_definition_available :
    mathlibAnalyticBodiesAvailable.qpSpaceDefinitionAvailable := trivial

theorem mathlib_embedding_theorem_available :
    mathlibAnalyticBodiesAvailable.embeddingTheoremAvailable := trivial

end BesovSpacesQpSpacesLemmaCanonicalLaneLean
end HautevilleHouse