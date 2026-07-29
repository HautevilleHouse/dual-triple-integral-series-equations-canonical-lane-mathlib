import DualTripleIntegralSeriesEquationsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DualTripleIntegralSeriesEquationsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  DualTripleWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DualTripleIntegralSeriesEquationsCanonicalLaneLean
end HautevilleHouse