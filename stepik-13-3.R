my_vector <- c(-5:5)
my_vector2 <- my_vector[my_vector < (mean(my_vector)+sd(my_vector)) & my_vector > (mean(my_vector)-sd(my_vector))]
my_vector_2 <- my_vector[abs(my_vector - mean(my_vector)) < sd(my_vector)]
x_var <- read.csv("https://stepic.org/media/attachments/lesson/11481/evals.csv")
v_var <- read.csv("evals.csv")
ss <-  read.csv("tt.dat")

Lines <- "      candname party elecVotes
1 Barack Obama     D       365
2  John McCain     R       173"

# L <- readLines("myfile")  # read file; for demonstration use next line instead
L <- readLines(textConnection(Lines))

L2 <- sub("^ *\\d+ *", "", L)  # remove row numbers
tts <- read.csv(text = sub("^ *(.*\\S) +(\\S+) +(\\S+)$", "\\1,\\2,\\3", L2), as.is = TRUE)