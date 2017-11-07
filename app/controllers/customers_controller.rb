class CustomersController < ApplicationController
  def index
    @customers = Customer.all
  end

  def alphabetized
    @ordered_customers = Customer.order(:full_name)
  end

  def missing_email
    @customers_no_email = Customer.where(email_address: '')
  end
end
