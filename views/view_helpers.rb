module ViewHelpers
  class Lesson < Struct.new(:id, :category, :title, :basename)
    DATA = [
      new(1, 'lesson', 'Installing and Running Rails', '10-installing-and-running-rails'),
      new(2, 'lesson', 'Database CRUD', '20-database-crud'),
      new(3, 'lesson', 'Show Itinerary Page', '30-show'),
      new(4, 'lesson', 'List Itineraries Page', '40-index-page'),
      new(5, 'lesson', 'Create Itinerary Page', '50-create'),
      new(6, 'lesson', 'Update Itinerary Page', '60-update'),
      new(7, 'lesson', 'Delete Itinerary Page', '70-delete'),
      new(8, 'lesson', 'Validate Itinerary', '80-validate'),
    ]

    def self.find(id)
      DATA.detect{|p| p.id == id}
    end

    def self.published
      DATA[0 .. 2]
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
