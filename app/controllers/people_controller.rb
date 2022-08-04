class PeopleController < ApplicationController
  before_action :set_person, only: [:show, :update]

  def index
    @people = Person.all
    @person = @people.first
  end

  def show
    if @person.present?
      respond_to_turbo_stream
    end
  end

  def update
    if @person.update(people_params)  
      respond_to_turbo_stream
    end
  end

  private
    def people_params
      params.require(:person).permit(:first_name, :last_name, :address, :city, :state, :relationship)
    end

    def set_person
      @person = Person.find(params[:id])
    end

    def respond_to_turbo_stream
      respond_to do |format|
        format.turbo_stream
      end
    end
end