class ImportUserFromCsv
  def initialize data
    #TODO check email format!

    @user = {
      email: data['Email'],
      first_name: data['Prenom'],
      last_name: data['Nom'],
      gender: set_gender(data['Sexe']),
      address: data['Adresse'],
      city: data['Ville'],
      zip_code: data['Code postal'],
      country: data['Pays'],
      birth_date: (data['Age'].present? ? Time.now - data['Age'].to_i.years : nil)
    }
  end

  def call
    User.create_with(@user).find_or_create_by!(@user.slice(:email))
  end

  private

  def set_gender gender
    return nil unless gender.present?

    case gender
    when 'M'
      return :male
    when 'F'
      return :female
    else
      return nil
    end
  end
end