(define
    (problem a_problem)
    (:domain delivery)

    (:objects car1 -car 
        motorbike1 -motorbike
        one two three four five six - location
        package1 - item)
    (:init
        (adjacent one two)
        (adjacent one one)
        (adjacent two one)
        (adjacent two two)
        (adjacent two three)
        (adjacent three three)
        (adjacent three two)

        (adjacent2 six five)
        (adjacent2 five six)
        (adjacent2 five five)
        (adjacent2 six six)
        (adjacent2 four five)
        (adjacent2 five four)
        (adjacent2 four four)
        (adjacent2 four three)
        (adjacent2 three four)
        (adjacent2 three three)

        (item-at package1 three four)
        (carrier-at car1 one one)
        (carrier-at motorbike1 six six)

        ;Items
        (= (item-weight package1) 2)
        
        ;Car1
        (= (item-pick-speed car1) 2)
        (= (item-drop-speed car1) 2)
        (= (fuel-level car1) 16)
        (= (carrier-capacity car1) 15)
        (= (carrier-speed car1) 50)
        (= (fuel-used car1) 0)
        (= (carrier-weight car1) 0)

        ;Motorbike1
        (= (item-pick-speed motorbike1) 1)
        (= (item-drop-speed motorbike1) 1)
        (= (fuel-level motorbike1) 8)
        (= (carrier-capacity motorbike1) 5)
        (= (carrier-speed motorbike1) 70)
        (= (fuel-used motorbike1) 0)
        (= (carrier-weight motorbike1) 0)
    )
    (:goal (and

            ;(carrier-at car1 three three)
            (item-at package1 four three)
        )
    )
    (:metric minimize (total-fuel-used))
)