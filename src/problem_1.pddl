(define
    (problem a_problem)
    (:domain delivery)

    (:objects car1 -car 
        motorbike1 -motorbike
        one two three four five six seven eight nine ten eleven twelve thirteen -location
        fourteen fifteen sixteen seventeen eighteen nineteen twenty twentyone -location
        twentytwo twentythree twentyfour twentyfive - location
        package1  package2 - item)
    (:init
        (adjacent car1 one two)
        (adjacent car1 two one)
        (adjacent car1 one one)
        (adjacent car1 two three)
        (adjacent car1 three two)
        (adjacent car1 two two)
        (adjacent car1 three four)
        (adjacent car1 four three)
        (adjacent car1 three three)
        (adjacent car1 four five)
        (adjacent car1 five four)
        (adjacent car1 four four)
        (adjacent car1 five six)
        (adjacent car1 six five)
        (adjacent car1 five five)
        (adjacent car1 six seven)
        (adjacent car1 seven six)
        (adjacent car1 six six)
        (adjacent car1 seven eight)
        (adjacent car1 eight seven)
        (adjacent car1 seven seven)
        (adjacent car1 eight nine)
        (adjacent car1 nine eight)
        (adjacent car1 eight eight)
        (adjacent car1 nine ten)
        (adjacent car1 ten nine)
        (adjacent car1 nine nine)
        (adjacent car1 ten eleven)
        (adjacent car1 eleven ten)
        (adjacent car1 ten ten)
        (adjacent car1 eleven twelve)
        (adjacent car1 twelve eleven)
        (adjacent car1 eleven eleven)
        (adjacent car1 twelve thirteen)
        (adjacent car1 thirteen twelve)
        (adjacent car1 twelve twelve)
        (adjacent car1 thirteen fourteen)
        (adjacent car1 fourteen thirteen)
        (adjacent car1 thirteen thirteen)
        (adjacent car1 fourteen fifteen)
        (adjacent car1 fifteen fourteen)
        (adjacent car1 fourteen fourteen)
        (adjacent car1 fifteen sixteen)
        (adjacent car1 sixteen fifteen)
        (adjacent car1 fifteen fifteen)
        (adjacent car1 sixteen seventeen)
        (adjacent car1 seventeen sixteen)
        (adjacent car1 sixteen sixteen)
        (adjacent car1 seventeen eighteen)
        (adjacent car1 eighteen seventeen)
        (adjacent car1 seventeen seventeen)
        (adjacent car1 eighteen nineteen)
        (adjacent car1 nineteen eighteen)
        (adjacent car1 eighteen eighteen)
        (adjacent car1 nineteen twenty)
        (adjacent car1 twenty nineteen)
        (adjacent car1 nineteen nineteen)
        (adjacent car1 twenty twenty)

        
        ;Actual scope of car object

        ; 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0
        ; 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0
        ; 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0
        ; 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0
        ; 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0
        ; 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0
        ; 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0
        ; 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0
        ; 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0
        ; 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0
        ; 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0
        ; 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0
        ; 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0
        ; 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0
        ; 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0
        ; 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0
        ; 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0
        ; 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0
        ; 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0
        ; 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0
        ; 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
        ; 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
        ; 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
        ; 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
        ; 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0

        (adjacent motorbike1 twentyfour twentyfive)
        (adjacent motorbike1 twentyfive twentyfour)
        (adjacent motorbike1 twentyfour twentyfour)
        (adjacent motorbike1 twentythree twentyfour)
        (adjacent motorbike1 twentyfour twentythree)
        (adjacent motorbike1 twentythree twentythree)
        (adjacent motorbike1 twentytwo twentythree)
        (adjacent motorbike1 twentythree twentytwo)
        (adjacent motorbike1 twentytwo twentytwo)
        (adjacent motorbike1 twentyone twentytwo)
        (adjacent motorbike1 twentytwo twentyone)
        (adjacent motorbike1 twentyone twentyone)
        (adjacent motorbike1 twenty twentyone)
        (adjacent motorbike1 twentyone twenty)
        (adjacent motorbike1 twenty twenty)
        (adjacent motorbike1 nineteen twenty)
        (adjacent motorbike1 twenty nineteen)
        (adjacent motorbike1 nineteen nineteen)
        (adjacent motorbike1 eighteen nineteen)
        (adjacent motorbike1 nineteen eighteen)
        (adjacent motorbike1 eighteen eighteen)
        (adjacent motorbike1 seventeen eighteen)
        (adjacent motorbike1 eighteen seventeen)
        (adjacent motorbike1 seventeen seventeen)
        (adjacent motorbike1 sixteen seventeen)
        (adjacent motorbike1 seventeen sixteen)
        (adjacent motorbike1 sixteen sixteen)
        (adjacent motorbike1 fifteen sixteen)
        (adjacent motorbike1 sixteen fifteen)
        (adjacent motorbike1 fifteen fifteen)
        (adjacent motorbike1 fourteen fifteen)
        (adjacent motorbike1 fifteen fourteen)
        (adjacent motorbike1 fourteen fourteen)
        (adjacent motorbike1 thirteen fourteen)
        (adjacent motorbike1 fourteen thirteen)
        (adjacent motorbike1 thirteen thirteen)
        (adjacent motorbike1 twelve thirteen)
        (adjacent motorbike1 thirteen twelve)
        (adjacent motorbike1 twelve twelve)
        (adjacent motorbike1 eleven twelve)
        (adjacent motorbike1 twelve eleven)
        (adjacent motorbike1 eleven eleven)
        (adjacent motorbike1 ten eleven)
        (adjacent motorbike1 eleven ten)
        (adjacent motorbike1 ten ten)
        (adjacent motorbike1 nine ten)
        (adjacent motorbike1 ten nine)
        (adjacent motorbike1 nine nine)
        (adjacent motorbike1 eight nine)
        (adjacent motorbike1 nine eight)
        (adjacent motorbike1 eight eight)
        (adjacent motorbike1 seven eight)
        (adjacent motorbike1 eight seven)
        (adjacent motorbike1 seven seven)
        (adjacent motorbike1 six seven)
        (adjacent motorbike1 seven six)
        (adjacent motorbike1 six six)



        
        ;Actual scope of motorbike object
        ; 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
        ; 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
        ; 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
        ; 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
        ; 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
        ; 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
        ; 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
        ; 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
        ; 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
        ; 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
        ; 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
        ; 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
        ; 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
        ; 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
        ; 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
        ; 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
        ; 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
        ; 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
        ; 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
        ; 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
        ; 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
        ; 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
        ; 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
        ; 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
        ; 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
        
        (carrier-at car1 one one)
        (carrier-at motorbike1 six six)

        ;Items
        (= (item-weight package1) 2)
        (= (item-weight package2) 5)
        (item-at package1 two two)
        (item-at package2 seven seven)
        
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
            (item-at package2 eight nine)
        )
    )
    (:metric minimize (total-fuel-used))
)