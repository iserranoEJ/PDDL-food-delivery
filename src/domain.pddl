    ;move up/down/left/right
    ;take-item
    ;drop-item
    
    ;implement grid

(define
    (domain example)
    (:requirements :strips :typing :numeric-fluents :fluents )

    ;(:domain-variables ) ;deprecated

    (:types carrier location item - object)
    

    (:predicates ;todo: define predicates here
        (item-at ?i - item ?l - location) 
        (carrier-at ?c - carrier ?l - location) 
 
    )

  (:functions
        (carrier-capacity ?c - carrier) (fuel-capacity ?c-carrier)  
        (fuel-used ?c-carrier) (fuel-level ?c-carrier)
        (fuel-required ?l1 ?l2 - location) 

    )


    
    (:action 
        :parameters (?a)
        :precondition (and
            (some-fact ?a)
        )
        :effect (and
            (some-goal ?a)
        )
        ; :expansion ;deprecated
    )
)