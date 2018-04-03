class DashboardsController < ApplicationController
  def index

    # WIP

    total_deal = Deal.count
    uniq_buyer = User.count

    user_with_age = User.where.not(birth_date: nil)
    average_age = (user_with_age.map{ |u| (DateTime.now - u.birth_date).to_i  / 365}).sum / user_with_age.count if user_with_age.present?

    average_price = Representation.average(:price).round if Representation.average(:price).present?

  end

  def show
  end
end
