import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualTripleIntegralSeriesEquationsCanonicalLaneLean

structure BoundaryValueMatchingPackage where
  boundaryCondition : String
  matchedValues : List Float
  matchingAccuracy : Float
  residualBound : Prop

structure BoundaryValueMatchingEvidence (B : BoundaryValueMatchingPackage) where
  matchingAccuracyClosed : B.matchingAccuracy > 0.001
  residualBoundClosed : B.residualBound
  boundaryConditionClosed : B.boundaryCondition = "Dirichlet"

def BoundaryValueMatchingClosed (B : BoundaryValueMatchingPackage) : Prop :=
  B.matchingAccuracy > 0.001 ∧ B.residualBound ∧ B.boundaryCondition = "Dirichlet"

theorem boundary_value_matching_closed_from_evidence (B : BoundaryValueMatchingPackage) (E : BoundaryValueMatchingEvidence B) :
    BoundaryValueMatchingClosed B := by
  exact And.intro E.matchingAccuracyClosed (And.intro E.residualBoundClosed E.boundaryConditionClosed)

end DualTripleIntegralSeriesEquationsCanonicalLaneLean
end HautevilleHouse
