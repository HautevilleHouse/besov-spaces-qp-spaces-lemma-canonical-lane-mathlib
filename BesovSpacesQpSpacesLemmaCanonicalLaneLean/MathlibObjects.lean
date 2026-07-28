import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BesovSpacesQpSpacesLemmaCanonicalLaneLean

structure BesovSpace where
  domain : Type
  smoothness : ℝ
  integrability : ℝ
  norm : Prop

structure QpSpace where
  domain : Type
  index : ℝ
  norm : Prop

structure BesovQpAdmittedObject where
  besov : BesovSpace
  qp : QpSpace
  embeddingCondition : Prop
  conclusion : embeddingCondition

end BesovSpacesQpSpacesLemmaCanonicalLaneLean
end HautevilleHouse