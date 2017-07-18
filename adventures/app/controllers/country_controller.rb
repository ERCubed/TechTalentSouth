class CountryController < ApplicationController
  def index

  end

  def all_states
  	@states = State.all
  end

  def top_five_population
  	@states = State.order(:population).reverse_order.limit(5)
  end
end
