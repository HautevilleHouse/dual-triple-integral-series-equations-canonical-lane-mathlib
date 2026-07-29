import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualTripleIntegralSeriesEquationsCanonicalLaneLean

structure SeriesExpansionConvergence where
  expansionSeries : Type u
  convergenceDomain : Type v
  uniformConvergence : Prop
  pointwiseConvergence : Prop
  rateOfConvergence : Prop
  uniformConvergenceTerm : uniformConvergence
  pointwiseConvergenceTerm : pointwiseConvergence
  rateOfConvergenceTerm : rateOfConvergence

structure SeriesExpansionConvergenceEvidence (C : SeriesExpansionConvergence) where
  uniformConvergenceClosed : C.uniformConvergence
  pointwiseConvergenceClosed : C.pointwiseConvergence
  rateOfConvergenceClosed : C.rateOfConvergence

def SeriesExpansionConvergenceClosed (C : SeriesExpansionConvergence) : Prop :=
  C.uniformConvergence ∧ C.pointwiseConvergence ∧ C.rateOfConvergence

theorem series_expansion_convergence_closed_from_evidence
    (C : SeriesExpansionConvergence) (E : SeriesExpansionConvergenceEvidence C) :
    SeriesExpansionConvergenceClosed C := by
  exact And.intro E.uniformConvergenceClosed
    (And.intro E.pointwiseConvergenceClosed E.rateOfConvergenceClosed)

end DualTripleIntegralSeriesEquationsCanonicalLaneLean
end HautevilleHouse