(define
    (problem a_problem)
    (:domain delivery)

    (:objects vehicle1 - carrier
        one two three - location
        package1 - item)
    (:init
        (adjacent one two)
        (adjacent one one)
        (adjacent two one)
        (adjacent two two)
        (adjacent two three)
        (adjacent three three)
        (adjacent three two)

        (item-at package1 one two)
        (carrier-at vehicle1 one one);
        (= (carrier-size vehicle1) 1)
        (= (item-pick-speed vehicle1) 2);
        (= (item-drop-speed vehicle1) 2);
        (= (fuel-level vehicle1) 10);
        (= (item-weight package1) 1)
        (= (carrier-capacity vehicle1) 15);
        (= (carrier-speed vehicle1) 50);
        (= (fuel-used vehicle1) 0)
        (= (carrier-weight vehicle1) 0)
    )
    (:goal (and

            ;(carrier-at vehicle1 three three)
            (item-at package1 three three)
        )
    )
    (:metric minimize (total-fuel-used))
)