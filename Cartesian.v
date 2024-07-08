
Definition Relation (A B : Set) : Type := A -> B -> Prop.
Definition Cartesian (A B : Set) : Type := forall f : A -> B,forall b : B, exists! a : A, f a = b.
Definition Function (A B : Set) (R : Relation A B) := forall a : A, exists! b : B, R a b.
Definition Pair (A B : Set) := A -> B.