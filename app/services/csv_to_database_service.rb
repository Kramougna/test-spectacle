class CsvToDatabaseService
  require 'csv'

  def initialize(params)
    @csv = params[:csv]

    validate_extension
  end

  def call
    CSV.foreach(@csv.path, {headers: true, col_sep: ';' }) do |row|
      @spectacle = ImportSpectacleFromCsv.new(row).call
      @user = ImportUserFromCsv.new(row).call
      @representation = ImportRepresentationFromCsv.new(row, @spectacle).call

      @deal = ImportDealFromCsv.new(row, @user).call
      @ticket = ImportTicketFromCsv.new(row, @representation, @deal, @user).call
    end
  end

  def validate_extension
    raise 'Invalid file, must be CSV' unless File.extname(@csv.original_filename) === '.csv'
  end


end
