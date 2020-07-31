# Virtual Monte Carlo Simulation

# author: Marko Intihar

rm(list = ls())
graphics.off()


# 1) The basic construct

# 1.1) Game: Toss 1 coin multiple times

# Toss a coin
coin_toss <- function(nr_tosses = 5){
  tosses <- sample(x = c(0,1),      # outcomes: 0 - tails  1 - heads
                   size = nr_tosses, 
                   replace = T) 
  return(tosses)
}

# Generate games of tossing a coin
game_coin_toss <- function(nr_coin_tosses = 5, nr_games_played, prediction){
  games <- replicate(n = nr_games_played, # generate multiple games
                     expr = coin_toss(nr_tosses = nr_coin_tosses))
  games <- t(games)  # transpose matrix row - game | column - toss inside one game
  heads_landed <- rowSums(games) # calculate number of times coin head landed during each game
  game_results <- data.frame(game_id = 1:nr_games_played, # data frame of game results
                             nr_HEADS = heads_landed,
                             prediction = prediction)
  game_results$player_won <- game_results$nr_HEADS == game_results$prediction
  return(game_results)
}


# 1.2) Game: Throw dice single time
dice_throw <- function(nr_throws = 1){
  throw <- sample(x = c(1,2,3,4,5,6), # outcomes: 1,2,3,4,5,6
                  size = nr_throws, 
                  replace = T)
  return(throw)
}

# Generate games of throwing one dice
game_dice_throw <- function(nr_throws = 1, nr_games_played, prediction){
  games <- replicate(n = nr_games_played, # generate multiple games
                     expr = dice_throw(nr_throws = nr_throws))
  game_results <- data.frame(game_id = 1:nr_games_played, # data frame of game results
                             number_landed = games,
                             prediction = prediction)
  game_results$player_won <- game_results$number_landed == game_results$prediction
  return(game_results)
}


# 1.3) Game: Throw two dices one time
two_dice_throw <- function(nr_throws = 1){
  throws <- dice_throw(2) # simulate each dice throw
  sum_of_numbers <- sum(throws) # calculate sum of numbers landed on both dices 
  return(sum_of_numbers)
}

# Generate games of throwing two dices
game_two_dice_throw <- function(nr_throws = 1, nr_games_played, prediction){
  games <- replicate(n = nr_games_played, # generate multiple games
                     expr = two_dice_throw(nr_throws = nr_throws))
  game_results <- data.frame(game_id = 1:nr_games_played, # data frame of game results
                             sum_numbers = games,
                             prediction = prediction)
  game_results$player_won <- game_results$sum_numbers == game_results$prediction
  return(game_results)
}


# 1.4) Roulette

# Create table for roulette results (conversion table)
table_roulette_numbers <- data.frame(number = 0:36,
                                     color = c("green",
                                               "red", "black", "red", "black", "red", "black", "red", "black",
                                               "red", "black", "black", "red", "black", "red", "black", "red",
                                               "black", "red", "red", "black", "red", "black", "red", "black",
                                               "red", "black", "red", "black", "black", "red", "black", "red",
                                               "black", "red", "black","red"),
                                     even_odd = c("/", rep(c("O", "E"), 18)),
                                     third = c("/", rep("1st",12), rep("2nd", 12), rep("3rd", 12)),
                                     low_high = c("/", rep("low", 18), rep("high", 18)))

# Convert factors to characters
table_roulette_numbers$color <- as.character(table_roulette_numbers$color)
table_roulette_numbers$even_odd <- as.character(table_roulette_numbers$even_odd)
table_roulette_numbers$third <- as.character(table_roulette_numbers$third)
table_roulette_numbers$low_high <- as.character(table_roulette_numbers$low_high)


# Game: spin metal ball inside roulette game
roulette <- function(table = table_roulette_numbers){
  number_spin <- sample(x = 0:36, size = 1, replace = T) # spinned number in roulette
  result <- table[number_spin + 1,] # result of the roulette game - all strategies of the game
  return(result)
}

# Generate games of playing roulette
game_roulette <- function(nr_games_played, prediction_strategy, prediction){
  
  # create an empty data frame
  game_results <- data.frame(game_id = 1:nr_games_played, # data frame of game results
                             prediction_strategy = prediction_strategy,
                             prediction = prediction,
                             number = rep(NA, nr_games_played),
                             color = rep(NA, nr_games_played),
                             even_odd = rep(NA, nr_games_played),
                             third = rep(NA, nr_games_played),
                             low_high = rep(NA, nr_games_played))
  
  # generate games using for loop
  for(i in 1:nr_games_played){
    game_results[i,c("number", "color", "even_odd", "third", "low_high")] <- roulette() # save game result to data frame
  }
  
  # calculate predictionion result
  game_results$player_won <- game_results[, prediction_strategy] == game_results$prediction
  return(game_results)
}


# 2) The simulation procedure & visualization results

set.seed(123) # set seed - so you will have repeatable results

# 2.1) Game simulation

# Player 1
player_1_game_1_10_runs   <- game_coin_toss(nr_coin_tosses = 10, nr_games_played = 10, prediction = 0)
player_1_game_1_1k_runs   <- game_coin_toss(nr_coin_tosses = 10, nr_games_played = 1000, prediction = 0)
player_1_game_1_10k_runs  <- game_coin_toss(nr_coin_tosses = 10, nr_games_played = 10000, prediction = 0)

player_1_game_2_10_runs   <- game_dice_throw(nr_throws = 1, nr_games_played = 10, prediction = 2)
player_1_game_2_1k_runs   <- game_dice_throw(nr_throws = 1, nr_games_played = 1000, prediction = 2)
player_1_game_2_10k_runs  <- game_dice_throw(nr_throws = 1, nr_games_played = 10000, prediction = 2)

player_1_game_3_10_runs   <- game_two_dice_throw(nr_throws = 1, nr_games_played = 10, prediction = 4)
player_1_game_3_1k_runs   <- game_two_dice_throw(nr_throws = 1, nr_games_played = 1000, prediction = 4)
player_1_game_3_10k_runs  <- game_two_dice_throw(nr_throws = 1, nr_games_played = 10000, prediction = 4)

player_1_game_4_10_runs   <- game_roulette(nr_games_played = 10, prediction_strategy = "number", prediction = 0)
player_1_game_4_1k_runs   <- game_roulette(nr_games_played = 1000, prediction_strategy = "number", prediction = 0) 
player_1_game_4_10k_runs  <- game_roulette(nr_games_played = 10000, prediction_strategy = "number", prediction = 0) 


# Player 2
player_2_game_1_10_runs   <- game_coin_toss(nr_coin_tosses = 10, nr_games_played = 10, prediction = 2)
player_2_game_1_1k_runs   <- game_coin_toss(nr_coin_tosses = 10, nr_games_played = 1000, prediction = 2)
player_2_game_1_10k_runs  <- game_coin_toss(nr_coin_tosses = 10, nr_games_played = 10000, prediction = 2)

player_2_game_2_10_runs   <- game_dice_throw(nr_throws = 1, nr_games_played = 10, prediction = 1)
player_2_game_2_1k_runs   <- game_dice_throw(nr_throws = 1, nr_games_played = 1000, prediction = 1)
player_2_game_2_10k_runs  <- game_dice_throw(nr_throws = 1, nr_games_played = 10000, prediction = 1)

player_2_game_3_10_runs   <- game_two_dice_throw(nr_throws = 1, nr_games_played = 10, prediction = 7)
player_2_game_3_1k_runs   <- game_two_dice_throw(nr_throws = 1, nr_games_played = 1000, prediction = 7)
player_2_game_3_10k_runs  <- game_two_dice_throw(nr_throws = 1, nr_games_played = 10000, prediction = 7)

player_2_game_4_10_runs   <- game_roulette(nr_games_played = 10, prediction_strategy = "color", prediction = "red")
player_2_game_4_1k_runs   <- game_roulette(nr_games_played = 1000, prediction_strategy = "color", prediction = "red") 
player_2_game_4_10k_runs  <- game_roulette(nr_games_played = 10000, prediction_strategy = "color", prediction = "red") 


# Player 3
player_3_game_1_10_runs   <- game_coin_toss(nr_coin_tosses = 10, nr_games_played = 10, prediction = 5)
player_3_game_1_1k_runs   <- game_coin_toss(nr_coin_tosses = 10, nr_games_played = 1000, prediction = 5)
player_3_game_1_10k_runs  <- game_coin_toss(nr_coin_tosses = 10, nr_games_played = 10000, prediction = 5)

player_3_game_2_10_runs   <- game_dice_throw(nr_throws = 1, nr_games_played = 10, prediction = 4)
player_3_game_2_1k_runs   <- game_dice_throw(nr_throws = 1, nr_games_played = 1000, prediction = 4)
player_3_game_2_10k_runs  <- game_dice_throw(nr_throws = 1, nr_games_played = 10000, prediction = 4)

player_3_game_3_10_runs   <- game_two_dice_throw(nr_throws = 1, nr_games_played = 10, prediction = 9)
player_3_game_3_1k_runs   <- game_two_dice_throw(nr_throws = 1, nr_games_played = 1000, prediction = 9)
player_3_game_3_10k_runs  <- game_two_dice_throw(nr_throws = 1, nr_games_played = 10000, prediction = 9)

player_3_game_4_10_runs   <- game_roulette(nr_games_played = 10, prediction_strategy = "even_odd", prediction = "E")
player_3_game_4_1k_runs   <- game_roulette(nr_games_played = 1000, prediction_strategy = "even_odd", prediction = "E") 
player_3_game_4_10k_runs  <- game_roulette(nr_games_played = 10000, prediction_strategy = "even_odd", prediction = "E") 


# Player 4
player_4_game_1_10_runs   <- game_coin_toss(nr_coin_tosses = 10, nr_games_played = 10, prediction = 7)
player_4_game_1_1k_runs   <- game_coin_toss(nr_coin_tosses = 10, nr_games_played = 1000, prediction = 7)
player_4_game_1_10k_runs  <- game_coin_toss(nr_coin_tosses = 10, nr_games_played = 10000, prediction = 7)

player_4_game_2_10_runs   <- game_dice_throw(nr_throws = 1, nr_games_played = 10, prediction = 6)
player_4_game_2_1k_runs   <- game_dice_throw(nr_throws = 1, nr_games_played = 1000, prediction = 6)
player_4_game_2_10k_runs  <- game_dice_throw(nr_throws = 1, nr_games_played = 10000, prediction = 6)

player_4_game_3_10_runs   <- game_two_dice_throw(nr_throws = 1, nr_games_played = 10, prediction = 10)
player_4_game_3_1k_runs   <- game_two_dice_throw(nr_throws = 1, nr_games_played = 1000, prediction = 10)
player_4_game_3_10k_runs  <- game_two_dice_throw(nr_throws = 1, nr_games_played = 10000, prediction = 10)

player_4_game_4_10_runs   <- game_roulette(nr_games_played = 10, prediction_strategy = "third", prediction = "3rd")
player_4_game_4_1k_runs   <- game_roulette(nr_games_played = 1000, prediction_strategy = "third", prediction = "3rd") 
player_4_game_4_10k_runs  <- game_roulette(nr_games_played = 10000, prediction_strategy = "third", prediction = "3rd") 


# Player 5
player_5_game_1_10_runs   <- game_coin_toss(nr_coin_tosses = 10, nr_games_played = 10, prediction = 9)
player_5_game_1_1k_runs   <- game_coin_toss(nr_coin_tosses = 10, nr_games_played = 1000, prediction = 9)
player_5_game_1_10k_runs  <- game_coin_toss(nr_coin_tosses = 10, nr_games_played = 10000, prediction = 9)

player_5_game_2_10_runs   <- game_dice_throw(nr_throws = 1, nr_games_played = 10, prediction = 3)
player_5_game_2_1k_runs   <- game_dice_throw(nr_throws = 1, nr_games_played = 1000, prediction = 3)
player_5_game_2_10k_runs  <- game_dice_throw(nr_throws = 1, nr_games_played = 10000, prediction = 3)

player_5_game_3_10_runs   <- game_two_dice_throw(nr_throws = 1, nr_games_played = 10, prediction = 12)
player_5_game_3_1k_runs   <- game_two_dice_throw(nr_throws = 1, nr_games_played = 1000, prediction = 12)
player_5_game_3_10k_runs  <- game_two_dice_throw(nr_throws = 1, nr_games_played = 10000, prediction = 12)

player_5_game_4_10_runs   <- game_roulette(nr_games_played = 10, prediction_strategy = "low_high", prediction = "high")
player_5_game_4_1k_runs   <- game_roulette(nr_games_played = 1000, prediction_strategy = "low_high", prediction = "high") 
player_5_game_4_10k_runs  <- game_roulette(nr_games_played = 10000, prediction_strategy = "low_high", prediction = "high") 


# Visualization of results

# Function for creating plots
visualize_results <- function(game_result, player, game_name, outcome_var, outcome_name){
  
  barplot(table(game_result[,outcome_var]),
          main = paste("Player ", player, " / ", game_name, " / Nr games played ", nrow(game_result), sep = ""),
          xlab = outcome_name,
          ylab = "Number of games")
  
  barplot(table(game_result$player_won),
          main = paste("Player ", player, " / ", game_name, " / Nr games played ", nrow(game_result), sep = ""),
          xlab = "Player won",
          ylab = "Number of games")
  
  plot(x = game_result$game_id,
       y = cumsum(game_result$player_won),
       type ="l",
       col = "red",
       main = paste("Player ", player, " / ", game_name, " / Nr games played ", nrow(game_result), sep = ""),
       xlab = "Number of games played",
       ylab = "Number of games won", 
       ylim = c(0, max(game_result$game_id)))
}


# Player 1
visualize_results(game_result = player_1_game_1_10_runs,  player = 1, game_name = "Game 1 (Coin toss)", outcome_var = "nr_HEADS", outcome_name = "Number of HEADS")
visualize_results(game_result = player_1_game_1_1k_runs,  player = 1, game_name = "Game 1 (Coin toss)", outcome_var = "nr_HEADS", outcome_name = "Number of HEADS")
visualize_results(game_result = player_1_game_1_10k_runs, player = 1, game_name = "Game 1 (Coin toss)", outcome_var = "nr_HEADS", outcome_name = "Number of HEADS")

visualize_results(game_result = player_1_game_2_10_runs,  player = 1, game_name = "Game 2 (Dice throw)", outcome_var = "number_landed", outcome_name = "Number landed")
visualize_results(game_result = player_1_game_2_1k_runs,  player = 1, game_name = "Game 2 (Dice throw)", outcome_var = "number_landed", outcome_name = "Number landed")
visualize_results(game_result = player_1_game_2_10k_runs, player = 1, game_name = "Game 2 (Dice throw)", outcome_var = "number_landed", outcome_name = "Number landed")

visualize_results(game_result = player_1_game_3_10_runs,  player = 1, game_name = "Game 3 (Two dice throw)", outcome_var = "sum_numbers", outcome_name = "Total numbers landed")
visualize_results(game_result = player_1_game_3_1k_runs,  player = 1, game_name = "Game 3 (Two dice throw)", outcome_var = "sum_numbers", outcome_name = "Total numbers landed")
visualize_results(game_result = player_1_game_3_10k_runs, player = 1, game_name = "Game 3 (Two dice throw)", outcome_var = "sum_numbers", outcome_name = "Total numbers landed")

visualize_results(game_result = player_1_game_4_10_runs,  player = 1, game_name = "Game 4 (Roulette)", outcome_var = "number", outcome_name = "Number landed")
visualize_results(game_result = player_1_game_4_1k_runs,  player = 1, game_name = "Game 4 (Roulette)", outcome_var = "number", outcome_name = "Number landed")
visualize_results(game_result = player_1_game_4_10k_runs, player = 1, game_name = "Game 4 (Roulette)", outcome_var = "number", outcome_name = "Number landed")


# Player 2
visualize_results(game_result = player_2_game_1_10_runs,  player = 2, game_name = "Game 1 (Coin toss)", outcome_var = "nr_HEADS", outcome_name = "Number of HEADS")
visualize_results(game_result = player_2_game_1_1k_runs,  player = 2, game_name = "Game 1 (Coin toss)", outcome_var = "nr_HEADS", outcome_name = "Number of HEADS")
visualize_results(game_result = player_2_game_1_10k_runs, player = 2, game_name = "Game 1 (Coin toss)", outcome_var = "nr_HEADS", outcome_name = "Number of HEADS")

visualize_results(game_result = player_2_game_2_10_runs,  player = 2, game_name = "Game 2 (Dice throw)", outcome_var = "number_landed", outcome_name = "Number landed")
visualize_results(game_result = player_2_game_2_1k_runs,  player = 2, game_name = "Game 2 (Dice throw)", outcome_var = "number_landed", outcome_name = "Number landed")
visualize_results(game_result = player_2_game_2_10k_runs, player = 2, game_name = "Game 2 (Dice throw)", outcome_var = "number_landed", outcome_name = "Number landed")

visualize_results(game_result = player_2_game_3_10_runs,  player = 2, game_name = "Game 3 (Two dice throw)", outcome_var = "sum_numbers", outcome_name = "Total numbers landed")
visualize_results(game_result = player_2_game_3_1k_runs,  player = 2, game_name = "Game 3 (Two dice throw)", outcome_var = "sum_numbers", outcome_name = "Total numbers landed")
visualize_results(game_result = player_2_game_3_10k_runs, player = 2, game_name = "Game 3 (Two dice throw)", outcome_var = "sum_numbers", outcome_name = "Total numbers landed")

visualize_results(game_result = player_2_game_4_10_runs,  player = 2, game_name = "Game 4 (Roulette)", outcome_var = "color", outcome_name = "Color landed")
visualize_results(game_result = player_2_game_4_1k_runs,  player = 2, game_name = "Game 4 (Roulette)", outcome_var = "color", outcome_name = "Color landed")
visualize_results(game_result = player_2_game_4_10k_runs, player = 2, game_name = "Game 4 (Roulette)", outcome_var = "color", outcome_name = "Color landed")


# Player 3
visualize_results(game_result = player_3_game_1_10_runs,  player = 3, game_name = "Game 1 (Coin toss)", outcome_var = "nr_HEADS", outcome_name = "Number of HEADS")
visualize_results(game_result = player_3_game_1_1k_runs,  player = 3, game_name = "Game 1 (Coin toss)", outcome_var = "nr_HEADS", outcome_name = "Number of HEADS")
visualize_results(game_result = player_3_game_1_10k_runs, player = 3, game_name = "Game 1 (Coin toss)", outcome_var = "nr_HEADS", outcome_name = "Number of HEADS")

visualize_results(game_result = player_3_game_2_10_runs,  player = 3, game_name = "Game 2 (Dice throw)", outcome_var = "number_landed", outcome_name = "Number landed")
visualize_results(game_result = player_3_game_2_1k_runs,  player = 3, game_name = "Game 2 (Dice throw)", outcome_var = "number_landed", outcome_name = "Number landed")
visualize_results(game_result = player_3_game_2_10k_runs, player = 3, game_name = "Game 2 (Dice throw)", outcome_var = "number_landed", outcome_name = "Number landed")

visualize_results(game_result = player_3_game_3_10_runs,  player = 3, game_name = "Game 3 (Two dice throw)", outcome_var = "sum_numbers", outcome_name = "Total numbers landed")
visualize_results(game_result = player_3_game_3_1k_runs,  player = 3, game_name = "Game 3 (Two dice throw)", outcome_var = "sum_numbers", outcome_name = "Total numbers landed")
visualize_results(game_result = player_3_game_3_10k_runs, player = 3, game_name = "Game 3 (Two dice throw)", outcome_var = "sum_numbers", outcome_name = "Total numbers landed")

visualize_results(game_result = player_3_game_4_10_runs,  player = 3, game_name = "Game 4 (Roulette)", outcome_var = "even_odd", outcome_name = "Even / Odd number landed")
visualize_results(game_result = player_3_game_4_1k_runs,  player = 3, game_name = "Game 4 (Roulette)", outcome_var = "even_odd", outcome_name = "Even / Odd number landed")
visualize_results(game_result = player_3_game_4_10k_runs, player = 3, game_name = "Game 4 (Roulette)", outcome_var = "even_odd", outcome_name = "Even / Odd number landed")


# Player 4
visualize_results(game_result = player_4_game_1_10_runs,  player = 4, game_name = "Game 1 (Coin toss)", outcome_var = "nr_HEADS", outcome_name = "Number of HEADS")
visualize_results(game_result = player_4_game_1_1k_runs,  player = 4, game_name = "Game 1 (Coin toss)", outcome_var = "nr_HEADS", outcome_name = "Number of HEADS")
visualize_results(game_result = player_4_game_1_10k_runs, player = 4, game_name = "Game 1 (Coin toss)", outcome_var = "nr_HEADS", outcome_name = "Number of HEADS")

visualize_results(game_result = player_4_game_2_10_runs,  player = 4, game_name = "Game 2 (Dice throw)", outcome_var = "number_landed", outcome_name = "Number landed")
visualize_results(game_result = player_4_game_2_1k_runs,  player = 4, game_name = "Game 2 (Dice throw)", outcome_var = "number_landed", outcome_name = "Number landed")
visualize_results(game_result = player_4_game_2_10k_runs, player = 4, game_name = "Game 2 (Dice throw)", outcome_var = "number_landed", outcome_name = "Number landed")

visualize_results(game_result = player_4_game_3_10_runs,  player = 4, game_name = "Game 3 (Two dice throw)", outcome_var = "sum_numbers", outcome_name = "Total numbers landed")
visualize_results(game_result = player_4_game_3_1k_runs,  player = 4, game_name = "Game 3 (Two dice throw)", outcome_var = "sum_numbers", outcome_name = "Total numbers landed")
visualize_results(game_result = player_4_game_3_10k_runs, player = 4, game_name = "Game 3 (Two dice throw)", outcome_var = "sum_numbers", outcome_name = "Total numbers landed")

visualize_results(game_result = player_4_game_4_10_runs,  player = 4, game_name = "Game 4 (Roulette)", outcome_var = "third", outcome_name = "Number which third landed")
visualize_results(game_result = player_4_game_4_1k_runs,  player = 4, game_name = "Game 4 (Roulette)", outcome_var = "third", outcome_name = "Number which third landed")
visualize_results(game_result = player_4_game_4_10k_runs, player = 4, game_name = "Game 4 (Roulette)", outcome_var = "third", outcome_name = "Number which third landed")


# Player 5
visualize_results(game_result = player_5_game_1_10_runs,  player = 5, game_name = "Game 1 (Coin toss)", outcome_var = "nr_HEADS", outcome_name = "Number of HEADS")
visualize_results(game_result = player_5_game_1_1k_runs,  player = 5, game_name = "Game 1 (Coin toss)", outcome_var = "nr_HEADS", outcome_name = "Number of HEADS")
visualize_results(game_result = player_5_game_1_10k_runs, player = 5, game_name = "Game 1 (Coin toss)", outcome_var = "nr_HEADS", outcome_name = "Number of HEADS")

visualize_results(game_result = player_5_game_2_10_runs,  player = 5, game_name = "Game 2 (Dice throw)", outcome_var = "number_landed", outcome_name = "Number landed")
visualize_results(game_result = player_5_game_2_1k_runs,  player = 5, game_name = "Game 2 (Dice throw)", outcome_var = "number_landed", outcome_name = "Number landed")
visualize_results(game_result = player_5_game_2_10k_runs, player = 5, game_name = "Game 2 (Dice throw)", outcome_var = "number_landed", outcome_name = "Number landed")

visualize_results(game_result = player_5_game_3_10_runs,  player = 5, game_name = "Game 3 (Two dice throw)", outcome_var = "sum_numbers", outcome_name = "Total numbers landed")
visualize_results(game_result = player_5_game_3_1k_runs,  player = 5, game_name = "Game 3 (Two dice throw)", outcome_var = "sum_numbers", outcome_name = "Total numbers landed")
visualize_results(game_result = player_5_game_3_10k_runs, player = 5, game_name = "Game 3 (Two dice throw)", outcome_var = "sum_numbers", outcome_name = "Total numbers landed")

visualize_results(game_result = player_5_game_4_10_runs,  player = 5, game_name = "Game 4 (Roulette)", outcome_var = "low_high", outcome_name = "Low / High number landed")
visualize_results(game_result = player_5_game_4_1k_runs,  player = 5, game_name = "Game 4 (Roulette)", outcome_var = "low_high", outcome_name = "Low / High number landed")
visualize_results(game_result = player_5_game_4_10k_runs, player = 5, game_name = "Game 4 (Roulette)", outcome_var = "low_high", outcome_name = "Low / High number landed")
