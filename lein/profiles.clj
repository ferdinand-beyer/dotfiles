{:user {:plugins      [[lein-pprint "1.3.2"]]
        :dependencies [[org.clojure/tools.namespace "1.2.0"]
                       [djblue/portal "0.20.1"]]
        :source-paths [#=(eval (str (System/getProperty "user.home") "/.local/dev/clojure/src"))]}}
