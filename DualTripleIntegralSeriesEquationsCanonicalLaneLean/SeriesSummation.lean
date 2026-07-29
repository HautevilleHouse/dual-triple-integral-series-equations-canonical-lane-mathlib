import DualTripleIntegralSeriesEquationsCanonicalLaneLean.KernelDecomposition

namespace HautevilleHouse
namespace DualTripleIntegralSeriesEquationsCanonicalLaneLean

structure SeriesSummationPackage where
  seriesType : Type u
  summationMethod : Type v
  convergenceDomain : Prop
  sumIdentities : Prop
  exchangeOfOrder : Prop

structure SeriesSummationEvidence (S : SeriesSummationPackage) where
  convergenceDomainClosed : S.convergenceDomain
  sumIdentitiesClosed : S.sumIdentities
  exchangeOfOrderClosed : S.exchangeOfOrder

def SeriesSummationClosed (S : SeriesSummationPackage) : Prop :=
  S.convergenceDomain ∧ S.sumIdentities ∧ S.exchangeOfOrder

theorem series_summation_closed_from_evidence (S : SeriesSummationPackage) (E : SeriesSummationEvidence S) :
    SeriesSummationClosed S := by
  exact And.intro E.convergenceDomainClosed (And.intro E.sumIdentitiesClosed E.exchangeOfOrderClosed)

end DualTripleIntegralSeriesEquationsCanonicalLaneLean
end HautevilleHouse