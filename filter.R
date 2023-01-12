library(dplyr)
exam <- read.csv("/Users/seungwoo/Desktop/R/Data/csv_exam.csv")
head(exam) 

exam %>% filter(class == 1)

exam %>% filter(class != 1)

exam %>% filter(class == 2 & english >= 80)

exam %>% filter(english >= 90 | math >= 90 | science >= 90)

exam %>% filter(class %in% c(1,3,5))


# mpg 데이터로 filter 이용하기

low_displ <- mpg %>% filter(displ <= 4)
mean(low_displ$hwy)
high_displ <- mpg %>% filter(displ >= 5)
mean(high_displ$hwy)

# low_displ의 hwy 평균이 high_displ의 평균보다 크다.

# audi와 toyota의 cty가 더 높은 것

audi_cty <- mpg %>% filter(manufacturer == "audi")
mean(audi_cty$cty)
toyota_cty <- mpg %>% filter(manufacturer == "toyota")
mean(toyota_cty$cty)

# toyota의 cty 평균이 더 높다

# "chevrolet", "ford", "honda" 자동차의 고속도로 연비 평균

three_hwy_mean <- mpg %>% filter(manufacturer %in% c("chevrolet" ,"ford", "honda"))

mean(three_hwy_mean$hwy)


