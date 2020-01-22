(ns fizz.core
  (:gen-class))

(defn fizzBuzz [start finish]
  (apply str (interpose "\n" (map (fn [n]
   (cond
    (zero? (mod n (* 3 5))) "FizzBuzz"
    (zero? (mod n 5)) "Buzz"
    (zero? (mod n 3)) "Fizz" 
    :else n))
  (range start finish)))))

(defn -main
  [& args]
  (println (fizzBuzz 1 101)))
