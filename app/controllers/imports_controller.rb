class ImportsController < ApplicationController
  def new
  end

  def create
    CsvToDatabaseService.new(params).call()
    redirect_to confirm_imports_path
  end

  def confirm
  end
end
