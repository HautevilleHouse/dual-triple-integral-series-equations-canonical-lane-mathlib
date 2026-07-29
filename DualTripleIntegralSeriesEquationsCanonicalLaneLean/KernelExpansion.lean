import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualTripleIntegralSeriesEquationsCanonicalLaneLean

structure KernelExpansionPackage where
  kernelFunction : String
  expansionCoefficients : List Float
  convergenceRegion : String
  analyticContinuation : Prop

structure KernelExpansionEvidence (K : KernelExpansionPackage) where
  expansionCoefficientsNonZero : Prop
  convergenceRegionClosed : K.convergenceRegion = "unitDisk"
  analyticContinuationClosed : K.analyticContinuation

def KernelExpansionClosed (K : KernelExpansionPackage) : Prop :=
  K.analyticContinuation ∧ K.convergenceRegion = "unitDisk"

theorem kernel_expansion_closed_from_evidence (K : KernelExpansionPackage) (E : KernelExpansionEvidence K) :
    KernelExpansionClosed K := by
  exact And.intro E.analyticContinuationClosed E.convergenceRegionClosed

end DualTripleIntegralSeriesEquationsCanonicalLaneLean
end HautevilleHouse
