class BulkDiscountsController < ApplicationController
  def index
    # require 'pry'; binding.pry
    @merchant = Merchant.find(params[:merchant_id])
    @bulk_discounts = BulkDiscount.all
  end

  def show
    @bulk_discount = BulkDiscount.find(params[:id])
  end

  def new
    @merchant = Merchant.find(params[:merchant_id])
  end

  def create
    @merchant = Merchant.find(params[:merchant_id])
    new_discount = BulkDiscount.new(new_discount_params)
      if new_discount.save
        redirect_to merchant_bulk_discounts_path(@merchant)
      end
  end

  private
  def new_discount_params
    params.permit(:quantity_threshold, :percentage_discount, :merchant_id)
  end
end