(declare-project
  :name "janet-redka"
  :author "Rok Fajfar <hi@rokf.dev>"
  :description "A Janet client library for Redka"
  :license "MIT"
  :version "0.0.1"
  :url "https://github.com/rokf/janet-redka"
  :repo "git+https://github.com/rokf/janet-redka"
  :dependencies [{:url "https://github.com/rokf/janet-resp" :tag "main"}])

(declare-source
  :prefix "redka"
  :source ["src/init.janet"])
