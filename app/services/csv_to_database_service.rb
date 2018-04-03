class CsvToDatabaseService
  require 'csv'

  def initialize(params)
    @csv_path = params[:csv]
  end

  def call
    CSV.foreach(@csv_path.path, {headers: true, col_sep: ';' }) do |row|
      @spectacle = ImportSpectacleFromCsv.new(row).call
      @user = ImportUserFromCsv.new(row).call
      @representation = ImportRepresentationFromCsv.new(row, @spectacle).call

      # ap @representation
      @deal = ImportDealFromCsv.new(row, @user).call
      @ticket = ImportTicketFromCsv.new(row, @representation, @deal, @user).call
    end
  end



end
