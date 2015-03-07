# encoding: utf-8

Product.delete_all
Product.create!(title: 'CoffeeScript',
                description:
                    %{<p>
        CoffeeScript is JavaScript done right. It provides all of JavaScript's
	functionality wrapped in a cleaner, more succinct syntax. In the first
	book on this exciting new language, CoffeeScript guru Trevor Burnham
	shows you how to hold onto all the power and flexibility of JavaScript
	while writing clearer, cleaner, and safer code.
      </p>},
                image_url:   'cs.jpg',
                price: 36.00)

Product.create!(title: 'Programming Ruby 1.9 & 2.0',
                description:
                    %{<p>
        Ruby is the fastest growing and most exciting dynamic language
        out there. If you need to get working programs delivered fast,
        you should add Ruby to your toolbox.
      </p>},
                image_url: 'ruby.jpg',
                price: 49.95)

Product.create!(title: 'Rails Test Prescriptions',
                description:
                    %{<p>
        <em>Rails Test Prescriptions</em> is a comprehensive guide to testing
        Rails applications, covering Test-Driven Development from both a
        theoretical perspective (why to test) and from a practical perspective
        (how to test effectively). It covers the core Rails testing tools and
        procedures for Rails 2 and Rails 3, and introduces popular add-ons,
        including Cucumber, Shoulda, Machinist, Mocha, and Rcov.
      </p>},
                image_url: 'rtp.jpg',
                price: 34.95)

Product.create!(title: 'The Cucumber for Java Book: Behaviour-Driven Development for Testers and Developers',
                description:
                    %{<p>
        Teams working on the JVM can now say goodbye forever to misunderstood requirements,
        tedious manual acceptance tests, and out-of-date documentation. Cucumber — the popular,
        open-source tool that helps teams communicate more effectively with their customers — now
        has a Java version, and our bestselling Cucumber Book has been updated to match.
        The Cucumber for Java Book has the same great advice about how to deliver rock-solid
        applications collaboratively, but with all code completely rewritten in Java. New
        chapters cover features unique to the Java version of Cucumber, and reflect insights
        from the Cucumber team since the original book was published.
      </p>},
                image_url: 'cfg.jpg',
                price: 36.00)

Product.create!(title: 'CoffeeScript: Accelerated JavaScript Development, Second Edition',
                description:
                    %{<p>
        Over the last five years, CoffeeScript has taken the web development world by storm.
        With the humble motto “It’s just JavaScript,” CoffeeScript provides all the power of
        the JavaScript language in a friendly and elegant package. This extensively revised
        and updated new edition includes an all-new project to demonstrate CoffeeScript in action,
        both in the browser and on a Node.js server. There’s no faster way to learn to write
        a modern web application.
      </p>},
                image_url:   'cs2.jpg',
                price: 29.00)

Product.create!(title: 'The Nature of Software Development: Keep It Simple, Make It Valuable, Build It Piece by Piece',
                description:
                    %{<p>
        You need to get value from your software project. You need it “free, now, and perfect”.
        We can’t get you there, but we can help you get to “cheaper, sooner, and better”. This
        book leads you from the desire for value down to the specific activities that help good
        Agile projects deliver better software sooner, and at a lower cost. Using simple sketches
        and a few words, the author invites you to follow his path of learning and understanding
        from a half century of software development and from his engagement with Agile methods
        from their very beginning.
      </p>},
                image_url:   'rjnsd.jpg',
                price: 24.00)

Product.create!(title: 'Node.js the Right Way: Practical, Server-Side JavaScript That Scales',
                description:
                    %{<p>
        Get to the forefront of server-side JavaScript programming by writing compact, robust,
        fast, networked Node applications that scale. Ready to take JavaScript beyond the browser,
        explore dynamic languages features and embrace evented programming? Explore the fun,
        growing repository of Node modules provided by npm. Work with multiple protocols,
        load-balanced RESTful web services, express, ØMQ, Redis, CouchDB, and more. Develop
        production-grade Node applications fast.
      </p>},
                image_url:   'jwnode.jpg',
                price: 27.00)
