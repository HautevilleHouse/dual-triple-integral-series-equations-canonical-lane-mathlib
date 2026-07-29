import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualTripleIntegralSeriesEquationsCanonicalLaneLean

def ConstrainedDualTripleClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_dual_triple_endgame (A : AdmissibleClass) :
    ConstrainedDualTripleClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DualTripleIntegralSeriesEquationsCanonicalLaneLean
end HautevilleHouse