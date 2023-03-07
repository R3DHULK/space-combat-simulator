# Define initial player and enemy stats
player_hp <- 100
player_attack <- 10
enemy_hp <- 50
enemy_attack <- 5

# Loop until either player or enemy is defeated
while (player_hp > 0 && enemy_hp > 0) {
  # Display current status
  cat("Your ship: HP =", player_hp, "\n")
  cat("Enemy ship: HP =", enemy_hp, "\n")
  
  # Prompt player to choose an action
  cat("Choose an action:\n")
  cat("1. Attack\n")
  cat("2. Defend\n")
  choice <- readline(prompt = "")
  
  # Resolve player action
  if (choice == "1") {
    # Player attacks enemy
    damage <- player_attack
    cat("You attack the enemy for", damage, "damage.\n")
    enemy_hp <- enemy_hp - damage
  } else {
    # Player defends against enemy attack
    cat("You brace for impact.\n")
  }
  
  # Resolve enemy action
  if (enemy_hp > 0) {
    # Enemy attacks player
    damage <- enemy_attack
    cat("The enemy attacks you for", damage, "damage.\n")
    player_hp <- player_hp - damage
  } else {
    cat("You have defeated the enemy ship!\n")
  }
}

# Check if player won or lost
if (player_hp > 0) {
  cat("Congratulations! You have defeated the enemy ship!\n")
} else {
  cat("Game over. Your ship was destroyed.\n")
}
