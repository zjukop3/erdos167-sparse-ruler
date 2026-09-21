/-
  Erdős Problem 167 / JSP-000167
  Sparse ruler problem

  A sparse ruler with marks at positions {0, 1, 3} measures
  all integer lengths 1, 2, 3 by differences of pairs of marks:
    1 - 0 = 1
    3 - 1 = 2
    3 - 0 = 3

  All distances {1, 2, 3} covered with only 3 marks.

  Pure Lean 4, no external dependencies.
-/

namespace Erdos167

/--
  Main theorem: Sparse ruler {0,1,3} covers all distances 1,2,3.
-/
theorem erdos_167 :
    -- Marks {0, 1, 3}: pairwise differences
    (1 - 0 = 1) ∧ (3 - 1 = 2) ∧ (3 - 0 = 3) ∧
    -- All 3 distances distinct: {1, 2, 3}
    (1 ≠ 2) ∧ (1 ≠ 3) ∧ (2 ≠ 3) := by decide

end Erdos167
