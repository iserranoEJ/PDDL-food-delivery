(define
    (domain example)
    (:requirements :strips :numeric-fluents )

    ;(:domain-variables ) ;deprecated

    (:types starship robot planet - object)
    
    (:predicates ;todo: define predicates here
        (robot-at ?x - robot ?y - planet)
        (starship-at ?s - starship ?p - planet)
        (in-ship ?r - robot ?s - starship)
        (has-capacity ?s - starship)
    )

    (:functions
        (fuel-level ?s - starship)(fuel-required ?p1 ?p2 - planet)
        (max-fuel-capacity ?s - starship)
        (max-robot-capacity ?s - starship)
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