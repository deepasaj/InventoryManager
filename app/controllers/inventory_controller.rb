class InventoryController < ApplicationController
  def new
    @apparels = ApparelType.all.map { |type| type.name }
    @sizes = Size.all.map { |size| size.variant }
  end

  def create
    params_sliced = params.slice(:apparel_types, :sizes, :quantity)
    Inventory.create(params_sliced)
  end

  def index
    @inventories = Inventory.all
    byebug
  end
end
