import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualTripleIntegralSeriesEquationsCanonicalLaneLean

structure KernelFactorization where
  originalKernel : Type u
  factorKernels : Type v
  factorizationLaw : Prop
  kernelFactorizationFormula : Prop
  factorOrthogonality : Prop
  factorizationLawTerm : factorizationLaw
  kernelFactorizationFormulaTerm : kernelFactorizationFormula
  factorOrthogonalityTerm : factorOrthogonality

structure KernelFactorizationEvidence (F : KernelFactorization) where
  factorizationLawClosed : F.factorizationLaw
  kernelFactorizationFormulaClosed : F.kernelFactorizationFormula
  factorOrthogonalityClosed : F.factorOrthogonality

def KernelFactorizationClosed (F : KernelFactorization) : Prop :=
  F.factorizationLaw ∧ F.kernelFactorizationFormula ∧ F.factorOrthogonality

theorem kernel_factorization_closed_from_evidence
    (F : KernelFactorization) (E : KernelFactorizationEvidence F) :
    KernelFactorizationClosed F := by
  exact And.intro E.factorizationLawClosed
    (And.intro E.kernelFactorizationFormulaClosed E.factorOrthogonalityClosed)

end DualTripleIntegralSeriesEquationsCanonicalLaneLean
end HautevilleHouse