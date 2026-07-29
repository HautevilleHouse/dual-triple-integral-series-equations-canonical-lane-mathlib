import canonicalLaneMathlib.AdmissibleClass

/-! Kernel Function Spaces Package -/

namespace HautevilleHouse
namespace DualTripleIntegralSeriesEquationsCanonicalLaneLean

structure KernelFunctionSpace where
  kernelType : Type
  continuity : Prop
  integrability : Prop
  asymptoticBehavior : Prop
  kernelParameters : Prop

structure KernelFunctionSpaceEvidence (K : KernelFunctionSpace) where
  continuityClosed : K.continuity
  integrabilityClosed : K.integrability
  asymptoticBehaviorClosed : K.asymptoticBehavior
  kernelParametersClosed : K.kernelParameters

def KernelFunctionSpaceClosed (K : KernelFunctionSpace) : Prop :=
  K.continuity ∧ K.integrability ∧ K.asymptoticBehavior ∧ K.kernelParameters

theorem kernel_function_space_closed_from_evidence (K : KernelFunctionSpace)
    (E : KernelFunctionSpaceEvidence K) : KernelFunctionSpaceClosed K :=
  And.intro E.continuityClosed (And.intro E.integrabilityClosed
    (And.intro E.asymptoticBehaviorClosed E.kernelParametersClosed))

end DualTripleIntegralSeriesEquationsCanonicalLaneLean
end HautevilleHouse