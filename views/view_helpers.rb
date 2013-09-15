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
      new(13, 'lesson', 'Manage Itineraries Under a Trip', '13-manage-itineraries-under-a-trip')
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
      new(2, 'assignment', 'Enhancement 1: Use Route Helpers', '2-use-route-helpers')
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
      new(1, 'resource', 'Web Development Resources', '1-resources-web-development'),
      new(2, 'resource', 'Ruby Resources', '2-resources-ruby'),
      new(3, 'resource', 'Ruby on Rails Resources', '3-resources-ruby-on-rails'),
      new(4, 'resource', 'Git Resources', '4-resources-git'),
      new(5, 'resource', 'Free Unix Resources', '5-resources-unix')
    ]

    def self.find(id)
      DATA.detect{|p| p.id == id}
    end

    def self.published
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
