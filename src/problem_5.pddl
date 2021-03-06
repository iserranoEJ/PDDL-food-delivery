(define
    (problem a_problem)
    (:domain delivery)

    (:objects 
        car1 car2 -car 
        motorbike1 motorbike2 -motorbike
        one two three four five six seven eight nine ten eleven twelve thirteen -location
        fourteen fifteen sixteen seventeen eighteen nineteen twenty twentyone -location
        twentytwo twentythree twentyfour twentyfive - location
        package1  package2 package3 package4 package5 - item)
    (:init
        
        ;scope of car1
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

        ;scope of car2
        (in-scope car2 one two)
        (in-scope car2 two one)
        (in-scope car2 one one)
        (in-scope car2 two three)
        (in-scope car2 three two)
        (in-scope car2 two two)
        (in-scope car2 three four)
        (in-scope car2 four three)
        (in-scope car2 three three)
        (in-scope car2 four five)
        (in-scope car2 five four)
        (in-scope car2 four four)
        (in-scope car2 five six)
        (in-scope car2 six five)
        (in-scope car2 five five)
        (in-scope car2 six seven)
        (in-scope car2 seven six)
        (in-scope car2 six six)
        (in-scope car2 seven eight)
        (in-scope car2 eight seven)
        (in-scope car2 seven seven)
        (in-scope car2 eight nine)
        (in-scope car2 nine eight)
        (in-scope car2 eight eight)
        (in-scope car2 nine ten)
        (in-scope car2 ten nine)
        (in-scope car2 nine nine)
        (in-scope car2 ten eleven)
        (in-scope car2 eleven ten)
        (in-scope car2 ten ten)
        (in-scope car2 eleven twelve)
        (in-scope car2 twelve eleven)
        (in-scope car2 eleven eleven)
        (in-scope car2 twelve thirteen)
        (in-scope car2 thirteen twelve)
        (in-scope car2 twelve twelve)
        (in-scope car2 thirteen fourteen)
        (in-scope car2 fourteen thirteen)
        (in-scope car2 thirteen thirteen)
        (in-scope car2 fourteen fifteen)
        (in-scope car2 fifteen fourteen)
        (in-scope car2 fourteen fourteen)
        (in-scope car2 fifteen sixteen)
        (in-scope car2 sixteen fifteen)
        (in-scope car2 fifteen fifteen)
        (in-scope car2 sixteen seventeen)
        (in-scope car2 seventeen sixteen)
        (in-scope car2 sixteen sixteen)
        (in-scope car2 seventeen eighteen)
        (in-scope car2 eighteen seventeen)
        (in-scope car2 seventeen seventeen)
        (in-scope car2 eighteen nineteen)
        (in-scope car2 nineteen eighteen)
        (in-scope car2 eighteen eighteen)
        (in-scope car2 nineteen twenty)
        (in-scope car2 twenty nineteen)
        (in-scope car2 nineteen nineteen)
        (in-scope car2 twenty twenty)
        
        ;scope of motorbike1
        (in-scope motorbike1 one two)
        (in-scope motorbike1 two one)
        (in-scope motorbike1 one one)
        (in-scope motorbike1 two three)
        (in-scope motorbike1 three two)
        (in-scope motorbike1 two two)
        (in-scope motorbike1 three four)
        (in-scope motorbike1 four three)
        (in-scope motorbike1 three three)
        (in-scope motorbike1 four five)
        (in-scope motorbike1 five four)
        (in-scope motorbike1 four four)
        (in-scope motorbike1 five six)
        (in-scope motorbike1 six five)
        (in-scope motorbike1 five five)
        (in-scope motorbike1 six seven)
        (in-scope motorbike1 seven six)
        (in-scope motorbike1 six six)
        (in-scope motorbike1 seven eight)
        (in-scope motorbike1 eight seven)
        (in-scope motorbike1 seven seven)
        (in-scope motorbike1 eight nine)
        (in-scope motorbike1 nine eight)
        (in-scope motorbike1 eight eight)
        (in-scope motorbike1 nine ten)
        (in-scope motorbike1 ten nine)
        (in-scope motorbike1 nine nine)
        (in-scope motorbike1 ten ten)

        ;Scope for motorbike2
        (in-scope motorbike2 ten eleven)
        (in-scope motorbike2 eleven ten)
        (in-scope motorbike2 ten ten)
        (in-scope motorbike2 eleven twelve)
        (in-scope motorbike2 twelve eleven)
        (in-scope motorbike2 eleven eleven)
        (in-scope motorbike2 twelve thirteen)
        (in-scope motorbike2 thirteen twelve)
        (in-scope motorbike2 twelve twelve)
        (in-scope motorbike2 thirteen fourteen)
        (in-scope motorbike2 fourteen thirteen)
        (in-scope motorbike2 thirteen thirteen)
        (in-scope motorbike2 fourteen fifteen)
        (in-scope motorbike2 fifteen fourteen)
        (in-scope motorbike2 fourteen fourteen)
        (in-scope motorbike2 fifteen sixteen)
        (in-scope motorbike2 sixteen fifteen)
        (in-scope motorbike2 fifteen fifteen)
        (in-scope motorbike2 sixteen seventeen)
        (in-scope motorbike2 seventeen sixteen)
        (in-scope motorbike2 sixteen sixteen)
        (in-scope motorbike2 seventeen eighteen)
        (in-scope motorbike2 eighteen seventeen)
        (in-scope motorbike2 seventeen seventeen)
        (in-scope motorbike2 eighteen nineteen)
        (in-scope motorbike2 nineteen eighteen)
        (in-scope motorbike2 eighteen eighteen)
        (in-scope motorbike2 nineteen twenty)
        (in-scope motorbike2 twenty nineteen)
        (in-scope motorbike2 nineteen nineteen)
        (in-scope motorbike2 twenty twenty)

        ;initial locations
        (carrier-at car1 one one)
        (carrier-at car2 twenty twenty)
        (carrier-at motorbike1 ten ten)
        (carrier-at motorbike2 fifteen fifteen)

        ;Items
        (= (item-weight package1) 5)
        (= (item-weight package2) 5)
        (= (item-weight package3) 5)
        (= (item-weight package4) 5)
        (= (item-weight package5) 5)
        (item-at package1 ten ten)
        (item-at package2 fifteen sixteen)
        (item-at package3 two two)
        (item-at package4 nineteen nineteen)
        (item-at package5 five six)
        
        ;Car1
        (= (item-pick-speed car1) 2)
        (= (item-drop-speed car1) 2)
        (= (fuel-level car1) 700)
        (= (carrier-capacity car1) 5)
        (= (carrier-speed car1) 50)
        (= (fuel-used car1) 0)
        (= (carrier-weight car1) 0)

        ;Car2
        (= (item-pick-speed car2) 2)
        (= (item-drop-speed car2) 2)
        (= (fuel-level car2) 500)
        (= (carrier-capacity car2) 10)
        (= (carrier-speed car2) 50)
        (= (fuel-used car2) 0)
        (= (carrier-weight car2) 0)

        ;Motorbike1
        (= (item-pick-speed motorbike1) 2)
        (= (item-drop-speed motorbike1)2)
        (= (fuel-level motorbike1) 500)
        (= (carrier-capacity motorbike1) 5)
        (= (carrier-speed motorbike1) 70)
        (= (fuel-used motorbike1) 0)
        (= (carrier-weight motorbike1) 0)

        ;Motorbike2
        (= (item-pick-speed motorbike2) 2)
        (= (item-drop-speed motorbike2)2)
        (= (fuel-level motorbike2) 500)
        (= (carrier-capacity motorbike2) 10)
        (= (carrier-speed motorbike2) 70)
        (= (fuel-used motorbike2) 0)
        (= (carrier-weight motorbike2) 0)

    )
    (:goal (and
            (item-at package1 one two)
            (item-at package2 twenty twenty)
            (item-at package3 sixteen seventeen)
            (item-at package4 twenty nineteen)
            (item-at package5 one one)
        )
    )
    (:metric minimize (total-fuel-used))
    (:metric minimize (distance-travelled))
)