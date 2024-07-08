Require Import Coq.Logic.Classical.
(*集合と∈記号の定義、代用として<<を用いる。*)
Definition toSet (M : Type) := M -> Prop.
Variable M : Type.
Definition myset := toSet M.
Definition belong (A : myset) (x : M) : Prop 
    := A x.
Notation "x << A" := (belong A x) (at level 11).

(*今後、mySet M を集合として扱う。*)
(*空集合の定義*)
Definition emptyset : myset := fun _ => False.

(*部分集合の定義*)
Definition isASubset (A B : myset) := forall x : M, x << A -> x << B.
Notation "A <* B" := (isASubset A B) (at level 11).
(*空集合は任意の集合の部分集合である。*)
Theorem empIsSub : forall A : myset, emptyset <* A.
Proof.
intros.
intros x false.
elimtype False.
assumption.
Qed.

(*外苑性の公理を記述*)

(*空集合は唯一つ存在する。*)
Theorem emptyIsUnique : forall x : myset, forall y : M, ~(y << x) -> x = emptyset.
intros x y h1.




