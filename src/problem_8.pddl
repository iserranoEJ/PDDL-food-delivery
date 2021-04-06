  
(define
    (problem ant-colony2)
    (:domain delivery)

    (:objects 
        ant1 - worker ant2 - soldier ant3 - worker ant4 - queen 
        one two three four five six seven eight nine ten -location
        food1  food2 food3 -item)


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
        (in-scope ant4 ten ten)

        
      
        ;initial locations
        (carrier-at ant1 six six)
        (carrier-at ant2 five five)
        (carrier-at ant3 four four)
        (carrier-at ant4 three four)



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
        (= (carrier-capacity ant2) 10)
        (= (carrier-speed ant2) 50)
        (= (fuel-used ant2) 0)
        (= (carrier-weight ant2) 0)
        
        ;ant3
        (= (item-pick-speed ant3) 1)
        (= (item-drop-speed ant3) 4)
        (= (fuel-level ant3) 500)
        (= (carrier-capacity ant3) 20)
        (= (carrier-speed ant3) 70)
        (= (fuel-used ant3) 0)
        (= (carrier-weight ant3) 0)
        
        ;ant4
        (= (item-pick-speed ant4) 0)
        (= (item-drop-speed ant4) 0)
        (= (fuel-level ant4) 0)
        (= (carrier-capacity ant4) 0)
        (= (carrier-speed ant4) 0)
        (= (fuel-used ant4) 0)
        (= (carrier-weight ant4) 0)
        

        
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