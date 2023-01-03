class Museum
  attr_reader :name,
              :exhibits,
              :patrons

  def initialize(name)
    @name = name
    @exhibits = []
    @patrons = []
  end

  def add_exhibit(exhibit)
    @exhibits << exhibit
  end

  def recommend_exhibits(patron)
    recommendations = []
    @exhibits.each do |rec_exhibit|
      patron.interests.find_all do |interest|
      if interest == rec_exhibit.name  
        recommendations << rec_exhibit
        end
      end
    end
    recommendations
  end

  def admit(patron)
    patrons << patron
  end
end