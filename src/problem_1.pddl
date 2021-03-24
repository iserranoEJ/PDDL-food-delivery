(define
    (problem a_problem)
    (:domain delivery)

    (:objects vehicle1 - carrier
        one two three - location
        package1 - item)
    (:init
        (adjacent one two)
        (adjacent two one)
        (adjacent two three)
        (adjacent three two)

        (item-at package1 one two)
        (carrier-at vehicle1 one three)
        (= (fuel-level vehicle1) 1000)
        (= (item-weight package1) 1)
        (= (carrier-capacity vehicle1) 15)
        (= (carrier-speed vehicle1) 100)
        (= (fuel-used vehicle1) 0)
        (= (carrier-weight vehicle1) 0)
    )
    (:goal (and
            (item-at package1 three three) 
            (carrier-at vehicle1 three three)
        )
    )
)