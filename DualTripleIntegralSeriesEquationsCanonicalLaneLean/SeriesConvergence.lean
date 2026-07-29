import canonicalLaneMathlib.AdmissibleClass

/-! Series Convergence Package -/

namespace HautevilleHouse
namespace DualTripleIntegralSeriesEquationsCanonicalLaneLean

structure SeriesConvergencePackage where
  seriesType : Type
  convergenceCondition : Prop
  rateOfConvergence : Prop
  uniformConvergence : Prop
  termwiseEstimates : Prop

structure SeriesConvergenceEvidence (S : SeriesConvergencePackage) where
  convergenceConditionClosed : S.convergenceCondition
  rateOfConvergenceClosed : S.rateOfConvergence
  uniformConvergenceClosed : S.uniformConvergence
  termwiseEstimatesClosed : S.termwiseEstimates

def SeriesConvergenceClosed (S : SeriesConvergencePackage) : Prop :=
  S.convergenceCondition ∧ S.rateOfConvergence ∧ S.uniformConvergence ∧ S.termwiseEstimates

theorem series_convergence_closed_from_evidence (S : SeriesConvergencePackage)
    (E : SeriesConvergenceEvidence S) : SeriesConvergenceClosed S :=
  And.intro E.convergenceConditionClosed (And.intro E.rateOfConvergenceClosed
    (And.intro E.uniformConvergenceClosed E.termwiseEstimatesClosed))

end DualTripleIntegralSeriesEquationsCanonicalLaneLean
end HautevilleHouse