class BulkDiscountsController < ApplicationController
  def index
    @bulk_discounts = BulkDiscount.all
    # @bulk_discount_id = BulkDiscount.find(params[:id])
  end
end