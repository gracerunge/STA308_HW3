#* STA 308 Homework 3
#* 
#* Author: Grace Runge
#* 
#* Date: 10/26/2023
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
    print("not number")
  } else {
    print("number!")
    numbers_list <- c(numbers_list, first_num_check)
  }
  numbers_list
}


AddItUp()







