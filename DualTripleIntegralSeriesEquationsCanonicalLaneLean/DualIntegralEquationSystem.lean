import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualTripleIntegralSeriesEquationsCanonicalLaneLean

structure DualIntegralEquationSystem where
  kernel : Type u
  kernelAction : kernel -> kernel
  integralTransform : Type v
  dualRelation : Prop
  seriesExpansion : Prop
  orthogonalityCondition : Prop
  dualRelationTerm : dualRelation
  seriesExpansionTerm : seriesExpansion
  orthogonalityConditionTerm : orthogonalityCondition

structure DualIntegralEquationEvidence (S : DualIntegralEquationSystem) where
  dualRelationClosed : S.dualRelation
  seriesExpansionClosed : S.seriesExpansion
  orthogonalityConditionClosed : S.orthogonalityCondition

def DualIntegralEquationClosed (S : DualIntegralEquationSystem) : Prop :=
  S.dualRelation ∧ S.seriesExpansion ∧ S.orthogonalityCondition

theorem dual_integral_equation_closed_from_evidence
    (S : DualIntegralEquationSystem) (E : DualIntegralEquationEvidence S) :
    DualIntegralEquationClosed S := by
  exact And.intro E.dualRelationClosed
    (And.intro E.seriesExpansionClosed E.orthogonalityConditionClosed)

end DualTripleIntegralSeriesEquationsCanonicalLaneLean
end HautevilleHouse