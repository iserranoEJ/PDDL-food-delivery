(define
    (problem a_problem)
    (:domain delivery)

    (:objects car1 -car 
        motorbike1 -motorbike
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

        (adjacent motorbike1 six five)
        (adjacent motorbike1 five six)
        (adjacent motorbike1 five five)
        (adjacent motorbike1 six six)
        (adjacent motorbike1 four five)
        (adjacent motorbike1 five four) 
        (adjacent motorbike1 four four)
        (adjacent motorbike1 four three)
        (adjacent motorbike1 three four)
        (adjacent motorbike1 three three)

        
        (carrier-at car1 one one)
        (carrier-at motorbike1 six six)

        ;Items
        (= (item-weight package1) 2)
        (= (item-weight package2) 5)
        (item-at package1 three four)
        (item-at package2 four one)
        
        ;Car1
        (= (item-pick-speed car1) 2)
        (= (item-drop-speed car1) 2)
        (= (fuel-level car1) 16)
        (= (carrier-capacity car1) 15)
        (= (carrier-speed car1) 50)
        (= (fuel-used car1) 0)
        (= (carrier-weight car1) 0)

        ;Motorbike1
        (= (item-pick-speed motorbike1) 2)
        (= (item-drop-speed motorbike1)2)
        (= (fuel-level motorbike1) 8)
        (= (carrier-capacity motorbike1) 5)
        (= (carrier-speed motorbike1) 70)
        (= (fuel-used motorbike1) 0)
        (= (carrier-weight motorbike1) 0)
    )
    (:goal (and

            ;(carrier-at car1 three three)
            (item-at package1 three three)
            (item-at package2 one two)
        )
    )
    (:metric minimize (total-fuel-used))
)