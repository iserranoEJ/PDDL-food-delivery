(define
    (problem a_problem)
    (:domain delivery)

    (:objects car1 -car 
        one two three four five six - location
        package1  package2 - item)
    (:init
        (adjacent car1 one two)
        (adjacent car1 one one)
        (adjacent car1 two one)
        (adjacent car1 two two)
        (adjacent car1 two three)
        (adjacent car1 three three)
        (adjacent car1 three two)
        (adjacent car1 three four)
        (adjacent car1 four three)
        
        (carrier-at car1 one one)

        ;Items
        (= (item-weight package1) 2)
        (= (item-weight package2) 5)
        (item-at package1 three four)
        ;(item-at package2 four one)
        
        ;Car1
        (= (item-pick-speed car1) 2)
        (= (item-drop-speed car1) 2)
        (= (fuel-level car1) 16)
        (= (carrier-capacity car1) 15)
        (= (carrier-speed car1) 50)
        (= (fuel-used car1) 0)
        (= (carrier-weight car1) 0)
    )
    (:goal (and

            ;(carrier-at car1 three three)
            (item-at package1 three three)
            ;(item-at package2 six two)
        )
    )
    (:metric minimize (total-fuel-used))
)