# encoding: utf-8

Product.delete_all
Product.create!(title: 'CoffeeScript',
                description:
                '<p>CoffeeScript is JavaScript done right. It provides all of JavaScript\'s
	functionality wrapped in a cleaner, more succinct syntax. In the first
	book on this exciting new language, CoffeeScript guru Trevor Burnham
	shows you how to hold onto all the power and flexibility of JavaScript
	while writing clearer, cleaner, and safer code.</p>',
                image_url: 'cs.jpg',
                price: 36.00)

Product.create!(title: 'Programming Ruby 1.9 & 2.0',
                description:
                '<p>Ruby is the fastest growing and most exciting dynamic language
  out there. If you need to get working programs delivered fast,
  you should add Ruby to your toolbox.</p>',
                image_url: 'ruby.jpg',
                price: 49.95)

Product.create!(title: 'Rails Test Prescriptions',
                description:
                '<p>Rails Test Prescriptions is a comprehensive guide to testing
  Rails applications, covering Test-Driven Development from both a
  theoretical perspective (why to test) and from a practical perspective
  (how to test effectively). It covers the core Rails testing tools and
  procedures for Rails 2 and Rails 3, and introduces popular add-ons,
  including Cucumber, Shoulda, Machinist, Mocha, and Rcov.</p>',
                image_url: 'rtp.jpg',
                price: 34.95)

Product.create!(title: 'The Cucumber for Java Book: Behaviour-Driven Development for Testers and Developers',
                description:
                '<p>Teams working on the JVM can now say goodbye forever to misunderstood requirements,
  tedious manual acceptance tests, and out-of-date documentation. Cucumber — the popular,
  open-source tool that helps teams communicate more effectively with their customers — now
  has a Java version, and our bestselling Cucumber Book has been updated to match.
  The Cucumber for Java Book has the same great advice about how to deliver rock-solid
  applications collaboratively, but with all code completely rewritten in Java. New
  chapters cover features unique to the Java version of Cucumber, and reflect insights
  from the Cucumber team since the original book was published.</p>',
                image_url: 'cfg.jpg',
                price: 36.00)

Product.create!(title: 'CoffeeScript: Accelerated JavaScript Development, Second Edition',
                description:
                '<p>Over the last five years, CoffeeScript has taken the web development world by storm.
  With the humble motto “It’s just JavaScript”, CoffeeScript provides all the power of
  the JavaScript language in a friendly and elegant package. This extensively revised
  and updated new edition includes an all-new project to demonstrate CoffeeScript in action,
  both in the browser and on a Node.js server. There’s no faster way to learn to write
  a modern web application.</p>',
                image_url: 'cs2.jpg',
                price: 29.00)

Product.create!(title: 'The Nature of Software Development: Keep It Simple, Make It Valuable, Build It Piece by Piece',
                description:
                '<p>You need to get value from your software project. You need it “free, now, and perfect”.
  We can’t get you there, but we can help you get to “cheaper, sooner, and better”. This
  book leads you from the desire for value down to the specific activities that help good
  Agile projects deliver better software sooner, and at a lower cost. Using simple sketches
  and a few words, the author invites you to follow his path of learning and understanding
  from a half century of software development and from his engagement with Agile methods
  from their very beginning.</p>',
                image_url: 'rjnsd.jpg',
                price: 24.00)

Product.create!(title: 'Node.js the Right Way: Practical, Server-Side JavaScript That Scales',
                description:
                '<p>Get to the forefront of server-side JavaScript programming by writing compact, robust,
  fast, networked Node applications that scale. Ready to take JavaScript beyond the browser,
  explore dynamic languages features and embrace evented programming? Explore the fun,
  growing repository of Node modules provided by npm. Work with multiple protocols,
  load-balanced RESTful web services, express, ØMQ, Redis, CouchDB, and more. Develop
  production-grade Node applications fast.</p>',
                image_url: 'jwnode.jpg',
                price: 27.00)

Product.create!(title: 'Head First JavaScript Programming',
                description:
                '<p>This brain-friendly guide teaches you everything from JavaScript language fundamentals
  to advanced topics, including objects, functions, and the browser’s document object model. You won’t just
  be reading — you’ll be playing games, solving puzzles, pondering mysteries, and interacting with JavaScript
  in ways you never imagined. And you’ll write real code, lots of it, so you can start building your own
  web applications.</p>',
                image_url: 'hfjs.png',
                price: 50.00)

Product.create!(title: 'Head First C#, 3rd Edition',
                description:
                '<p>Head First C# is a complete learning experience for learning how to program with C#,
  XAML, the .NET Framework, and Visual Studio. Fun and highly visual, this introduction to C# is designed
  to keep you engaged and entertained from first page to last.</p>',
                image_url: 'hfc.png',
                price: 55.00)

Product.create!(title: 'Head First HTML and CSS, 2nd Edition',
                description:
                '<p>Tired of reading HTML books that only make sense after you\'re an expert? Then it\'s about
  time you picked up Head First HTML and really learned HTML. You want to learn HTML so you can finally
  create those web pages you\'ve always wanted, so you can communicate more effectively with friends, family,
  fans, and fanatic customers. You also want to do it right so you can actually maintain and expand your web
  pages over time so they work in all browsers and mobile devices. Oh, and if you\'ve never heard of CSS,
  that\'s okay - we won\'t tell anyone you\'re still partying like it\'s 1999 - but if you\'re going to
  create web pages in the 21st century then you\'ll want to know and understand CSS.</p>',
                image_url: 'hfhc.png',
                price: 40.00)

Product.create!(title: 'Head First jQuery',
                description:
                '<p>Want to add more interactivity and polish to your websites? Discover how jQuery can help you
  build complex scripting functionality in just a few lines of code. With Head First jQuery, you\'ll quickly
  get up to speed on this amazing JavaScript library by learning how to navigate HTML documents while handling
  events, effects, callbacks, and animations. By the time you\'ve completed the book, you\'ll be incorporating
  Ajax apps, working seamlessly with HTML and CSS, and handling data with PHP, MySQL and JSON.</p>',
                image_url: 'hfj.png',
                price: 40.00)

Product.create!(title: 'Head First Rails',
                description:
                '<p>Ready to transport your web applications into the Web 2.0 era? Head First Rails takes your
  programming - and productivity - to the max. You\'ll learn everything from the fundamentals of Rails scaffolding
  to building customized interactive web apps using Rails\' rich set of tools and the MVC framework. Please note
  this book covers Rails 2.</p>',
                image_url: 'hfr.png',
                price: 45.00)
