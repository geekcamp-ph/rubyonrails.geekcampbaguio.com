module ViewHelpers
  class Lesson < Struct.new(:id, :category, :title, :basename)
    DATA = [
      new(1, 'lesson', 'Installing and Running Rails', '1-installing-and-running-rails'),
      new(2, 'lesson', 'Database CRUD', '2-database-crud'),
      new(3, 'lesson', 'Show Itinerary Page', '3-show-itinerary-page'),
      new(4, 'lesson', 'List Itineraries Page', '4-list-itineraries-page'),
      new(5, 'lesson', 'Create Itinerary Page', '5-create-itinerary-page'),
      new(6, 'lesson', 'Update Itinerary Page', '6-update-itinerary-page'),
      new(7, 'lesson', 'Validate Itinerary', '7-validate-itinerary'),
      new(8, 'lesson', 'Show Remaining Budget', '8-show-remaining-budget'),
      new(9, 'lesson', 'Delete Itinerary', '9-delete-itinerary-page'),
      new(10, 'lesson', 'Sorting Columns', '10-sorting-columns'),
      new(11, 'lesson', 'Trips CRUD', '11-trips-crud'),
      new(12, 'lesson', 'Link Itineraries to Trips', '12-link-itineraries-to-trips'),
      new(13, 'lesson', 'Manage Itineraries Under a Trip', '13-manage-itineraries-under-a-trip'),
      new(14, 'lesson', 'Sensibly Set a Budget for a Given Timeframe', '14-sensibly-set-a-budget-for-a-given-timeframe'),
      new(15, 'lesson', 'Introduction to BDD with Cucumber', '15-introduction-to-bdd-with-cucumber'),
      new(16, 'lesson', 'Allow Multiple Users To Plan Their Trips', '16-allow-multiple-users-to-plan-their-trips')
    ]

    def self.find(id)
      DATA.detect{|p| p.id == id}
    end

    def self.published
      DATA
    end
  end

  class Assignment < Struct.new(:id, :category, :title, :basename)
    DATA = [
      new(1, 'assignment', 'Using Twitter Booststrap for Rails', '1-twitter-bootstrap-for-rails'),
      new(2, 'assignment', 'Enhancement 1: Use Route Helpers', '2-use-route-helpers'),
      new(3, 'assignment', 'Set Up Git and Heroku', '3-git-and-heroku')
    ]

    def self.find(id)
      DATA.detect{|p| p.id == id}
    end

    def self.published
      DATA
    end
  end

  class Challenge < Struct.new(:id, :category, :title, :basename)
    DATA = [
      new(1, 'challenge', 'Enhancement 2: Allow Multiple Users to Plan Their Trips', '1-allow-multiple-users-to-plan-their-trips'),
      new(2, 'challenge', 'Enhancement 3: Allow Filtering Trips Based on Month and Year', '2-allow-filtering-trips-based-on-month-and-year'),
      new(3, 'challenge', 'Enhancement 4: Improve User Experience', '3-improve-user-experience')
    ]

    def self.find(id)
      DATA.detect{|p| p.id == id}
    end

    def self.published
      DATA
    end
  end

  class Resource < Struct.new(:id, :category, :title, :basename)
    DATA = [
      new(1, 'resource', 'Event Presentations and Review', '1-event-presentations-and-review'),
      new(2, 'resource', 'Software Development Resources', '2-software-development-resources')
    ]

    def self.find(id)
      DATA.detect{|p| p.id == id}
    end

    def self.published
      DATA
    end
  end

  class Speaker < Struct.new(:id, :category, :name, :link)
    DATA = [
      new(1, 'speaker', 'George Mendoza', 'http://about.me/gsmendoza'),
      new(2, 'speaker', 'Katherine Pe', 'http://blog.bridgeutopiaweb.com'),
      new(3, 'speaker', 'Andrei Navarro', 'http://twitter.com/dreinavarro'),
      new(4, 'speaker', 'Reymart Canuel', 'http://gplus.to/rcanu')
    ]

    def self.find(id)
      DATA.detect{|p| p.id == id}
    end

    def self.all
      DATA
    end
  end

  # Calculate the years for a copyright
  def copyright_years(start_year)
    end_year = Date.today.year
    if start_year == end_year
      "#{start_year}"
    else
      "#{start_year}&#8211;#{end_year}"
    end
  end

  # Handy for hiding a block of unfinished code
  def hidden(&block)
    #no-op
  end

  # Add your own helpers below...

end
