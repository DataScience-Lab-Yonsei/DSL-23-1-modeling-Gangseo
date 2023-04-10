# load data
train <- read.csv("/Users/jb/Documents/공모전/train.csv")
test <- read.csv("/Users/jb/Documents/공모전/test.csv")

# drop columns
trn <- train[,c(-1, -2, -3)]
trn <- trn[, c(-14, -15, -16)]

# fit the linear regression model
m <- lm(주차면수 ~ ., data=trn)

# model selection
m2 <- step(m, direction="both")
summary(m2)

# make new table
자치구 <- test$자치구
pred <- predict(m2, test)
table$예측값 <- pred
table$실제값 <- test$주차면수
table$부족율 <- (table$예측값 - table$실제값) / table$실제값
table <- table[order(-table$부족율),]