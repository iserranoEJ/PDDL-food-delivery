(define
    (problem ant-colony)
    (:domain delivery)

    (:objects 
        ant1 - worker ant2 - worker ant3 - worker ant4 - worker ant5 - worker ant6 - worker ant7 - worker ant8 - worker ant9 - soldier ant10 - queen
        one two three four five six seven eight nine ten eleven twelve thirteen -location
        fourteen fifteen sixteen seventeen eighteen nineteen twenty -location
        food1  food2 food3 food4 food5 food6 food7 food8 food9 food10 food11 food12 food13 food14 food15 food16 food17 food18 food19 food20 - item)

    ; Add types of ants : Soldiers, Queen (Does nothing)
    (:init

        ;scope of ant1
        (in-scope ant1 one two)
        (in-scope ant1 two one)
        (in-scope ant1 one one)
        (in-scope ant1 two three)
        (in-scope ant1 three two)
        (in-scope ant1 two two)
        (in-scope ant1 three four)
        (in-scope ant1 four three)
        (in-scope ant1 three three)
        (in-scope ant1 four five)
        (in-scope ant1 five four)
        (in-scope ant1 four four)
        (in-scope ant1 five six)
        (in-scope ant1 six five)
        (in-scope ant1 five five)
        (in-scope ant1 six seven)
        (in-scope ant1 seven six)
        (in-scope ant1 six six)
        (in-scope ant1 seven eight)
        (in-scope ant1 eight seven)
        (in-scope ant1 seven seven)
        (in-scope ant1 eight nine)
        (in-scope ant1 nine eight)
        (in-scope ant1 eight eight)
        (in-scope ant1 nine ten)
        (in-scope ant1 ten nine)
        (in-scope ant1 nine nine)
        (in-scope ant1 ten eleven)
        (in-scope ant1 eleven ten)
        (in-scope ant1 ten ten)
        (in-scope ant1 eleven twelve)
        (in-scope ant1 twelve eleven)
        (in-scope ant1 eleven eleven)
        (in-scope ant1 twelve thirteen)
        (in-scope ant1 thirteen twelve)
        (in-scope ant1 twelve twelve)
        (in-scope ant1 thirteen fourteen)
        (in-scope ant1 fourteen thirteen)
        (in-scope ant1 thirteen thirteen)
        (in-scope ant1 fourteen fifteen)
        (in-scope ant1 fifteen fourteen)
        (in-scope ant1 fourteen fourteen)
        (in-scope ant1 fifteen sixteen)
        (in-scope ant1 sixteen fifteen)
        (in-scope ant1 fifteen fifteen)
        (in-scope ant1 sixteen seventeen)
        (in-scope ant1 seventeen sixteen)
        (in-scope ant1 sixteen sixteen)
        (in-scope ant1 seventeen eighteen)
        (in-scope ant1 eighteen seventeen)
        (in-scope ant1 seventeen seventeen)
        (in-scope ant1 eighteen nineteen)
        (in-scope ant1 nineteen eighteen)
        (in-scope ant1 eighteen eighteen)
        (in-scope ant1 nineteen twenty)
        (in-scope ant1 twenty nineteen)
        (in-scope ant1 nineteen nineteen)
        (in-scope ant1 twenty twenty)


        ;scope of ant2
        (in-scope ant2 one two)
        (in-scope ant2 two one)
        (in-scope ant2 one one)
        (in-scope ant2 two three)
        (in-scope ant2 three two)
        (in-scope ant2 two two)
        (in-scope ant2 three four)
        (in-scope ant2 four three)
        (in-scope ant2 three three)
        (in-scope ant2 four five)
        (in-scope ant2 five four)
        (in-scope ant2 four four)
        (in-scope ant2 five six)
        (in-scope ant2 six five)
        (in-scope ant2 five five)
        (in-scope ant2 six seven)
        (in-scope ant2 seven six)
        (in-scope ant2 six six)
        (in-scope ant2 seven eight)
        (in-scope ant2 eight seven)
        (in-scope ant2 seven seven)
        (in-scope ant2 eight nine)
        (in-scope ant2 nine eight)
        (in-scope ant2 eight eight)
        (in-scope ant2 nine ten)
        (in-scope ant2 ten nine)
        (in-scope ant2 nine nine)
        (in-scope ant2 ten eleven)
        (in-scope ant2 eleven ten)
        (in-scope ant2 ten ten)
        (in-scope ant2 eleven twelve)
        (in-scope ant2 twelve eleven)
        (in-scope ant2 eleven eleven)
        (in-scope ant2 twelve thirteen)
        (in-scope ant2 thirteen twelve)
        (in-scope ant2 twelve twelve)
        (in-scope ant2 thirteen fourteen)
        (in-scope ant2 fourteen thirteen)
        (in-scope ant2 thirteen thirteen)
        (in-scope ant2 fourteen fifteen)
        (in-scope ant2 fifteen fourteen)
        (in-scope ant2 fourteen fourteen)
        (in-scope ant2 fifteen sixteen)
        (in-scope ant2 sixteen fifteen)
        (in-scope ant2 fifteen fifteen)
        (in-scope ant2 sixteen seventeen)
        (in-scope ant2 seventeen sixteen)
        (in-scope ant2 sixteen sixteen)
        (in-scope ant2 seventeen eighteen)
        (in-scope ant2 eighteen seventeen)
        (in-scope ant2 seventeen seventeen)
        (in-scope ant2 eighteen nineteen)
        (in-scope ant2 nineteen eighteen)
        (in-scope ant2 eighteen eighteen)
        (in-scope ant2 nineteen twenty)
        (in-scope ant2 twenty nineteen)
        (in-scope ant2 nineteen nineteen)
        (in-scope ant2 twenty twenty)
        
        ;scope of ant3
        (in-scope ant3 one two)
        (in-scope ant3 two one)
        (in-scope ant3 one one)
        (in-scope ant3 two three)
        (in-scope ant3 three two)
        (in-scope ant3 two two)
        (in-scope ant3 three four)
        (in-scope ant3 four three)
        (in-scope ant3 three three)
        (in-scope ant3 four five)
        (in-scope ant3 five four)
        (in-scope ant3 four four)
        (in-scope ant3 five six)
        (in-scope ant3 six five)
        (in-scope ant3 five five)
        (in-scope ant3 six seven)
        (in-scope ant3 seven six)
        (in-scope ant3 six six)
        (in-scope ant3 seven eight)
        (in-scope ant3 eight seven)
        (in-scope ant3 seven seven)
        (in-scope ant3 eight nine)
        (in-scope ant3 nine eight)
        (in-scope ant3 eight eight)
        (in-scope ant3 nine ten)
        (in-scope ant3 ten nine)
        (in-scope ant3 nine nine)
        (in-scope ant3 ten eleven)
        (in-scope ant3 eleven ten)
        (in-scope ant3 ten ten)
        (in-scope ant3 eleven twelve)
        (in-scope ant3 twelve eleven)
        (in-scope ant3 eleven eleven)
        (in-scope ant3 twelve thirteen)
        (in-scope ant3 thirteen twelve)
        (in-scope ant3 twelve twelve)
        (in-scope ant3 thirteen fourteen)
        (in-scope ant3 fourteen thirteen)
        (in-scope ant3 thirteen thirteen)
        (in-scope ant3 fourteen fifteen)
        (in-scope ant3 fifteen fourteen)
        (in-scope ant3 fourteen fourteen)
        (in-scope ant3 fifteen sixteen)
        (in-scope ant3 sixteen fifteen)
        (in-scope ant3 fifteen fifteen)
        (in-scope ant3 sixteen seventeen)
        (in-scope ant3 seventeen sixteen)
        (in-scope ant3 sixteen sixteen)
        (in-scope ant3 seventeen eighteen)
        (in-scope ant3 eighteen seventeen)
        (in-scope ant3 seventeen seventeen)
        (in-scope ant3 eighteen nineteen)
        (in-scope ant3 nineteen eighteen)
        (in-scope ant3 eighteen eighteen)
        (in-scope ant3 nineteen twenty)
        (in-scope ant3 twenty nineteen)
        (in-scope ant3 nineteen nineteen)
        (in-scope ant3 twenty twenty)
        
        ;scope of ant4
        (in-scope ant4 one two)
        (in-scope ant4 two one)
        (in-scope ant4 one one)
        (in-scope ant4 two three)
        (in-scope ant4 three two)
        (in-scope ant4 two two)
        (in-scope ant4 three four)
        (in-scope ant4 four three)
        (in-scope ant4 three three)
        (in-scope ant4 four five)
        (in-scope ant4 five four)
        (in-scope ant4 four four)
        (in-scope ant4 five six)
        (in-scope ant4 six five)
        (in-scope ant4 five five)
        (in-scope ant4 six seven)
        (in-scope ant4 seven six)
        (in-scope ant4 six six)
        (in-scope ant4 seven eight)
        (in-scope ant4 eight seven)
        (in-scope ant4 seven seven)
        (in-scope ant4 eight nine)
        (in-scope ant4 nine eight)
        (in-scope ant4 eight eight)
        (in-scope ant4 nine ten)
        (in-scope ant4 ten nine)
        (in-scope ant4 nine nine)
        (in-scope ant4 ten eleven)
        (in-scope ant4 eleven ten)
        (in-scope ant4 ten ten)
        (in-scope ant4 eleven twelve)
        (in-scope ant4 twelve eleven)
        (in-scope ant4 eleven eleven)
        (in-scope ant4 twelve thirteen)
        (in-scope ant4 thirteen twelve)
        (in-scope ant4 twelve twelve)
        (in-scope ant4 thirteen fourteen)
        (in-scope ant4 fourteen thirteen)
        (in-scope ant4 thirteen thirteen)
        (in-scope ant4 fourteen fifteen)
        (in-scope ant4 fifteen fourteen)
        (in-scope ant4 fourteen fourteen)
        (in-scope ant4 fifteen sixteen)
        (in-scope ant4 sixteen fifteen)
        (in-scope ant4 fifteen fifteen)
        (in-scope ant4 sixteen seventeen)
        (in-scope ant4 seventeen sixteen)
        (in-scope ant4 sixteen sixteen)
        (in-scope ant4 seventeen eighteen)
        (in-scope ant4 eighteen seventeen)
        (in-scope ant4 seventeen seventeen)
        (in-scope ant4 eighteen nineteen)
        (in-scope ant4 nineteen eighteen)
        (in-scope ant4 eighteen eighteen)
        (in-scope ant4 nineteen twenty)
        (in-scope ant4 twenty nineteen)
        (in-scope ant4 nineteen nineteen)
        (in-scope ant4 twenty twenty)
        
        ;scope of ant5
        (in-scope ant5 one two)
        (in-scope ant5 two one)
        (in-scope ant5 one one)
        (in-scope ant5 two three)
        (in-scope ant5 three two)
        (in-scope ant5 two two)
        (in-scope ant5 three four)
        (in-scope ant5 four three)
        (in-scope ant5 three three)
        (in-scope ant5 four five)
        (in-scope ant5 five four)
        (in-scope ant5 four four)
        (in-scope ant5 five six)
        (in-scope ant5 six five)
        (in-scope ant5 five five)
        (in-scope ant5 six seven)
        (in-scope ant5 seven six)
        (in-scope ant5 six six)
        (in-scope ant5 seven eight)
        (in-scope ant5 eight seven)
        (in-scope ant5 seven seven)
        (in-scope ant5 eight nine)
        (in-scope ant5 nine eight)
        (in-scope ant5 eight eight)
        (in-scope ant5 nine ten)
        (in-scope ant5 ten nine)
        (in-scope ant5 nine nine)
        (in-scope ant5 ten eleven)
        (in-scope ant5 eleven ten)
        (in-scope ant5 ten ten)
        (in-scope ant5 eleven twelve)
        (in-scope ant5 twelve eleven)
        (in-scope ant5 eleven eleven)
        (in-scope ant5 twelve thirteen)
        (in-scope ant5 thirteen twelve)
        (in-scope ant5 twelve twelve)
        (in-scope ant5 thirteen fourteen)
        (in-scope ant5 fourteen thirteen)
        (in-scope ant5 thirteen thirteen)
        (in-scope ant5 fourteen fifteen)
        (in-scope ant5 fifteen fourteen)
        (in-scope ant5 fourteen fourteen)
        (in-scope ant5 fifteen sixteen)
        (in-scope ant5 sixteen fifteen)
        (in-scope ant5 fifteen fifteen)
        (in-scope ant5 sixteen seventeen)
        (in-scope ant5 seventeen sixteen)
        (in-scope ant5 sixteen sixteen)
        (in-scope ant5 seventeen eighteen)
        (in-scope ant5 eighteen seventeen)
        (in-scope ant5 seventeen seventeen)
        (in-scope ant5 eighteen nineteen)
        (in-scope ant5 nineteen eighteen)
        (in-scope ant5 eighteen eighteen)
        (in-scope ant5 nineteen twenty)
        (in-scope ant5 twenty nineteen)
        (in-scope ant5 nineteen nineteen)
        (in-scope ant5 twenty twenty)
        
        ;scope of ant6
        (in-scope ant6 one two)
        (in-scope ant6 two one)
        (in-scope ant6 one one)
        (in-scope ant6 two three)
        (in-scope ant6 three two)
        (in-scope ant6 two two)
        (in-scope ant6 three four)
        (in-scope ant6 four three)
        (in-scope ant6 three three)
        (in-scope ant6 four five)
        (in-scope ant6 five four)
        (in-scope ant6 four four)
        (in-scope ant6 five six)
        (in-scope ant6 six five)
        (in-scope ant6 five five)
        (in-scope ant6 six seven)
        (in-scope ant6 seven six)
        (in-scope ant6 six six)
        (in-scope ant6 seven eight)
        (in-scope ant6 eight seven)
        (in-scope ant6 seven seven)
        (in-scope ant6 eight nine)
        (in-scope ant6 nine eight)
        (in-scope ant6 eight eight)
        (in-scope ant6 nine ten)
        (in-scope ant6 ten nine)
        (in-scope ant6 nine nine)
        (in-scope ant6 ten eleven)
        (in-scope ant6 eleven ten)
        (in-scope ant6 ten ten)
        (in-scope ant6 eleven twelve)
        (in-scope ant6 twelve eleven)
        (in-scope ant6 eleven eleven)
        (in-scope ant6 twelve thirteen)
        (in-scope ant6 thirteen twelve)
        (in-scope ant6 twelve twelve)
        (in-scope ant6 thirteen fourteen)
        (in-scope ant6 fourteen thirteen)
        (in-scope ant6 thirteen thirteen)
        (in-scope ant6 fourteen fifteen)
        (in-scope ant6 fifteen fourteen)
        (in-scope ant6 fourteen fourteen)
        (in-scope ant6 fifteen sixteen)
        (in-scope ant6 sixteen fifteen)
        (in-scope ant6 fifteen fifteen)
        (in-scope ant6 sixteen seventeen)
        (in-scope ant6 seventeen sixteen)
        (in-scope ant6 sixteen sixteen)
        (in-scope ant6 seventeen eighteen)
        (in-scope ant6 eighteen seventeen)
        (in-scope ant6 seventeen seventeen)
        (in-scope ant6 eighteen nineteen)
        (in-scope ant6 nineteen eighteen)
        (in-scope ant6 eighteen eighteen)
        (in-scope ant6 nineteen twenty)
        (in-scope ant6 twenty nineteen)
        (in-scope ant6 nineteen nineteen)
        (in-scope ant6 twenty twenty)
        
        ;scope of ant7
        (in-scope ant7 one two)
        (in-scope ant7 two one)
        (in-scope ant7 one one)
        (in-scope ant7 two three)
        (in-scope ant7 three two)
        (in-scope ant7 two two)
        (in-scope ant7 three four)
        (in-scope ant7 four three)
        (in-scope ant7 three three)
        (in-scope ant7 four five)
        (in-scope ant7 five four)
        (in-scope ant7 four four)
        (in-scope ant7 five six)
        (in-scope ant7 six five)
        (in-scope ant7 five five)
        (in-scope ant7 six seven)
        (in-scope ant7 seven six)
        (in-scope ant7 six six)
        (in-scope ant7 seven eight)
        (in-scope ant7 eight seven)
        (in-scope ant7 seven seven)
        (in-scope ant7 eight nine)
        (in-scope ant7 nine eight)
        (in-scope ant7 eight eight)
        (in-scope ant7 nine ten)
        (in-scope ant7 ten nine)
        (in-scope ant7 nine nine)
        (in-scope ant7 ten eleven)
        (in-scope ant7 eleven ten)
        (in-scope ant7 ten ten)
        (in-scope ant7 eleven twelve)
        (in-scope ant7 twelve eleven)
        (in-scope ant7 eleven eleven)
        (in-scope ant7 twelve thirteen)
        (in-scope ant7 thirteen twelve)
        (in-scope ant7 twelve twelve)
        (in-scope ant7 thirteen fourteen)
        (in-scope ant7 fourteen thirteen)
        (in-scope ant7 thirteen thirteen)
        (in-scope ant7 fourteen fifteen)
        (in-scope ant7 fifteen fourteen)
        (in-scope ant7 fourteen fourteen)
        (in-scope ant7 fifteen sixteen)
        (in-scope ant7 sixteen fifteen)
        (in-scope ant7 fifteen fifteen)
        (in-scope ant7 sixteen seventeen)
        (in-scope ant7 seventeen sixteen)
        (in-scope ant7 sixteen sixteen)
        (in-scope ant7 seventeen eighteen)
        (in-scope ant7 eighteen seventeen)
        (in-scope ant7 seventeen seventeen)
        (in-scope ant7 eighteen nineteen)
        (in-scope ant7 nineteen eighteen)
        (in-scope ant7 eighteen eighteen)
        (in-scope ant7 nineteen twenty)
        (in-scope ant7 twenty nineteen)
        (in-scope ant7 nineteen nineteen)
        (in-scope ant7 twenty twenty)
        
        ;scope of ant8
        (in-scope ant8 one two)
        (in-scope ant8 two one)
        (in-scope ant8 one one)
        (in-scope ant8 two three)
        (in-scope ant8 three two)
        (in-scope ant8 two two)
        (in-scope ant8 three four)
        (in-scope ant8 four three)
        (in-scope ant8 three three)
        (in-scope ant8 four five)
        (in-scope ant8 five four)
        (in-scope ant8 four four)
        (in-scope ant8 five six)
        (in-scope ant8 six five)
        (in-scope ant8 five five)
        (in-scope ant8 six seven)
        (in-scope ant8 seven six)
        (in-scope ant8 six six)
        (in-scope ant8 seven eight)
        (in-scope ant8 eight seven)
        (in-scope ant8 seven seven)
        (in-scope ant8 eight nine)
        (in-scope ant8 nine eight)
        (in-scope ant8 eight eight)
        (in-scope ant8 nine ten)
        (in-scope ant8 ten nine)
        (in-scope ant8 nine nine)
        (in-scope ant8 ten eleven)
        (in-scope ant8 eleven ten)
        (in-scope ant8 ten ten)
        (in-scope ant8 eleven twelve)
        (in-scope ant8 twelve eleven)
        (in-scope ant8 eleven eleven)
        (in-scope ant8 twelve thirteen)
        (in-scope ant8 thirteen twelve)
        (in-scope ant8 twelve twelve)
        (in-scope ant8 thirteen fourteen)
        (in-scope ant8 fourteen thirteen)
        (in-scope ant8 thirteen thirteen)
        (in-scope ant8 fourteen fifteen)
        (in-scope ant8 fifteen fourteen)
        (in-scope ant8 fourteen fourteen)
        (in-scope ant8 fifteen sixteen)
        (in-scope ant8 sixteen fifteen)
        (in-scope ant8 fifteen fifteen)
        (in-scope ant8 sixteen seventeen)
        (in-scope ant8 seventeen sixteen)
        (in-scope ant8 sixteen sixteen)
        (in-scope ant8 seventeen eighteen)
        (in-scope ant8 eighteen seventeen)
        (in-scope ant8 seventeen seventeen)
        (in-scope ant8 eighteen nineteen)
        (in-scope ant8 nineteen eighteen)
        (in-scope ant8 eighteen eighteen)
        (in-scope ant8 nineteen twenty)
        (in-scope ant8 twenty nineteen)
        (in-scope ant8 nineteen nineteen)
        (in-scope ant8 twenty twenty)
        
        ;scope of ant9
        (in-scope ant9 one two)
        (in-scope ant9 two one)
        (in-scope ant9 one one)
        (in-scope ant9 two three)
        (in-scope ant9 three two)
        (in-scope ant9 two two)
        (in-scope ant9 three four)
        (in-scope ant9 four three)
        (in-scope ant9 three three)
        (in-scope ant9 four five)
        (in-scope ant9 five four)
        (in-scope ant9 four four)
        (in-scope ant9 five six)
        (in-scope ant9 six five)
        (in-scope ant9 five five)
        (in-scope ant9 six seven)
        (in-scope ant9 seven six)
        (in-scope ant9 six six)
        (in-scope ant9 seven eight)
        (in-scope ant9 eight seven)
        (in-scope ant9 seven seven)
        (in-scope ant9 eight nine)
        (in-scope ant9 nine eight)
        (in-scope ant9 eight eight)
        (in-scope ant9 nine ten)
        (in-scope ant9 ten nine)
        (in-scope ant9 nine nine)
        (in-scope ant9 ten eleven)
        (in-scope ant9 eleven ten)
        (in-scope ant9 ten ten)
        (in-scope ant9 eleven twelve)
        (in-scope ant9 twelve eleven)
        (in-scope ant9 eleven eleven)
        (in-scope ant9 twelve thirteen)
        (in-scope ant9 thirteen twelve)
        (in-scope ant9 twelve twelve)
        (in-scope ant9 thirteen fourteen)
        (in-scope ant9 fourteen thirteen)
        (in-scope ant9 thirteen thirteen)
        (in-scope ant9 fourteen fifteen)
        (in-scope ant9 fifteen fourteen)
        (in-scope ant9 fourteen fourteen)
        (in-scope ant9 fifteen sixteen)
        (in-scope ant9 sixteen fifteen)
        (in-scope ant9 fifteen fifteen)
        (in-scope ant9 sixteen seventeen)
        (in-scope ant9 seventeen sixteen)
        (in-scope ant9 sixteen sixteen)
        (in-scope ant9 seventeen eighteen)
        (in-scope ant9 eighteen seventeen)
        (in-scope ant9 seventeen seventeen)
        (in-scope ant9 eighteen nineteen)
        (in-scope ant9 nineteen eighteen)
        (in-scope ant9 eighteen eighteen)
        (in-scope ant9 nineteen twenty)
        (in-scope ant9 twenty nineteen)
        (in-scope ant9 nineteen nineteen)
        (in-scope ant9 twenty twenty)  
        
        ;scope of ant10
        (in-scope ant10 one two)
        (in-scope ant10 two one)
        (in-scope ant10 one one)
        (in-scope ant10 two three)
        (in-scope ant10 three two)
        (in-scope ant10 two two)
        (in-scope ant10 three four)
        (in-scope ant10 four three)
        (in-scope ant10 three three)
        (in-scope ant10 four five)
        (in-scope ant10 five four)
        (in-scope ant10 four four)
        (in-scope ant10 five six)
        (in-scope ant10 six five)
        (in-scope ant10 five five)
        (in-scope ant10 six seven)
        (in-scope ant10 seven six)
        (in-scope ant10 six six)
        (in-scope ant10 seven eight)
        (in-scope ant10 eight seven)
        (in-scope ant10 seven seven)
        (in-scope ant10 eight nine)
        (in-scope ant10 nine eight)
        (in-scope ant10 eight eight)
        (in-scope ant10 nine ten)
        (in-scope ant10 ten nine)
        (in-scope ant10 nine nine)
        (in-scope ant10 ten eleven)
        (in-scope ant10 eleven ten)
        (in-scope ant10 ten ten)
        (in-scope ant10 eleven twelve)
        (in-scope ant10 twelve eleven)
        (in-scope ant10 eleven eleven)
        (in-scope ant10 twelve thirteen)
        (in-scope ant10 thirteen twelve)
        (in-scope ant10 twelve twelve)
        (in-scope ant10 thirteen fourteen)
        (in-scope ant10 fourteen thirteen)
        (in-scope ant10 thirteen thirteen)
        (in-scope ant10 fourteen fifteen)
        (in-scope ant10 fifteen fourteen)
        (in-scope ant10 fourteen fourteen)
        (in-scope ant10 fifteen sixteen)
        (in-scope ant10 sixteen fifteen)
        (in-scope ant10 fifteen fifteen)
        (in-scope ant10 sixteen seventeen)
        (in-scope ant10 seventeen sixteen)
        (in-scope ant10 sixteen sixteen)
        (in-scope ant10 seventeen eighteen)
        (in-scope ant10 eighteen seventeen)
        (in-scope ant10 seventeen seventeen)
        (in-scope ant10 eighteen nineteen)
        (in-scope ant10 nineteen eighteen)
        (in-scope ant10 eighteen eighteen)
        (in-scope ant10 nineteen twenty)
        (in-scope ant10 twenty nineteen)
        (in-scope ant10 nineteen nineteen)
        (in-scope ant10 twenty twenty)
        
        ;initial locations
        (carrier-at ant1 one one)
        (carrier-at ant2 four one)
        (carrier-at ant3 six one)
        (carrier-at ant4 eight one)
        (carrier-at ant5 ten one)
        (carrier-at ant6 one two)
        (carrier-at ant7 one four)
        (carrier-at ant8 one six)
        (carrier-at ant9 one eight)
        (carrier-at ant10 one ten)


        

        ;Items
        (= (item-weight food1) 1)
        (= (item-weight food2) 2)
        (= (item-weight food3) 5)
        (= (item-weight food4) 3)
        (= (item-weight food5) 8)
        (= (item-weight food6) 6)
        (= (item-weight food7) 4)
        
        (= (item-weight food8) 10)
        (= (item-weight food9) 7)
        (= (item-weight food10) 5)
        (= (item-weight food11) 3)
        (= (item-weight food12) 3)
        (= (item-weight food13) 2)
        (= (item-weight food14) 2)

        (= (item-weight food15) 1)
        (= (item-weight food16) 10)
        (= (item-weight food17) 8)
        (= (item-weight food18) 9)
        (= (item-weight food19) 10)
        (= (item-weight food20) 2)


        (item-at food1 ten ten)
        (item-at food2 ten eleven)
        (item-at food3 ten twelve)
        (item-at food4 ten fourteen)
        (item-at food5 ten thirteen)
        (item-at food6 ten fifteen)
        (item-at food7 ten sixteen)

        (item-at food8 twelve ten)
        (item-at food9 twelve eleven)
        (item-at food10 twelve twelve)
        (item-at food11 twelve thirteen)
        (item-at food12 twelve fourteen)
        (item-at food13 twelve fifteen)
        (item-at food14 twelve sixteen)

        (item-at food15 fourteen ten)
        (item-at food16 fourteen eleven)
        (item-at food17 fourteen twelve)
        (item-at food18 fourteen thirteen)
        (item-at food19 fourteen fourteen)
        (item-at food20 fourteen fifteen)
        

        ;ant1
        (= (item-pick-speed ant1) 2)
        (= (item-drop-speed ant1) 1)
        (= (fuel-level ant1) 500)
        (= (carrier-capacity ant1) 7)
        (= (carrier-speed ant1) 50)
        (= (fuel-used ant1) 0)
        (= (carrier-weight ant1) 0)

        ;ant2
        (= (item-pick-speed ant2) 3)
        (= (item-drop-speed ant2) 2)
        (= (fuel-level ant2) 500)
        (= (carrier-capacity ant2) 15)
        (= (carrier-speed ant2) 50)
        (= (fuel-used ant2) 0)
        (= (carrier-weight ant2) 0)
        
        ;ant3
        (= (item-pick-speed ant3) 1)
        (= (item-drop-speed ant3) 4)
        (= (fuel-level ant3) 500)
        (= (carrier-capacity ant3) 15)
        (= (carrier-speed ant3) 50)
        (= (fuel-used ant3) 0)
        (= (carrier-weight ant3) 0)
        
        ;ant4
        (= (item-pick-speed ant4) 2)
        (= (item-drop-speed ant4) 1)
        (= (fuel-level ant4) 500)
        (= (carrier-capacity ant4) 10)
        (= (carrier-speed ant4) 50)
        (= (fuel-used ant4) 0)
        (= (carrier-weight ant4) 0)

        ;ant5
        (= (item-pick-speed ant5) 3)
        (= (item-drop-speed ant5) 3)
        (= (fuel-level ant5) 500)
        (= (carrier-capacity ant5) 9)
        (= (carrier-speed ant5) 50)
        (= (fuel-used ant5) 0)
        (= (carrier-weight ant5) 0)
        
        ;ant6
        (= (item-pick-speed ant6) 2)
        (= (item-drop-speed ant6) 1)
        (= (fuel-level ant6) 500)
        (= (carrier-capacity ant6) 8)
        (= (carrier-speed ant6) 50)
        (= (fuel-used ant6) 0)
        (= (carrier-weight ant6) 0)
        
        ;ant7
        (= (item-pick-speed ant7) 3)
        (= (item-drop-speed ant7) 2)
        (= (fuel-level ant7) 500)
        (= (carrier-capacity ant7) 6)
        (= (carrier-speed ant7) 50)
        (= (fuel-used ant7) 0)
        (= (carrier-weight ant7) 0)
        
        ;ant8
        (= (item-pick-speed ant8) 2)
        (= (item-drop-speed ant8) 2)
        (= (fuel-level ant8) 500)
        (= (carrier-capacity ant8) 10)
        (= (carrier-speed ant8) 50)
        (= (fuel-used ant8) 0)
        (= (carrier-weight ant8) 0)
        
        ;ant9 soldier
        (= (item-pick-speed ant9) 1)
        (= (item-drop-speed ant9) 1)
        (= (fuel-level ant9) 500)
        (= (carrier-capacity ant9) 20)
        (= (carrier-speed ant9) 70)
        (= (fuel-used ant9) 0)
        (= (carrier-weight ant9) 0)
        
        ;ant10 queen
        (= (item-pick-speed ant10) 10)
        (= (item-drop-speed ant10) 10)
        (= (fuel-level ant10) 0)
        (= (carrier-capacity ant10) 0)
        (= (carrier-speed ant10) 0)
        (= (fuel-used ant10) 0)
        (= (carrier-weight ant10) 0)
        
    )

    (:goal (and

            (item-at food1 one one)
            (item-at food2 one one)
            (item-at food3 one one)
            (item-at food4 one one)
            (item-at food5 one one)
            (item-at food6 one one)
            (item-at food7 one one)
            (item-at food8 one one)
            (item-at food9 one one)
            (item-at food10 one one)
            (item-at food11 one one)
            (item-at food12 one one)
            (item-at food13 one one)
            (item-at food14 one one)
            (item-at food15 one one)
            (item-at food16 one one)
            (item-at food17 one one)
            (item-at food18 one one)
            (item-at food19 one one)
            (item-at food20 one one)

        )
    )
    (:metric minimize (total-fuel-used))
    (:metric minimize (distance-travelled))
)