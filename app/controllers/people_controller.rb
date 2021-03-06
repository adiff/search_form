class PeopleController < ApplicationController
        def index
		@people = Person.search(params[:search]) if params[:search].present?
        end

        def new
                @person = Person.new
        end

        def create
                @person = Person.new(person_params)
                if @person.save
                        redirect_to new_person_path
                end
        end

        private
        def person_params
                params.require(:person).permit(:firstname, :lastname)
        end

end
