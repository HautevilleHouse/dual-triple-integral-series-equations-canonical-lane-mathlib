import DualTripleIntegralSeriesEquationsCanonicalLaneLean.DualTripleIntegralCore

namespace HautevilleHouse
namespace DualTripleIntegralSeriesEquationsCanonicalLaneLean

structure DecompositionKernelPackage where
  kernelType : Type u
  measureSpace : Type v
  decompositionProperty : Prop
  integralConvergence : Prop
  symmetryCondition : Prop

structure DecompositionEvidence (D : DecompositionKernelPackage) where
  decompositionPropertyClosed : D.decompositionProperty
  integralConvergenceClosed : D.integralConvergence
  symmetryConditionClosed : D.symmetryCondition

def DecompositionKernelClosed (D : DecompositionKernelPackage) : Prop :=
  D.decompositionProperty ∧ D.integralConvergence ∧ D.symmetryCondition

theorem decomposition_closed_from_evidence (D : DecompositionKernelPackage) (E : DecompositionEvidence D) :
    DecompositionKernelClosed D := by
  exact And.intro E.decompositionPropertyClosed (And.intro E.integralConvergenceClosed E.symmetryConditionClosed)

end DualTripleIntegralSeriesEquationsCanonicalLaneLean
end HautevilleHouse