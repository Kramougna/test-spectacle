class ImportRepresentationFromCsv
  def initialize(data, spectacle)
    #TODO refacto
    raise 'Spectacle must set' unless spectacle.present?

    @representation = {
      id: data['Cle representation'],
      spectacle: spectacle.presence,
      price: data['Prix'],
      start_date: DateTime.parse(data['Date representation'] + ' ' + data['Heure representation']),
      end_date: DateTime.parse(data['Date fin representation'] + ' ' + data['Heure fin representation']),
    }
  end

  def call
    # We can use find or create on representation id
    # but check if a representation exist on same dates should be safer
    Representation.where(@representation.slice(:start_date, :end_date)).first_or_create(@representation)
  end
end