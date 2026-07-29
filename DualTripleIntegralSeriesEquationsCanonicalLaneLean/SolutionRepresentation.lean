import canonicalLaneMathlib.AdmissibleClass

/-! Solution Representation Package -/

namespace HautevilleHouse
namespace DualTripleIntegralSeriesEquationsCanonicalLaneLean

structure SolutionRepresentationPackage where
  representationType : Prop
  closedFormExpression : Prop
  asymptoticExpansion : Prop
  numericalApproximation : Prop

structure SolutionRepresentationEvidence (R : SolutionRepresentationPackage) where
  representationTypeClosed : R.representationType
  closedFormExpressionClosed : R.closedFormExpression
  asymptoticExpansionClosed : R.asymptoticExpansion
  numericalApproximationClosed : R.numericalApproximation

def SolutionRepresentationClosed (R : SolutionRepresentationPackage) : Prop :=
  R.representationType ∧ R.closedFormExpression ∧ R.asymptoticExpansion ∧ R.numericalApproximation

theorem solution_representation_closed_from_evidence (R : SolutionRepresentationPackage)
    (E : SolutionRepresentationEvidence R) : SolutionRepresentationClosed R :=
  And.intro E.representationTypeClosed (And.intro E.closedFormExpressionClosed
    (And.intro E.asymptoticExpansionClosed E.numericalApproximationClosed))

end DualTripleIntegralSeriesEquationsCanonicalLaneLean
end HautevilleHouse