exam %>% select(math)

exam %>% select(-math)

exam %>%
  filter(class == 1) %>%
  select(english)

exam %>% 
  select(id, math) %>% 
  head

exam %>% arrange(math)

exam %>% arrange(desc(math))

exam %>% arrange(class, math)

# mpg 데이터를 이용해 분석하기

# audi가 생산한 자동차 중 hwy가 높은 5개의 자동차의 데이터를 추출

mpg %>%
  filter(manufacturer == "audi") %>% 
  arrange(desc(hwy)) %>% 
  select(hwy) %>% 
  head(5)
