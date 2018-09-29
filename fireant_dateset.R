# create the fire ant dataset

library(stringr)

alabama <- "Autauga (1953), Baldwin (1931), Barbour (1958), Bibb (1958), Blount (1966), Bullock (1958), Butler (1958), Calhoun (1958), Chambers (1961), Cherokee (1975), Chilton (1953), Choctaw (1953), Clarke (1939), Clay (1961), Cleburne (1966), Coffee (1962), Colbert (1977), Conecuh (1939), Coosa (1961), Covington (1958), CrenShaw (1938), Cullman (1969), Dale (1938), Dallas (1953), DeKalb (1984), Elmore (1958), Escambia (1939), Etowah (1958), Fayette (1966). Franklin (1975), Geneva (1958), Greene (1958), Hale (1958), Henry (1958), Houston (1958), Jackson (1988), Jefferson (1958), Lamar (1960), Lauderdale (1977), Lawrence (1975), Lee (1958), Limestone (1958), Lowndes (1953), Madison (1984), Marengo (1953), Marion (1966), Marshall (1976), Mobile (1918), Monroe (1939), Montgomery (1953), Morgan (1958), Perry (1933), Pickens (1958), Pike (1953), Randolph (1969), Russell (1958), St.Clair (1960), Shelby (1959), Sumter (1953), Talladega (1959), Tallapoosa (1961), Tuscaloosa (1958), Walker (1958), Washington (1939), Wilcox (1953), Winston (1975)"

split_text <- str_split(alabama, " ") %>%
  .[[1]] %>%
  str_replace("\\(","") %>%
  str_replace("\\)","") %>%
  str_replace("\\,","")

# how many county-year pair
n <- length(split_text)/2

# create vectors to save the splited county and year info
county <- rep(NA,n)
year <- rep(NA,n)

# put county and year into 2 vectors
for(i in 1:n){
  county[i] <- split_text[2*i-1]
  year[i] <- split_text[2*i]
}

fire_ant_dat_1 <- data.frame(state="Alabama", county=county,year=year)

#####

arkansas <- "Ashley (1963), Bradley (1972), Calhoun (1977), Chicot (1973), Cleveland (1983), Columbia (1975), Dallas (1987), Desha (1983), Drew (1976), Grant (1991), Hempstead (1987), HotSpring (1995), Howard (1988), Jefferson (1987), Lafayette (1972), Lincoln (1987), LittleRiver (1987), Miller (1977), Nevada (1987), Ouachita (1983), Union (1958)"

split_text <- str_split(arkansas, " ") %>%
  .[[1]] %>%
  str_replace("\\(","") %>%
  str_replace("\\)","") %>%
  str_replace("\\,","")

split_text[23] <- "Hot Spring"
split_text[33] <- "Little River"

# how many county-year pair
n <- length(split_text)/2

# create vectors to save the splited county and year info
county <- rep(NA,n)
year <- rep(NA,n)

# put county and year into 2 vectors
for(i in 1:n){
  county[i] <- split_text[2*i-1]
  year[i] <- split_text[2*i]
}

fire_ant_dat_2 <- data.frame(state="Arkansas", county=county,year=year)