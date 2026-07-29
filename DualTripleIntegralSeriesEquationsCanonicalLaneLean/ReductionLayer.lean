import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualTripleIntegralSeriesEquationsCanonicalLaneLean

structure ReductionMethodPackage {P : DualTripleIntegralSeriesEquationPackage}
    (E : DualTripleIntegralSeriesEquationEvidence P) where
  reductionOperator : Type u
  reductionSteps : List (String × Prop)
  auxiliaryRelations : Prop

def ReductionMethodClosed {P : DualTripleIntegralSeriesEquationPackage}
    {E : DualTripleIntegralSeriesEquationEvidence P}
    (R : ReductionMethodPackage E) : Prop :=
  (∀ (s : String × Prop), s.2) R.reductionSteps ∧
  R.auxiliaryRelations

theorem reduction_method_closed {P : DualTripleIntegralSeriesEquationPackage}
    {E : DualTripleIntegralSeriesEquationEvidence P}
    (R : ReductionMethodPackage E) (h : (∀ (s : String × Prop), s.2) R.reductionSteps)
    (haux : R.auxiliaryRelations) :
    ReductionMethodClosed R := by
  exact And.intro h haux

end DualTripleIntegralSeriesEquationsCanonicalLaneLean
end HautevilleHouse