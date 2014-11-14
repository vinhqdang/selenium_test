data = read.table ("analyze.txt", header = TRUE)
data$delay <- data$delay / 1000
data_1_1 <- data [data$user==1 & data$speed == 1,]
data_1_2 <- data [data$user==1 & data$speed == 2,]
data_1_4 <- data [data$user==1 & data$speed == 4,]
data_1_5 <- data [data$user==1 & data$speed == 5,]
data_1_6 <- data [data$user==1 & data$speed == 6,]
data_1_8 <- data [data$user==1 & data$speed == 8,]
data_1_10 <- data [data$user==1 & data$speed == 10,]
data_2_1 <- data [data$user==2 & data$speed == 1,]
data_2_2 <- data [data$user==2 & data$speed == 2,]
data_2_4 <- data [data$user==2 & data$speed == 4,]
data_2_5 <- data [data$user==2 & data$speed == 5,]
data_2_6 <- data [data$user==2 & data$speed == 6,]
data_2_8 <- data [data$user==2 & data$speed == 8,]
data_2_10 <- data [data$user==2 & data$speed == 10,]
data_5_1 <- data [data$user==5 & data$speed == 1,]
data_5_2 <- data [data$user==5 & data$speed == 2,]
data_5_4 <- data [data$user==5 & data$speed == 4,]
data_5_5 <- data [data$user==5 & data$speed == 5,]
data_5_6 <- data [data$user==5 & data$speed == 6,]
data_5_8 <- data [data$user==5 & data$speed == 8,]
data_5_10 <- data [data$user==5 & data$speed == 10,]
data_10_1 <- data [data$user==10 & data$speed == 1,]
data_10_2 <- data [data$user==10 & data$speed == 2,]
data_10_4 <- data [data$user==10 & data$speed == 4,]
data_10_5 <- data [data$user==10 & data$speed == 5,]
data_10_6 <- data [data$user==10 & data$speed == 6,]
data_10_8 <- data [data$user==10 & data$speed == 8,]
data_10_10 <- data [data$user==10 & data$speed == 10,]
data_20_1 <- data [data$user==20 & data$speed == 1,]
data_20_2 <- data [data$user==20 & data$speed == 2,]
data_20_4 <- data [data$user==20 & data$speed == 4,]
data_20_5 <- data [data$user==20 & data$speed == 5,]
data_20_6 <- data [data$user==20 & data$speed == 6,]
data_20_8 <- data [data$user==20 & data$speed == 8,]
data_20_10 <- data [data$user==20 & data$speed == 10,]
data_30_1 <- data [data$user==30 & data$speed == 1,]
data_30_2 <- data [data$user==30 & data$speed == 2,]
data_30_4 <- data [data$user==30 & data$speed == 4,]
data_30_5 <- data [data$user==30 & data$speed == 5,]
data_30_6 <- data [data$user==30 & data$speed == 6,]
data_30_8 <- data [data$user==30 & data$speed == 8,]
data_30_10 <- data [data$user==30 & data$speed == 10,]
data_40_1 <- data [data$user==40 & data$speed == 1,]
data_50_1 <- data [data$user==50 & data$speed == 1,]


col_name = c ("u=1,s=1", "u=1,s=2", "u=1,s=4", "u=1,s=5","u=1,s=6", "u=1,s=8", "u=1,s=10", "2 u, s= 1","2 u, s= 2", "u=2,s= 4","u=2,s= 5","u=2,s=6", "u=2,s=8", "2 u, s= 10","5 u, s= 1","5 u, s= 2", "5 u, s= 4","u=5,s=5","u=5,s=6", "u=5,s=8", "5 u, s= 10","10 u, s= 1","10 u, s= 2", "10 u, s= 4","u=10,s=5","u=10,s=6", "u=10,s=8", "10 u, s= 10","20 u, s= 1","20 u, s= 2","20 u, s= 4","u=20,s=5","u=20,s=6", "u=20,s=8", "20 u, s= 10","30 u, s= 1","30 u, s= 2","30 u, s= 4","u=30,s=5","u=30,s=6","u=30,s=8","30 u, s= 10","u=40,s= 1","u=50,s= 1")
box_color = c("blue","green","purple","yellow","orange","pink","red")
boxplot (data_1_1$delay, data_1_2$delay, data_1_4$delay, data_1_5$delay, data_1_6$delay,data_1_8$delay,data_1_10$delay, data_2_1$delay, data_2_2$delay, data_2_4$delay, data_2_5$delay, data_2_6$delay, data_2_8$delay, data_2_10$delay, data_5_1$delay, data_5_2$delay, data_5_4$delay, data_5_5$delay, data_5_6$delay, data_5_8$delay, data_5_10$delay, data_10_1$delay, data_10_2$delay, data_10_4$delay, data_10_5$delay, data_10_6$delay, data_10_8$delay, data_10_10$delay, data_20_1$delay, data_20_2$delay, data_20_4$delay, data_20_5$delay, data_20_6$delay, data_20_8$delay, data_20_10$delay, data_30_1$delay, data_30_2$delay, data_30_4$delay, data_30_5$delay, data_30_6$delay, data_30_8$delay, data_30_10$delay, data_40_1$delay, data_50_1$delay, ylab = "Delay in second", names = col_name, col = box_color, las = 2)


boxplot (data_2_1$delay, data_2_2$delay, data_2_5$delay, data_2_10$delay, data_5_1$delay, data_5_2$delay, data_5_5$delay, data_5_10$delay, data_10_1$delay, data_10_2$delay, data_10_5$delay, data_10_10$delay, data_20_1$delay, data_20_2$delay, data_20_5$delay, data_20_10$delay, data_30_1$delay, data_30_2$delay, data_30_5$delay, data_30_10$delay, data_40_1$delay, data_50_1$delay)
boxplot (data_2_1$delay, data_5_1$delay, data_10_1$delay, data_20_1$delay, data_30_1$delay, data_40_1$delay, data_50_1$delay)
boxplot (data_2_2$delay, data_5_2$delay, data_10_2$delay, data_20_2$delay, data_30_2$delay)
boxplot (data_2_5$delay, data_5_5$delay, data_10_5$delay, data_20_5$delay, data_30_5$delay)
boxplot (data_2_1$delay, data_2_2$delay, data_2_5$delay, data_2_10$delay, data_5_1$delay, data_5_2$delay, data_5_5$delay, data_5_10$delay, data_10_1$delay, data_10_2$delay, data_10_5$delay, data_10_10$delay, data_20_1$delay, data_20_2$delay, data_20_5$delay, data_20_10$delay, data_30_1$delay, data_30_2$delay, data_30_5$delay, data_30_10$delay, data_40_1$delay, data_50_1$delay, ylab = "Delay in second", names = c ("2 u, s= 1","2 u, s= 2","2 u, s= 5","2 u, s= 10","5 u, s= 1","5 u, s= 2","5 u, s= 5","5 u, s= 10","10 u, s= 1","10 u, s= 2","10 u, s= 5","10 u, s= 10","20 u, s= 1","20 u, s= 2","20 u, s= 5","20 u, s= 10","30 u, s= 1","30 u, s= 2","30 u, s= 5","30 u, s= 10","40 u, s= 1","50 u, s= 1"), las = 2)
