import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualTripleIntegralSeriesEquationsCanonicalLaneLean

structure AsymptoticExpansionPackage where
  expansionType : Type u
  leadingOrderTerm : Prop
  remainderBound : Prop
  uniformConvergenceRegion : Prop

structure AsymptoticExpansionEvidence (A : AsymptoticExpansionPackage) where
  leadingOrderTermClosed : A.leadingOrderTerm
  remainderBoundClosed : A.remainderBound
  uniformConvergenceRegionClosed : A.uniformConvergenceRegion

def AsymptoticExpansionClosed (A : AsymptoticExpansionPackage) : Prop :=
  A.leadingOrderTerm ∧ A.remainderBound ∧ A.uniformConvergenceRegion

theorem asymptotic_expansion_closed_from_evidence (A : AsymptoticExpansionPackage)
    (E : AsymptoticExpansionEvidence A) : AsymptoticExpansionClosed A := by
  exact And.intro E.leadingOrderTermClosed (And.intro E.remainderBoundClosed E.uniformConvergenceRegionClosed)

end DualTripleIntegralSeriesEquationsCanonicalLaneLean
end HautevilleHouse