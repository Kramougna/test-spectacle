class DashboardsController < ApplicationController
  def index

    #TODO REFACTO
    #call into service ?

    @total_deal = Deal.count
    @uniq_buyer = User.count

    user_with_age = User.where.not(birth_date: nil)

    @average_age = (user_with_age.map{ |u| (DateTime.now - u.birth_date).to_i  / 365}).sum / user_with_age.count if user_with_age.present?
    @average_price = Representation.average(:price).round if Representation.average(:price).present?
    @average_deal = (Deal.includes(:representations).all.map{ |d| d.representations.sum(:price) }.sum) / Deal.count

  end
end
