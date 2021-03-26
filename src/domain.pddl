(define
    (domain delivery)
    (:requirements :equality :strips :typing :numeric-fluents :fluents :durative-actions)

    (:types carrier location item)
    

    (:predicates
        (item-at ?i - item ?x ?y - location) 
        (carrier-at ?c - carrier ?x ?y - location)
        ;(distance ?lx1 ?ly1 ?lx2 ?ly2 - location)
        (adjacent ?coor1 ?coor2 - location)
        (item-at-carrier ?i - item ?c - carrier)
    )

  (:functions
        (carrier-capacity ?c -carrier) (fuel-capacity ?c -carrier)  
        (fuel-used ?c -carrier) (fuel-level ?c -carrier)
        
        (total-fuel-used)
        (item-weight ?i - item)
        (carrier-weight ?c -carrier)
        (carrier-speed ?c -carrier)
        
    )
    
    
    (:durative-action move
        :parameters (?c -carrier ?lx1 ?ly1 ?lx2 ?ly2 -location)
        :duration 
            (= ?duration (/(carrier-speed ?c) 100) )
        :condition (and 
	            (at start (> (fuel-level ?c) 0))
                (at start (carrier-at ?c ?lx1 ?ly1))
                (at start (adjacent ?lx1 ?lx2))
                (at start  (adjacent ?ly1 ?ly2))


        )
        :effect (and 
            (at end (and (not(carrier-at ?c ?lx1 ?ly1)) 
            (carrier-at ?c ?lx2 ?ly2)
            (decrease (fuel-level ?c) 1) (increase (fuel-used ?c) 1) 
            ))
        )
    )

    (:action pick-item
        :parameters  (?c - carrier ?i - item ?lx ?ly - location)
        :precondition (and (item-at ?i ?lx ?ly)
                        ;(> (- (carrier-capacity ?c) (carrier-weight ?c)) (item-weight ?i))
                        (carrier-at ?c ?lx ?ly) 
                        )
        :effect (and (not(item-at ?i ?lx ?ly))
                (item-at-carrier ?i ?c)
                ;(decrease (carrier-speed ?c) (item-weight ?i))
                ;(increase (carrier-weight ?c) (item-weight ?i))
                )
    )

    (:action drop-item
        :parameters  (?c - carrier ?i - item ?lx ?ly - location)
        :precondition (and (item-at-carrier ?i ?c)
                        (carrier-at ?c ?lx ?ly) 
                        )
        :effect (and (item-at ?i ?lx ?ly)
                (not(item-at-carrier ?i ?c))
                (increase (carrier-speed ?c) (item-weight ?i))
                (decrease (carrier-weight ?c) (item-weight ?i))
                )
    )

    ; (:durative-action pick-item
    ;     :parameters (?c - carrier ?i - item ?lx ?ly - location)
    ;     :duration (= ?duration 3)
    ;     :condition (and 
    ;         (at start (item-at ?i ?lx ?ly))
    ;         ;(at start (> (- (carrier-capacity ?c) (carrier-weight ?c)) (item-weight ?i)))
    ;         (over all (carrier-at ?c ?lx ?ly))
    ;     )
    ;     :effect (and
    ;         ;(at end  (not(item-at ?i ?lx ?ly))) 
    ;         (at end (and(item-at-carrier ?i ?c) 
    ;         (increase (carrier-weight ?c) (item-weight ?i))
    ;         ))
    ;         (at end (decrease (carrier-speed ?c) (item-weight ?i)))
    ;     )
    ; )

    ; (:durative-action drop-item
    ;     :parameters (?c - carrier ?i - item ?lx ?ly - location)
    ;     :duration (= ?duration 3)
    ;     :condition (and 
    ;         (at start (item-at-carrier ?i ?c))
    ;         (at start (carrier-at ?c ?lx ?ly))
    ;         (over all (and (carrier-at ?c ?lx ?ly)))
            
    ;     )
    ;     :effect (and
    ;         (at end (not(item-at-carrier ?i ?c))) 
    ;         (at end (and(item-at ?i ?lx ?ly) 
    ;         (decrease (carrier-weight ?c) (item-weight ?i))
    ;         ))
    ;         (at end (increase (carrier-speed ?c) (item-weight ?i)))
    ;     )
    ; )



)