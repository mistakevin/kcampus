class TermsController < ApplicationController
  before_filter :require_current_user!
  before_filter :require_client!, :except => [:index]
  before_filter :require_admin!
  
  def index
    @terms = Term.find_all_by_client_id(current_user.client_id)
    @term = Term.new
  end
  
  def create
    params[:term][:client_id] = current_user.client_id
    params[:term].each_value { |value| value.strip! if value.is_a?(String) }
    @term = Term.new(params[:term])
    @term.save
    redirect_to terms_url
  end
  
  def edit
    @term = Term.find(params[:id])
  end
  
  def update
    @term = Term.find(params[:id])
    params[:term].each_value { |value| value.strip! if value.is_a?(String) }
    @term.update_attributes(params[:id])
    @term.save
    redirect_to terms_url
  end
end
