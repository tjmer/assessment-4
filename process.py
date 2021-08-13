#The first line is opening the um-server-01.txt file to access the data.
log_file = open("um-server-01.txt")

#This is the declaration of the function to go through the opened file to process data.
def sales_reports(log_file):
    #This line is a for in loop to go through the info on the file.  The word "line" is a type of nameing convention,
    #it can be anything.
    for line in log_file:
        #This line is removing the "\n" at the end of each line.
        line = line.rstrip()
        #This line is setting day as a veriable equal to array line index 0.
        day = line[0:3]
        #an if statement saying if the index in the array is equal to the day.
        if day == "Mon":
            #If the day equals the string print it.
            print(line)

#close file.
sales_reports(log_file)
