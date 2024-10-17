(import ../src :prefix "redka/")

(def client (redka/make-client))
(pp (redka/ping client))
(pp (redka/echo client 500))

(with [c (redka/make-client)]
  (pp (redka/sadd c :set1 1 2))
  (pp (redka/scard c :set1))
  (pp (redka/smembers c :set1)))

(with [c (redka/make-client)]
  (pp (redka/lpush c :list1 :a))
  (pp (redka/lpop c :list1)))
