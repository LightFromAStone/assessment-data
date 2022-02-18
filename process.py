log_file = open("um-server-01.txt") #opens the text file and assigns it to log_file


def sales_reports(log_file): # declares a funcntion
    for line in log_file: # loop line by line over the text file
        line = line.rstrip() # removes trailing characters, specifically whitespace
        day = line[0:3] # selects the portion of the line that contains the day
        if day == "Mon": # checks if day selected is Mon (originally Tue)
            print(line) # prints that line if it is Mon 


sales_reports(log_file) # invocation of the function
