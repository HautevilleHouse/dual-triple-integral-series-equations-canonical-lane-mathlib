import canonicalLaneMathlib.AdmissibleClass

/-! Dual Integral Equations Package -/

namespace HautevilleHouse
namespace DualTripleIntegralSeriesEquationsCanonicalLaneLean

structure DualIntegralEquationsPackage where
  equationSystem : Prop
  existenceOfSolution : Prop
  uniquenessOfSolution : Prop
  representationFormula : Prop

structure DualIntegralEquationsEvidence (D : DualIntegralEquationsPackage) where
  equationSystemClosed : D.equationSystem
  existenceOfSolutionClosed : D.existenceOfSolution
  uniquenessOfSolutionClosed : D.uniquenessOfSolution
  representationFormulaClosed : D.representationFormula

def DualIntegralEquationsClosed (D : DualIntegralEquationsPackage) : Prop :=
  D.equationSystem ∧ D.existenceOfSolution ∧ D.uniquenessOfSolution ∧ D.representationFormula

theorem dual_integral_equations_closed_from_evidence (D : DualIntegralEquationsPackage)
    (E : DualIntegralEquationsEvidence D) : DualIntegralEquationsClosed D :=
  And.intro E.equationSystemClosed (And.intro E.existenceOfSolutionClosed
    (And.intro E.uniquenessOfSolutionClosed E.representationFormulaClosed))

end DualTripleIntegralSeriesEquationsCanonicalLaneLean
end HautevilleHouse