import canonicalLaneMathlib.AdmissibleClass

/-! Triple Integral Series Package -/

namespace HautevilleHouse
namespace DualTripleIntegralSeriesEquationsCanonicalLaneLean

structure TripleIntegralSeriesPackage where
  seriesSummand : Prop
  convergenceDomain : Prop
  analyticContinuation : Prop
  summationFormula : Prop

structure TripleIntegralSeriesEvidence (T : TripleIntegralSeriesPackage) where
  seriesSummandClosed : T.seriesSummand
  convergenceDomainClosed : T.convergenceDomain
  analyticContinuationClosed : T.analyticContinuation
  summationFormulaClosed : T.summationFormula

def TripleIntegralSeriesClosed (T : TripleIntegralSeriesPackage) : Prop :=
  T.seriesSummand ∧ T.convergenceDomain ∧ T.analyticContinuation ∧ T.summationFormula

theorem triple_integral_series_closed_from_evidence (T : TripleIntegralSeriesPackage)
    (E : TripleIntegralSeriesEvidence T) : TripleIntegralSeriesClosed T :=
  And.intro E.seriesSummandClosed (And.intro E.convergenceDomainClosed
    (And.intro E.analyticContinuationClosed E.summationFormulaClosed))

end DualTripleIntegralSeriesEquationsCanonicalLaneLean
end HautevilleHouse