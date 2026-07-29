import DualTripleIntegralSeriesEquationsCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace DualTripleIntegralSeriesEquationsCanonicalLaneLean

structure AdmissibleClass where
  object : DualTripleIntegralSeriesObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  DualTripleWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DualTripleIntegralSeriesEquationsCanonicalLaneLean
end HautevilleHouse