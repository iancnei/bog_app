class CreaturesController < ApplicationController

	def index
		@creatures = Creature.all
		render :index
	end

	def new
		@creature = Creature.new
		render :new
	end

	def create
		new_creature = params.require(:creature).permit(:name, :description)
		created_creature = Creature.create(new_creature)
		redirect_to "/creatures/#{created_creature.id}"
	end

	def show
		id = params[:id]
		@creature = Creature.find(id)
		render :show
	end

	def edit
		id = params[:id]
		@creature = Creature.find(id)
		render :edit
	end

	def update
		id = params[:id]
		edit_creature = params.require(:creature).permit(:name, :description)
		updated_creature = Creature.find(id)
		updated_creature.update(edit_creature)
		redirect_to "/creatures/#{updated_creature.id}"
	end

	def delete
		id = params[:id]
		deleted_creature = Creature.find(id)
		deleted_creature.destroy
		redirect_to "/creatures"
	end

end
