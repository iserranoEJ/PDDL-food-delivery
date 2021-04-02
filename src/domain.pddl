(define
    (domain delivery)
    (:requirements :equality :strips :typing :numeric-fluents :fluents :durative-actions :preferences)

    (:types 
    carrier location item -object
    car motorbike -carrier)
    
    (:predicates
        (item-at ?i - item ?x ?y - location) 
        (carrier-at ?c - carrier ?x ?y - location)
        (in-scope ?c -carrier ?coor1 ?coor2 - location)
        (item-at-carrier ?i - item ?c - carrier)
    )

    (:functions
        (carrier-capacity ?c -carrier) 
        (fuel-used ?c -carrier) 
        (fuel-level ?c -carrier)
        (total-fuel-used)
        (item-weight ?i - item)
        (carrier-weight ?c -carrier)
        (carrier-speed ?c -carrier)
        (item-pick-speed ?c -carrier)
        (item-drop-speed ?c -carrier)
        (distance-travelled)       
    )
        
    (:durative-action move
        :parameters (?c -carrier ?lx1 ?ly1 ?lx2 ?ly2 -location)
        :duration 
            (= ?duration (/(carrier-speed ?c) 50) )
        :condition (and 
	                    (at start (> (fuel-level ?c) 0))
                        (at start (carrier-at ?c ?lx1 ?ly1))
                        (at start (in-scope ?c ?lx1 ?lx2))
                        (at start (in-scope ?c ?ly1 ?ly2))
                    )
        :effect (and 
                    (at end 
                        (and (not(carrier-at ?c ?lx1 ?ly1)) 
                        (carrier-at ?c ?lx2 ?ly2)
                        (decrease (fuel-level ?c) 1) (increase (fuel-used ?c) 1)
                        (increase (total-fuel-used) 1)
                        (increase (distance-travelled) 1))
                    )   
                )
    )
    
    (:durative-action pick-item
        :parameters (?c - carrier ?i - item ?lx ?ly - location)
        :duration (= ?duration (item-pick-speed ?c))
        :condition (and 
                        (at start (> (- (carrier-capacity ?c)
                        (carrier-weight ?c)) (item-weight ?i)))
                        (over all (item-at ?i ?lx ?ly))
                        (over all (carrier-at ?c ?lx ?ly))
                    )
        :effect (and
            (at end (and 
                        (not(item-at ?i ?lx ?ly)) 
                        (item-at-carrier ?i ?c) 
                        (increase (carrier-weight ?c) (item-weight ?i))
                        (decrease (carrier-speed ?c) (item-weight ?i))
                        (carrier-at ?c ?lx ?ly)
                    )
            )
        )
    )

    (:durative-action drop-item
        :parameters (?c - carrier ?i - item ?lx ?ly - location)
        :duration (= ?duration (item-drop-speed ?c))
        :condition (and 
                        (over all  (item-at-carrier ?i ?c))
                        (over all(carrier-at ?c ?lx ?ly))
                        (over all (and (carrier-at ?c ?lx ?ly)))
            
                    )
        :effect (and
            (at end (and 
                        (item-at ?i ?lx ?ly) 
                        (not(item-at-carrier ?i ?c)) 
                        (decrease (carrier-weight ?c) (item-weight ?i))
                        (increase (carrier-speed ?c) (item-weight ?i))
                        (carrier-at ?c ?lx ?ly)
                    )
            )
        )
    )
)