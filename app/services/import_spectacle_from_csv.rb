class ImportSpectacleFromCsv
  def initialize data
    @spectacle = {
      id: data['Cle spectacle'],
      name: data['Spectacle']
    }
  end

  def call
    Spectacle.create_with(@spectacle).find_or_create_by(@spectacle.slice(:name))
  end
end