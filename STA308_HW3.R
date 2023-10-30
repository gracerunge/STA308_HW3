#* STA 308 Homework 3
#* 
#* Author: Grace Runge
#* 
#* Date: 10/30/2023
#* 
#* Purpose: Write a function called AddItUp().
#*    The function will ask a user to input a number and they will 
#*    continue to be prompted to enter another number until they wish 
#*    to stop. The function will then output the numbers entered by 
#*    the user and their sum.
#* 

AddItUp <- function(){
  numbers_list <- list()
  first_num <- readline(prompt = "Please enter a number:")
  first_num_check <- as.numeric(first_num)
  if(is.na(first_num_check)){
    print("Not a valid number")
  } else {
    numbers_list <- c(numbers_list, first_num_check)
  }
  new_number <- readline(prompt="Do you want to enter another number? ")
  ok_yes <- list("yes", "yeS", "yEs", "Yes", "yES", "YEs", "YES", "y", "Y")
  while(new_number %in% ok_yes){
    num <- readline(prompt = "Enter your number:")
    num_check <- as.numeric(num)
    if(is.na(num_check)){
      print("Not a valid number")
    } else {
      numbers_list <- c(numbers_list, num_check)
    }
    new_number <- readline(prompt="Do you want to enter another number? ")
  }
  Numbers <- unlist(numbers_list)
  Total <- sum(c(Numbers))
  NumNumbers <- length(Numbers)
  output <- list(Total=Total, NumNumbers=NumNumbers, Numbers=Numbers)
  output
}

AddItUp()







