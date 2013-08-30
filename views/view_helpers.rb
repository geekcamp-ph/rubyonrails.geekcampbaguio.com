module ViewHelpers
  class Lesson < Struct.new(:id, :category, :title, :basename, :lesson_number)
    DATA = [
      new(:installation, 'lesson', 'Installing and Running Rails', '10-installing-and-running-rails', 1),
      new(:database_crud, 'lesson', 'Database CRUD', '20-database-crud', 2),
      new(:show_itinerary, 'lesson', 'Show Itinerary Page', '30-show', 3),
      new(:list_itineraries, 'lesson', 'List Itineraries Page', '40-index-page', 4),
      new(:create_itinerary, 'lesson', 'Create Itinerary Page', '50-create', 5),
      new(:update_itinerary, 'lesson', 'Update Itinerary Page', '60-update', 6),
      new(:delete_itinerary, 'lesson', 'Delete Itinerary Page', '70-delete', 7),
      new(:validate_itinerary, 'lesson', 'Validate Itinerary', '80-validate', 8),
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
