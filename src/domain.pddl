    ;move up/down/left/right
    ;take-item
    ;drop-item
    ;implement grid

(define
    (domain delivery)
    (:requirements :equality :strips :typing :numeric-fluents :fluents :durative-actions)

    (:types carrier location item)
    

    (:predicates
        (item-at ?i - item ?x ?y - location) 
        (carrier-at ?c - carrier ?x ?y - location)
        ;(distance ?lx1 ?ly1 ?lx2 ?ly2 - location)
        (adjacent ?lx1 ?ly1 ?lx2 ?ly2 - location)
        (item-at-carrier ?i - item ?c - carrier)
    )

    (:functions
        (carrier-capacity ?c - carrier) ;(fuel-capacity ?c-carrier)  
        (fuel-used ?c - carrier) (fuel-level ?c - carrier)
        
        ;(fuel-required ?lx1 ?ly1 ?lx2 ?ly2 - location) (total-fuel-used)
        (item-weight ?i - item)
        (carrier-weight ?c - carrier)
        (carrier-speed ?c - carrier)
    )

    ; (:durative-action pick-item
    ;     :parameters (?c - carrier ?i - item ?lx ?ly - location)
    ;     :duration (= ?duration 3)
    ;     :condition (and 
    ;         (at start (item-at ?i ?lx ?ly))
    ;         (at start (carrier-at ?c ?lx ?ly))
    ;         (at start (> (- (carrier-capacity ?c) (carrier-weight ?c)) (item-weight ?i)))
    ;         (over all (and (carrier-at ?c ?lx ?ly)))
    ;         (at end (item-at-carrier ?i ?c))
    ;     )
    ;     :effect (and
    ;         (at end  (not(item-at ?i ?lx ?ly))) 
    ;         (at end ((item-at-carrier ?i ?c) (increase(carrier-weight ?c) (item-weight ?i))))
    ;         (decrease (carrier-speed ?c) (item-weight ?i))
    ;         )
    ;     )
    ; )
    
    (:durative-action move
        :parameters (?c - carrier ?lx1 ?ly1 ?lx2 ?ly2 - location)
        :duration 
            (= ?duration 1)
        :condition (and 
	            (at start (> (fuel-level ?c) 0))
                (at start (carrier-at ?c ?lx1 ?ly1))
                (at start (adjacent ?lx1 ?ly1 ?lx2 ?ly2))
                
                (over all (adjacent ?lx1 ?ly1 ?lx2 ?ly2))
                (over all (carrier-at ?c ?lx1 ?ly1))
                (at end (carrier-at ?lx2 ?ly2))

        )
        :effect (and 
            (at end (and (not(carrier-at ?c ?lx1 ?ly1)) (carrier-at ?c ?lx2 ?ly2) (decrease (fuel-level ?c) 1) (increase (fuel-used ?c) 1) 
            ))
        )
    )

    (:durative-action pick-item
        :parameters (?c - carrier ?i - item ?lx ?ly - location)
        :duration (= ?duration 3)
        :condition (and 
            (at start (item-at ?i ?lx ?ly))
            (at start (carrier-at ?c ?lx ?ly))
            (at start (> (- (carrier-capacity ?c) (carrier-weight ?c)) (item-weight ?i)))
            (over all (and (carrier-at ?c ?lx ?ly)))
            (at end (item-at-carrier ?i ?c))
        )
        :effect (and
            (at end  (not(item-at ?i ?lx ?ly))) 
            (at end (and(item-at-carrier ?i ?c) (increase (carrier-weight ?c) (item-weight ?i))
            ))
            (at end (decrease (carrier-speed ?c) (item-weight ?i)))
        )
    )

)