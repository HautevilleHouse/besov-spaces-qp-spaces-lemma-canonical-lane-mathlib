import BesovSpacesQpSpacesLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BesovSpacesQpSpacesLemmaCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  manifoldConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String
  deriving Repr, DecidableEq

def sourceTheoremStatement : TheoremStatement :=
  {
    sourceKey := "besov-spaces-qp-spaces-lemma"
    theoremName := "Besov Spaces Qp Spaces Lemma"
    theoremObject := "Besov Qp Space Lemma"
    classicalBoundary := "carried remainder boundary"
    manifoldConstrainedStatement := "Besov Qp lemma closure internalized"
    certificateLane := "besov_qp_constrained"
    carriedRemainder := "classical source boundary"
  }

end BesovSpacesQpSpacesLemmaCanonicalLaneLean
end HautevilleHouse