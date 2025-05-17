(deftemplate animal
  (slot type))

(defrule check_animal
  ?a <- (animal (type ?t&:(or (eq ?t duck) (eq ?t turtle))))
  =>
  (printout t "This animal is a " ?t "." crlf))
