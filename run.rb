require_relative './environment'


# Test your code here
# notice there is nothing else here, not even a pry,
# add one if you'd like

Ash = Trainer.new("Ash", 8)
Misty = Trainer.new("Misty",4)
Brock = Trainer.new("Brock", 1)


Pokemon.new("Pikachu", Ash, ["normal, electric"], 8, "SONIC THE PIKACHU")
Pokemon.new("Starmie", Misty, ["Water"], 13, "Patrick")
Pokemon.new("Onyx", Brock, ["Rock"], 14)
Pokemon.new("Butterfree", Ash, ["Bug"], 18)
Pokemon.new("Seel", Misty, ["Normal"], 4, "LikeTheSinger")
Pokemon.new("Magikarp", Misty, ["Water"], 7, "USELESSSHT")
Pokemon.new("Charizard", Ash, ["Fire"], 28)
Pokemon.new("Geodude", Brock, ["Rock"], 11, "BRO")
Pokemon.new("Clefairy", Misty, ["Normal"], 13)

binding.pry
0
