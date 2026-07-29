import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualTripleIntegralSeriesEquationsCanonicalLaneLean

structure TripleIntegralTransformPackage where
  transformType : Type u
  integralRepresentation : Prop
  inversionFormula : Prop
  boundednessProperty : Prop

structure TripleIntegralTransformEvidence (T : TripleIntegralTransformPackage) where
  integralRepresentationClosed : T.integralRepresentation
  inversionFormulaClosed : T.inversionFormula
  boundednessPropertyClosed : T.boundednessProperty

def TripleIntegralTransformClosed (T : TripleIntegralTransformPackage) : Prop :=
  T.integralRepresentation ∧ T.inversionFormula ∧ T.boundednessProperty

theorem triple_integral_transform_closed_from_evidence (T : TripleIntegralTransformPackage)
    (E : TripleIntegralTransformEvidence T) : TripleIntegralTransformClosed T := by
  exact And.intro E.integralRepresentationClosed (And.intro E.inversionFormulaClosed E.boundednessPropertyClosed)

end DualTripleIntegralSeriesEquationsCanonicalLaneLean
end HautevilleHouse