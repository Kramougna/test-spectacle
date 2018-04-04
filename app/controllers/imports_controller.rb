class ImportsController < ApplicationController
  def new
  end

  def create
    begin
      CsvToDatabaseService.new(import_params).call()

      redirect_to confirm_imports_path
    rescue ActiveRecord::RecordInvalid => e
      flash[:error] = e.message

      redirect_to new_import_path
    rescue Exception => e
      flash[:error] = e.message

      redirect_to new_import_path
    end
  end

  def confirm
  end

  private

  def import_params
    params.permit(:csv)
  end

end
