import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualTripleIntegralSeriesEquationsCanonicalLaneLean

structure SeriesKernelPackage where
  kernelFunction : Type u
  kernelDomain : Type v
  kernelContinuity : Prop
  symmetryCondition : Prop
  integrabilityCondition : Prop

structure SeriesKernelEvidence (K : SeriesKernelPackage) where
  kernelContinuityClosed : K.kernelContinuity
  symmetryConditionClosed : K.symmetryCondition
  integrabilityConditionClosed : K.integrabilityCondition

def SeriesKernelClosed (K : SeriesKernelPackage) : Prop :=
  K.kernelContinuity ∧ K.symmetryCondition ∧ K.integrabilityCondition

theorem series_kernel_closed_from_evidence (K : SeriesKernelPackage) (E : SeriesKernelEvidence K) :
    SeriesKernelClosed K := by
  exact And.intro E.kernelContinuityClosed (And.intro E.symmetryConditionClosed E.integrabilityConditionClosed)

end DualTripleIntegralSeriesEquationsCanonicalLaneLean
end HautevilleHouse