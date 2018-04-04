class ImportDealFromCsv
  def initialize(data, user)
    @deal = {
      id: data['Reservation'],
      source: set_source(data['Filiere de vente']),
      user: user.presence,
    }
  end

  def call
    Deal.create_with(@deal).find_or_create_by!(@deal.slice(:id))
  end

  private
  def set_source source
    return nil unless source.present?

    case source
    when 'GUICHET'
      return :window
    when 'DIGITICK'
      return :digitik
    else
      return nil
    end
  end
end