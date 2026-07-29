import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualTripleIntegralSeriesEquationsCanonicalLaneLean

structure TripleIntegralSeriesReduction where
  tripleKernel : Type u
  reductionMethod : Type v
  kernelFactorization : Prop
  reductionMapping : Prop
  simplifiedDualSystem : Prop
  kernelFactorizationTerm : kernelFactorization
  reductionMappingTerm : reductionMapping
  simplifiedDualSystemTerm : simplifiedDualSystem

structure TripleIntegralReductionEvidence (R : TripleIntegralSeriesReduction) where
  kernelFactorizationClosed : R.kernelFactorization
  reductionMappingClosed : R.reductionMapping
  simplifiedDualSystemClosed : R.simplifiedDualSystem

def TripleIntegralReductionClosed (R : TripleIntegralSeriesReduction) : Prop :=
  R.kernelFactorization ∧ R.reductionMapping ∧ R.simplifiedDualSystem

theorem triple_integral_reduction_closed_from_evidence
    (R : TripleIntegralSeriesReduction) (E : TripleIntegralReductionEvidence R) :
    TripleIntegralReductionClosed R := by
  exact And.intro E.kernelFactorizationClosed
    (And.intro E.reductionMappingClosed E.simplifiedDualSystemClosed)

end DualTripleIntegralSeriesEquationsCanonicalLaneLean
end HautevilleHouse