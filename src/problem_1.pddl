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
        (in-scope car1 one two)
        (in-scope car1 two one)
        (in-scope car1 one one)
        (in-scope car1 two three)
        (in-scope car1 three two)
        (in-scope car1 two two)
        (in-scope car1 three four)
        (in-scope car1 four three)
        (in-scope car1 three three)
        (in-scope car1 four five)
        (in-scope car1 five four)
        (in-scope car1 four four)
        (in-scope car1 five six)
        (in-scope car1 six five)
        (in-scope car1 five five)
        (in-scope car1 six seven)
        (in-scope car1 seven six)
        (in-scope car1 six six)
        (in-scope car1 seven eight)
        (in-scope car1 eight seven)
        (in-scope car1 seven seven)
        (in-scope car1 eight nine)
        (in-scope car1 nine eight)
        (in-scope car1 eight eight)
        (in-scope car1 nine ten)
        (in-scope car1 ten nine)
        (in-scope car1 nine nine)
        (in-scope car1 ten eleven)
        (in-scope car1 eleven ten)
        (in-scope car1 ten ten)
        (in-scope car1 eleven twelve)
        (in-scope car1 twelve eleven)
        (in-scope car1 eleven eleven)
        (in-scope car1 twelve thirteen)
        (in-scope car1 thirteen twelve)
        (in-scope car1 twelve twelve)
        (in-scope car1 thirteen fourteen)
        (in-scope car1 fourteen thirteen)
        (in-scope car1 thirteen thirteen)
        (in-scope car1 fourteen fifteen)
        (in-scope car1 fifteen fourteen)
        (in-scope car1 fourteen fourteen)
        (in-scope car1 fifteen sixteen)
        (in-scope car1 sixteen fifteen)
        (in-scope car1 fifteen fifteen)
        (in-scope car1 sixteen seventeen)
        (in-scope car1 seventeen sixteen)
        (in-scope car1 sixteen sixteen)
        (in-scope car1 seventeen eighteen)
        (in-scope car1 eighteen seventeen)
        (in-scope car1 seventeen seventeen)
        (in-scope car1 eighteen nineteen)
        (in-scope car1 nineteen eighteen)
        (in-scope car1 eighteen eighteen)
        (in-scope car1 nineteen twenty)
        (in-scope car1 twenty nineteen)
        (in-scope car1 nineteen nineteen)
        (in-scope car1 twenty twenty)

        
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

        (in-scope motorbike1 twentyfour twentyfive)
        (in-scope motorbike1 twentyfive twentyfour)
        (in-scope motorbike1 twentyfour twentyfour)
        (in-scope motorbike1 twentythree twentyfour)
        (in-scope motorbike1 twentyfour twentythree)
        (in-scope motorbike1 twentythree twentythree)
        (in-scope motorbike1 twentytwo twentythree)
        (in-scope motorbike1 twentythree twentytwo)
        (in-scope motorbike1 twentytwo twentytwo)
        (in-scope motorbike1 twentyone twentytwo)
        (in-scope motorbike1 twentytwo twentyone)
        (in-scope motorbike1 twentyone twentyone)
        (in-scope motorbike1 twenty twentyone)
        (in-scope motorbike1 twentyone twenty)
        (in-scope motorbike1 twenty twenty)
        (in-scope motorbike1 nineteen twenty)
        (in-scope motorbike1 twenty nineteen)
        (in-scope motorbike1 nineteen nineteen)
        (in-scope motorbike1 eighteen nineteen)
        (in-scope motorbike1 nineteen eighteen)
        (in-scope motorbike1 eighteen eighteen)
        (in-scope motorbike1 seventeen eighteen)
        (in-scope motorbike1 eighteen seventeen)
        (in-scope motorbike1 seventeen seventeen)
        (in-scope motorbike1 sixteen seventeen)
        (in-scope motorbike1 seventeen sixteen)
        (in-scope motorbike1 sixteen sixteen)
        (in-scope motorbike1 fifteen sixteen)
        (in-scope motorbike1 sixteen fifteen)
        (in-scope motorbike1 fifteen fifteen)
        (in-scope motorbike1 fourteen fifteen)
        (in-scope motorbike1 fifteen fourteen)
        (in-scope motorbike1 fourteen fourteen)
        (in-scope motorbike1 thirteen fourteen)
        (in-scope motorbike1 fourteen thirteen)
        (in-scope motorbike1 thirteen thirteen)
        (in-scope motorbike1 twelve thirteen)
        (in-scope motorbike1 thirteen twelve)
        (in-scope motorbike1 twelve twelve)
        (in-scope motorbike1 eleven twelve)
        (in-scope motorbike1 twelve eleven)
        (in-scope motorbike1 eleven eleven)
        (in-scope motorbike1 ten eleven)
        (in-scope motorbike1 eleven ten)
        (in-scope motorbike1 ten ten)
        (in-scope motorbike1 nine ten)
        (in-scope motorbike1 ten nine)
        (in-scope motorbike1 nine nine)
        (in-scope motorbike1 eight nine)
        (in-scope motorbike1 nine eight)
        (in-scope motorbike1 eight eight)
        (in-scope motorbike1 seven eight)
        (in-scope motorbike1 eight seven)
        (in-scope motorbike1 seven seven)
        (in-scope motorbike1 six seven)
        (in-scope motorbike1 seven six)
        (in-scope motorbike1 six six)



        
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
        (= (item-weight package2) 2)
        (item-at package1 two two)
        (item-at package2 fourteen thirteen)
        
        ;Car1
        (= (item-pick-speed car1) 2)
        (= (item-drop-speed car1) 2)
        ;(= (item-handover-speed car1)2)
        ;(= (item-handover-speed car1)3)
        (= (fuel-level car1) 200)
        (= (carrier-capacity car1) 15)
        (= (carrier-speed car1) 50)
        (= (fuel-used car1) 0)
        (= (carrier-weight car1) 0)

        ;Motorbike1
        (= (item-pick-speed motorbike1) 2)
        (= (item-drop-speed motorbike1)2)
        ;(= (item-handover-speed motorbike1)2)
        (= (fuel-level motorbike1) 100)
        (= (carrier-capacity motorbike1)5)
        (= (carrier-speed motorbike1)70)
        (= (fuel-used motorbike1)0)
        (= (carrier-weight motorbike1)0)
    )
    (:goal  (and              
                (item-at package1 four four)
                (item-at package2 twentyfour twentyfive)
            )
    )
    (:metric minimize (total-fuel-used))
    (:metric minimize (distance-travelled))

    ;within keyword for time cosntraint
    ;preference
    ;hold-during 20 30 (at lorry1 lorrycarpark)
)