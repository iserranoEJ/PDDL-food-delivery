  
(define
    (problem ant-colony)
    (:domain delivery)

    (:objects 
        ant1 - worker ant2 - worker ant3 - worker ; ant4 - worker ant5 - worker ant6 - worker ant7 - worker ant8 - worker ant9 - soldier ant10 - queen
        one two three four five six seven eight nine ten -location
        food1  food2 food3 -item); food4 food5 food6 food7 -item); food8 food9 food10 food11 food12 food13 food14 food15 food16 food17 food18 food19 food20 - item)

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
        (in-scope ant1 ten ten)



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
        (in-scope ant2 ten ten)
        
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
        (in-scope ant3 ten ten)

        
      
        ;initial locations
        (carrier-at ant1 six six)
        (carrier-at ant2 five five)
        (carrier-at ant3 four four)


        ;Items
        (= (item-weight food1) 1)
        (= (item-weight food2) 2)
        (= (item-weight food3) 5)


        (item-at food1 five five)
        (item-at food2 six five)
        (item-at food3 seven five)

        

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
        

        
    )

    (:goal (and

            (item-at food1 one one)
            (item-at food2 one one)
            (item-at food3 one one)

        )
    )
    (:metric minimize (total-fuel-used))
    (:metric minimize (distance-travelled))
)