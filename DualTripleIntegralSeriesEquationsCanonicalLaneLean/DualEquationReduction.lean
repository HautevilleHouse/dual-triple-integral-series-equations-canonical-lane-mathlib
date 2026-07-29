import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualTripleIntegralSeriesEquationsCanonicalLaneLean

structure DualEquationReductionPackage where
  primalTripleEquation : Prop
  dualTripleEquation : Prop
  reductionMap : Type u
  equivalenceCondition : Prop

structure DualEquationReductionEvidence (D : DualEquationReductionPackage) where
  primalTripleEquationClosed : D.primalTripleEquation
  dualTripleEquationClosed : D.dualTripleEquation
  equivalenceConditionClosed : D.equivalenceCondition

def DualEquationReductionClosed (D : DualEquationReductionPackage) : Prop :=
  D.primalTripleEquation ∧ D.dualTripleEquation ∧ D.equivalenceCondition

theorem dual_equation_reduction_closed_from_evidence (D : DualEquationReductionPackage)
    (E : DualEquationReductionEvidence D) : DualEquationReductionClosed D := by
  exact And.intro E.primalTripleEquationClosed (And.intro E.dualTripleEquationClosed E.equivalenceConditionClosed)

end DualTripleIntegralSeriesEquationsCanonicalLaneLean
end HautevilleHouse