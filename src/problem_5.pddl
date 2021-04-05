; (define
;     (problem a_problem)
;     (:domain delivery)

;     (:objects 
;         car1 car2 car3 -car 
;         motorbike1 motorbike2 motorbike3 -motorbike
;         one two three four five six seven eight nine ten eleven twelve thirteen -location
;         fourteen fifteen sixteen seventeen eighteen nineteen twenty twentyone -location
;         twentytwo twentythree twentyfour twentyfive - location
;         package1  package2 package3 package4 package5 package6 package7 - item)
;     (:init
;         ;scope of car1
;         (in-scope car1 one two)
;         (in-scope car1 two one)
;         (in-scope car1 one one)
;         (in-scope car1 two three)
;         (in-scope car1 three two)
;         (in-scope car1 two two)
;         (in-scope car1 three four)
;         (in-scope car1 four three)
;         (in-scope car1 three three)
;         (in-scope car1 four five)
;         (in-scope car1 five four)
;         (in-scope car1 four four)
        
;         ;scope of car2
;         (in-scope car2 five six)
;         (in-scope car2 six five)
;         (in-scope car2 five five)
;         (in-scope car2 six seven)
;         (in-scope car2 seven six)
;         (in-scope car2 six six)
;         (in-scope car2 seven eight)
;         (in-scope car2 eight seven)
;         (in-scope car2 seven seven)
;         (in-scope car2 eight nine)
;         (in-scope car2 nine eight)
;         (in-scope car2 eight eight)
;         (in-scope car2 nine ten)
;         (in-scope car2 ten nine)
;         (in-scope car2 nine nine)

;         ;scope of motorbike1
;         (in-scope motorbike1 ten eleven)
;         (in-scope motorbike1 eleven ten)
;         (in-scope motorbike1 ten ten)
;         (in-scope motorbike1 eleven twelve)
;         (in-scope motorbike1 twelve eleven)
;         (in-scope motorbike1 eleven eleven)
;         (in-scope motorbike1 twelve thirteen)
;         (in-scope motorbike1 thirteen twelve)
;         (in-scope motorbike1 twelve twelve)
;         (in-scope motorbike1 thirteen fourteen)
;         (in-scope motorbike1 fourteen thirteen)
;         (in-scope motorbike1 thirteen thirteen)
;         (in-scope motorbike1 fourteen fifteen)
;         (in-scope motorbike1 fifteen fourteen)
;         (in-scope motorbike1 fourteen fourteen)

;         ;scope of motorbike2
;         (in-scope motorbike2 fifteen sixteen)
;         (in-scope motorbike2 sixteen fifteen)
;         (in-scope motorbike2 fifteen fifteen)
;         (in-scope motorbike2 sixteen seventeen)
;         (in-scope motorbike2 seventeen sixteen)
;         (in-scope motorbike2 sixteen sixteen)
;         (in-scope motorbike2 seventeen eighteen)
;         (in-scope motorbike2 eighteen seventeen)
;         (in-scope motorbike2 seventeen seventeen)
;         (in-scope motorbike2 eighteen nineteen)
;         (in-scope motorbike2 nineteen eighteen)
;         (in-scope motorbike2 eighteen eighteen)
;         (in-scope motorbike2 nineteen twenty)
;         (in-scope motorbike2 twenty nineteen)
;         (in-scope motorbike2 nineteen nineteen)
;         (in-scope motorbike2 twenty twenty)

;         ;scope of motorbike3
;         (in-scope motorbike3 fifteen sixteen)
;         (in-scope motorbike3 sixteen fifteen)
;         (in-scope motorbike3 fifteen fifteen)
;         (in-scope motorbike3 sixteen seventeen)
;         (in-scope motorbike3 seventeen sixteen)
;         (in-scope motorbike3 sixteen sixteen)
;         (in-scope motorbike3 seventeen eighteen)
;         (in-scope motorbike3 eighteen seventeen)
;         (in-scope motorbike3 seventeen seventeen)
;         (in-scope motorbike3 eighteen nineteen)
;         (in-scope motorbike3 nineteen eighteen)
;         (in-scope motorbike3 eighteen eighteen)
;         (in-scope motorbike3 nineteen twenty)
;         (in-scope motorbike3 twenty nineteen)
;         (in-scope motorbike3 nineteen nineteen)
;         (in-scope motorbike3 twenty twenty)

;         ;scope of car3
;         (in-scope car3 one two)
;         (in-scope car3 two one)
;         (in-scope car3 one one)
;         (in-scope car3 two three)
;         (in-scope car3 three two)
;         (in-scope car3 two two)
;         (in-scope car3 three four)
;         (in-scope car3 four three)
;         (in-scope car3 three three)
;         (in-scope car3 four five)
;         (in-scope car3 five four)
;         (in-scope car3 four four)
;         (in-scope car3 five six)
;         (in-scope car3 six five)
;         (in-scope car3 five five)
;         (in-scope car3 six seven)
;         (in-scope car3 seven six)
;         (in-scope car3 six six)
;         (in-scope car3 seven eight)
;         (in-scope car3 eight seven)
;         (in-scope car3 seven seven)
;         (in-scope car3 eight nine)
;         (in-scope car3 nine eight)
;         (in-scope car3 eight eight)
;         (in-scope car3 nine ten)
;         (in-scope car3 ten nine)
;         (in-scope car3 nine nine)
;         (in-scope car3 ten eleven)
;         (in-scope car3 eleven ten)
;         (in-scope car3 ten ten)
;         (in-scope car3 eleven twelve)
;         (in-scope car3 twelve eleven)
;         (in-scope car3 eleven eleven)
;         (in-scope car3 twelve thirteen)
;         (in-scope car3 thirteen twelve)
;         (in-scope car3 twelve twelve)
;         (in-scope car3 thirteen fourteen)
;         (in-scope car3 fourteen thirteen)
;         (in-scope car3 thirteen thirteen)
;         (in-scope car3 fourteen fifteen)
;         (in-scope car3 fifteen fourteen)
;         (in-scope car3 fourteen fourteen)
;         (in-scope car3 fifteen sixteen)
;         (in-scope car3 sixteen fifteen)
;         (in-scope car3 fifteen fifteen)
;         (in-scope car3 sixteen seventeen)
;         (in-scope car3 seventeen sixteen)
;         (in-scope car3 sixteen sixteen)
;         (in-scope car3 seventeen eighteen)
;         (in-scope car3 eighteen seventeen)
;         (in-scope car3 seventeen seventeen)
;         (in-scope car3 eighteen nineteen)
;         (in-scope car3 nineteen eighteen)
;         (in-scope car3 eighteen eighteen)
;         (in-scope car3 nineteen twenty)
;         (in-scope car3 twenty nineteen)
;         (in-scope car3 nineteen nineteen)
;         (in-scope car3 twenty twenty)
        
;         ;initial locations
;         (carrier-at car1 one one)
;         (carrier-at car2 five five)
;         (carrier-at motorbike1 ten ten)
;         (carrier-at motorbike2 fifteen fifteen)
;         (carrier-at motorbike3 nineteen twenty)
;         (carrier-at car3 one one)

;         ;Items
;         (= (item-weight package1) 2)
;         (= (item-weight package2) 2)
;         (= (item-weight package3) 2)
;         (= (item-weight package4) 2)
;         (= (item-weight package5) 2)
;         (= (item-weight package6) 2)
;         (= (item-weight package7) 2)
;         (item-at package1 three four)
;         (item-at package2 seven six)
;         (item-at package3 eleven twelve)
;         (item-at package4 fifteen fifteen)
;         (item-at package5 four five)
;         (item-at package6 twenty twenty)
;         (item-at package7 one one)
        
;         ;Car1
;         (= (item-pick-speed car1) 2)
;         (= (item-drop-speed car1) 2)
;         (= (fuel-level car1) 500)
;         (= (carrier-capacity car1) 15)
;         (= (carrier-speed car1) 50)
;         (= (fuel-used car1) 0)
;         (= (carrier-weight car1) 0)

;         ;Car2
;         (= (item-pick-speed car2) 2)
;         (= (item-drop-speed car2) 2)
;         (= (fuel-level car2) 500)
;         (= (carrier-capacity car2) 15)
;         (= (carrier-speed car2) 50)
;         (= (fuel-used car2) 0)
;         (= (carrier-weight car2) 0)

;         ;Car3
;         (= (item-pick-speed car3) 2)
;         (= (item-drop-speed car3) 2)
;         (= (fuel-level car3) 500)
;         (= (carrier-capacity car3) 15)
;         (= (carrier-speed car3) 50)
;         (= (fuel-used car3) 0)
;         (= (carrier-weight car3) 0)

;         ;Motorbike1
;         (= (item-pick-speed motorbike1) 2)
;         (= (item-drop-speed motorbike1)2)
;         (= (fuel-level motorbike1) 500)
;         (= (carrier-capacity motorbike1) 5)
;         (= (carrier-speed motorbike1) 70)
;         (= (fuel-used motorbike1) 0)
;         (= (carrier-weight motorbike1) 0)

;         ;Motorbike2
;         (= (item-pick-speed motorbike2) 2)
;         (= (item-drop-speed motorbike2)2)
;         (= (fuel-level motorbike2) 500)
;         (= (carrier-capacity motorbike2) 5)
;         (= (carrier-speed motorbike2) 70)
;         (= (fuel-used motorbike2) 0)
;         (= (carrier-weight motorbike2) 0)

;         ;Motorbike3
;         (= (item-pick-speed motorbike3) 2)
;         (= (item-drop-speed motorbike3)2)
;         (= (fuel-level motorbike3) 500)
;         (= (carrier-capacity motorbike3) 5)
;         (= (carrier-speed motorbike3) 70)
;         (= (fuel-used motorbike3) 0)
;         (= (carrier-weight motorbike3) 0)
;     )
;     (:goal (and

;             (item-at package1 four five)
;             (item-at package2 eight eight)
;             (item-at package3 fourteen fifteen)
;             (item-at package4 twenty nineteen)
;             (item-at package5 one one)
;             (item-at package6 fifteen sixteen)
;             (item-at package7 fifteen fifteen)
;         )
;     )
;     (:metric minimize (total-fuel-used))
;     ;(:metric minimize (distance-travelled))
; )