import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualTripleIntegralSeriesEquationsCanonicalLaneLean

structure OrthogonalityConditions where
  innerProductSpace : Type u
  orthogonalitySet : Type v
  orthogonalityRelation : Prop
  weightedOrthogonality : Prop
  crossTermOrthogonality : Prop
  orthogonalityRelationTerm : orthogonalityRelation
  weightedOrthogonalityTerm : weightedOrthogonality
  crossTermOrthogonalityTerm : crossTermOrthogonality

structure OrthogonalityConditionsEvidence (O : OrthogonalityConditions) where
  orthogonalityRelationClosed : O.orthogonalityRelation
  weightedOrthogonalityClosed : O.weightedOrthogonality
  crossTermOrthogonalityClosed : O.crossTermOrthogonality

def OrthogonalityConditionsClosed (O : OrthogonalityConditions) : Prop :=
  O.orthogonalityRelation ∧ O.weightedOrthogonality ∧ O.crossTermOrthogonality

theorem orthogonality_conditions_closed_from_evidence
    (O : OrthogonalityConditions) (E : OrthogonalityConditionsEvidence O) :
    OrthogonalityConditionsClosed O := by
  exact And.intro E.orthogonalityRelationClosed
    (And.intro E.weightedOrthogonalityClosed E.crossTermOrthogonalityClosed)

end DualTripleIntegralSeriesEquationsCanonicalLaneLean
end HautevilleHouse