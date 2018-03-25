class PokemonsController < ApplicationController
	def new
		@pokemon_new = Pokemon.new
	end

	def capture
		pokemon = Pokemon.find(params[:id])
		pokemon.trainer_id = current_trainer.id
		pokemon.save()
		redirect_to root_path
	end

	def damage
		pokemon = Pokemon.find(params[:id])
		pokemon.health = pokemon.health - 10
		pokemon.save()
		if pokemon.health <= 0
			pokemon.destroy
		end
		redirect_to trainer_path(pokemon.trainer_id)
	end

	def create
		@pokemon_new = Pokemon.create(pokemon_params)
		@pokemon_new.trainer_id = current_trainer.id
		@pokemon_new.level = 1
		@pokemon_new.health = 100

		if @pokemon_new.save()
			redirect_to trainer_path(current_trainer.id)
		else
			redirect_to create_path
			flash[:error] = @pokemon_new.errors.full_messages.to_sentence
		end

	end

	private 
	 	def pokemon_params
	 		params.require(:pokemon).permit(:name, :ndex)
	 	end
end
