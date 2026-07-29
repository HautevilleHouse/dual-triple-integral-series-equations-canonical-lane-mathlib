import DualTripleIntegralSeriesEquationsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DualTripleIntegralSeriesEquationsCanonicalLaneLean

structure DualTripleIntegralSeriesObject where
  seriesForm : Type u
  kernelFamily : Type v
  dualEqualityCondition : Prop
  tripleIntegralIdentity : Prop
  conclusion : dualEqualityCondition ∧ tripleIntegralIdentity

def DualTripleWitnessClosed (O : DualTripleIntegralSeriesObject) : Prop :=
  O.dualEqualityCondition ∧ O.tripleIntegralIdentity

end DualTripleIntegralSeriesEquationsCanonicalLaneLean
end HautevilleHouse