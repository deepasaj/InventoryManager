class InventoryController < ApplicationController
  def new
    @apparels = ApparelType.all.map { |type| type.name }
    @sizes = Size.all.map { |size| size.variant }
  end

  def create

  end
end
