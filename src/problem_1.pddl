(define
    (problem a_problem)
    (:domain delivery)
    ;(:situation <situation_name>) ;deprecated
    (:objects c -carrier
        one two - location)
    (:init
        (adjacent one two) 
        (adjacent two one) 

    )
    (:goal (and
            (some-goal some-object)
        )
    )
)