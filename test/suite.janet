(use judge)

(import ../src :prefix "redka/")

(test-macro (redka/make-command example "This is an example")
            (def example "This is an example" (fn [client & args] (:send client (map string [(quote example) (splice args)])))))
