(deftemplate person
  (slot hair_color))

(defrule check_color
  ?p <- (person (hair_color ?c&~black&~brown))
  =>
  (printout t "The person's hair color is " ?c "." crlf))
