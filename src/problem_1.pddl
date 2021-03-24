(define
    (problem a_problem)
    (:domain delivery)
    ;(:situation <situation_name>) ;deprecated
    (:objects vehicle1 - carrier
        one two three - location
        package1 - item)
    (:init
        (adjacent one two) 
        (adjacent two one) 
        (adjacent one three) 
        (adjacent two three)
        (adjacent three two) 
        (adjacent three one)  
        (item-at package1 one)
        (carrier-at vehicle1 two)
    )
    (:goal (and
            (item-at-carrier package1 vehicle1) 
            (carrier-at three)
        )
    )
)