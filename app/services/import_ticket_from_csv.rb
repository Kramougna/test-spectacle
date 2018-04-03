class ImportTicketFromCsv
  def initialize(data, representation, deal, user)
    @ticket = {
      id: data['Numero billet'],
      payment: set_type(data['Type de produit']),
      representation: representation,
      user: user,
      deal: deal
    }
  end

  def call
    Ticket.create_with(@ticket).find_or_create_by(@ticket.slice(:id))
  end

  private
  def set_type payment
    return nil unless payment.present?

    case payment
    when 'Place individuelle'
      return :individual
    when 'Abonnement'
      return :subscription
    else
      return nil
    end
  end
end
