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
      new(10, 'lesson', 'Sorting Columns', '10-sorting-columns')
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
