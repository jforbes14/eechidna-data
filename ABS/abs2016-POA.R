## This script creates the abs2016 dataframe from the ABS Census 2016 Datapacks
## Metrics are consistent with Census from 2001 and 2006.
## The individual csv files must be held locally. They come from a zip file and can be downloaded from:
## https://datapacks.censusdata.abs.gov.au/datapacks/
## Select: 2016 Census Datapacks, General Community Profile, Commonwealth Electoral Divisons
## Download for all of Australia
## Set your own working directory (at start) and export directory for write_rds (at end)

library(tidyverse)
library(readxl)

## Set working directory
setwd("/Users/Jeremy/Documents/R/Data/Raw")


G1_Main<- read_csv("./2016_GCP_POA_for_AUS_short-header/2016 Census GCP Postal Areas for AUST/2016Census_G01_AUS_POA.csv")
G02_Medians <- read_csv("./2016_GCP_POA_for_AUS_short-header/2016 Census GCP Postal Areas for AUST/2016Census_G02_AUS_POA.csv")
G06_Marriage <- read_csv("./2016_GCP_POA_for_AUS_short-header/2016 Census GCP Postal Areas for AUST/2016Census_G06_AUS_POA.csv")
G09_BornOverseas <- 
  cbind(read_csv("./2016_GCP_POA_for_AUS_short-header/2016 Census GCP Postal Areas for AUST/2016Census_G09A_AUS_POA.csv"), 
        read_csv("./2016_GCP_POA_for_AUS_short-header/2016 Census GCP Postal Areas for AUST/2016Census_G09B_AUS_POA.csv"), 
        read_csv("./2016_GCP_POA_for_AUS_short-header/2016 Census GCP Postal Areas for AUST/2016Census_G09C_AUS_POA.csv"), 
        read_csv("./2016_GCP_POA_for_AUS_short-header/2016 Census GCP Postal Areas for AUST/2016Census_G09D_AUS_POA.csv"), 
        read_csv("./2016_GCP_POA_for_AUS_short-header/2016 Census GCP Postal Areas for AUST/2016Census_G09E_AUS_POA.csv"), 
        read_csv("./2016_GCP_POA_for_AUS_short-header/2016 Census GCP Postal Areas for AUST/2016Census_G09F_AUS_POA.csv"), 
        read_csv("./2016_GCP_POA_for_AUS_short-header/2016 Census GCP Postal Areas for AUST/2016Census_G09G_AUS_POA.csv"), 
        read_csv("./2016_GCP_POA_for_AUS_short-header/2016 Census GCP Postal Areas for AUST/2016Census_G09H_AUS_POA.csv"))


G13D_LanguageHome <- read_csv("./2016_GCP_POA_for_AUS_short-header/2016 Census GCP Postal Areas for AUST/2016Census_G13D_AUS_POA.csv")
G14_Religion <- read_csv("./2016_GCP_POA_for_AUS_short-header/2016 Census GCP Postal Areas for AUST/2016Census_G14_AUS_POA.csv")
G15_Study <- read_csv("./2016_GCP_POA_for_AUS_short-header/2016 Census GCP Postal Areas for AUST/2016Census_G15_AUS_POA.csv")
G16A_HighSchool <- read_csv("./2016_GCP_POA_for_AUS_short-header/2016 Census GCP Postal Areas for AUST/2016Census_G16A_AUS_POA.csv")
G16B_HighSchool <- read_csv("./2016_GCP_POA_for_AUS_short-header/2016 Census GCP Postal Areas for AUST/2016Census_G16B_AUS_POA.csv")
G17B_Income <- read_csv("./2016_GCP_POA_for_AUS_short-header/2016 Census GCP Postal Areas for AUST/2016Census_G17B_AUS_POA.csv")
G17C_Income <- read_csv("./2016_GCP_POA_for_AUS_short-header/2016 Census GCP Postal Areas for AUST/2016Census_G17C_AUS_POA.csv")
G19_Volunteer <- read_csv("./2016_GCP_POA_for_AUS_short-header/2016 Census GCP Postal Areas for AUST/2016Census_G19_AUS_POA.csv")
G25_Family <- read_csv("./2016_GCP_POA_for_AUS_short-header/2016 Census GCP Postal Areas for AUST/2016Census_G25_AUS_POA.csv")
G28_FamilyIncome <- read_csv("./2016_GCP_POA_for_AUS_short-header/2016 Census GCP Postal Areas for AUST/2016Census_G28_AUS_POA.csv")
G29_HouseholdIncome <- read_csv("./2016_GCP_POA_for_AUS_short-header/2016 Census GCP Postal Areas for AUST/2016Census_G29_AUS_POA.csv")
G31_NumberInHouse <- read_csv("./2016_GCP_POA_for_AUS_short-header/2016 Census GCP Postal Areas for AUST/2016Census_G31_AUS_POA.csv")
G33_Tenure <- read_csv("./2016_GCP_POA_for_AUS_short-header/2016 Census GCP Postal Areas for AUST/2016Census_G33_AUS_POA.csv")
G36_Rent <- read_csv("./2016_GCP_POA_for_AUS_short-header/2016 Census GCP Postal Areas for AUST/2016Census_G36_AUS_POA.csv")
G37_Internet <- read_csv("./2016_GCP_POA_for_AUS_short-header/2016 Census GCP Postal Areas for AUST/2016Census_G37_AUS_POA.csv")
G40_Employ <- read_csv("./2016_GCP_POA_for_AUS_short-header/2016 Census GCP Postal Areas for AUST/2016Census_G40_AUS_POA.csv")
G42_Address <- read_csv("./2016_GCP_POA_for_AUS_short-header/2016 Census GCP Postal Areas for AUST/2016Census_G42_AUS_POA.csv")
G46B_Uni <- read_csv("./2016_GCP_POA_for_AUS_short-header/2016 Census GCP Postal Areas for AUST/2016Census_G46B_AUS_POA.csv")
G51_Industry <- 
  cbind(read_csv("./2016_GCP_POA_for_AUS_short-header/2016 Census GCP Postal Areas for AUST/2016Census_G51A_AUS_POA.csv"),
        read_csv("./2016_GCP_POA_for_AUS_short-header/2016 Census GCP Postal Areas for AUST/2016Census_G51B_AUS_POA.csv"),
        read_csv("./2016_GCP_POA_for_AUS_short-header/2016 Census GCP Postal Areas for AUST/2016Census_G51C_AUS_POA.csv"),
        read_csv("./2016_GCP_POA_for_AUS_short-header/2016 Census GCP Postal Areas for AUST/2016Census_G51D_AUS_POA.csv"))
G57_Occupation <- 
  cbind(read_csv("./2016_GCP_POA_for_AUS_short-header/2016 Census GCP Postal Areas for AUST/2016Census_G57A_AUS_POA.csv"),
        read_csv("./2016_GCP_POA_for_AUS_short-header/2016 Census GCP Postal Areas for AUST/2016Census_G57B_AUS_POA.csv"))

new_POA_abs2016 <- G1_Main %>% mutate(
  POA = POA_CODE_2016,
  
  #G01
  Population = Tot_P_P,
  Age00_04 = (Age_0_4_yr_P/Tot_P_P)*100, 
  Age05_14 = (Age_5_14_yr_P/Tot_P_P)*100,
  Age15_19 = (Age_15_19_yr_P/Tot_P_P)*100,
  Age20_24 = (Age_20_24_yr_P/Tot_P_P)*100,
  Age25_34 = (Age_25_34_yr_P/Tot_P_P)*100,
  Age35_44 = (Age_35_44_yr_P/Tot_P_P)*100,
  Age45_54 = (Age_45_54_yr_P/Tot_P_P)*100,
  Age55_64 = (Age_55_64_yr_P/Tot_P_P)*100,
  Age65_74 = (Age_65_74_yr_P/Tot_P_P)*100,
  Age75_84 = (Age_75_84_yr_P/Tot_P_P)*100,
  Age85plus = (Age_85ov_P/Tot_P_P)*100,
  AusCitizen = (Australian_citizen_P / Tot_P_P)*100,
  BornOverseas = (Birthplace_Elsewhere_P/ (Birthplace_Elsewhere_P + Birthplace_Australia_P))*100,
  Indigenous = (Indigenous_P_Tot_P/Tot_P_P)*100,
  OtherLanguageHome = (Lang_spoken_home_Oth_Lang_P/ (Lang_spoken_home_Oth_Lang_P + Lang_spoken_home_Eng_only_P))*100,
  EnglishOnly = 100 - OtherLanguageHome,
  
  #G02
  AverageHouseholdSize = G02_Medians$Average_household_size,
  MedianHouseholdIncome = G02_Medians$Median_tot_hhd_inc_weekly,
  MedianFamilyIncome = G02_Medians$Median_tot_fam_inc_weekly,
  MedianRent = G02_Medians$Median_rent_weekly,
  MedianLoanPay = G02_Medians$Median_mortgage_repay_monthly,
  MedianAge = G02_Medians$Median_age_persons,
  MedianPersonalIncome = G02_Medians$Median_tot_prsnl_inc_weekly,
  
  #G06
  Married = (G06_Marriage$P_Tot_Marrd_reg_marrge/G06_Marriage$P_Tot_Total)*100,
  DeFacto = (G06_Marriage$P_Tot_Married_de_facto/G06_Marriage$P_Tot_Total)*100,
  
  #G09
  BornOverseas_NS = (G09_BornOverseas$P_COB_NS_Tot / G09_BornOverseas$P_Tot_Tot)*100,
  
  Born_UK = ((G09_BornOverseas$P_England_Tot + G09_BornOverseas$P_Wales_Tot + G09_BornOverseas$P_Scotland_Tot + G09_BornOverseas$P_Nthern_Ireland_Tot) / (G09_BornOverseas$P_Tot_Tot)) * 100,
  
  Born_MidEast = ((G09_BornOverseas$P_Afghanistan_Tot + G09_BornOverseas$P_Egypt_Tot + G09_BornOverseas$P_Iran_Tot + G09_BornOverseas$P_Lebanon_Tot + G09_BornOverseas$P_Turkey_Tot) / (G09_BornOverseas$P_Tot_Tot)) * 100,
  
  Born_SE_Europe = ((G09_BornOverseas$P_Bosnia_Herzegov_Tot + G09_BornOverseas$P_Croatia_Tot + G09_BornOverseas$P_Greece_Tot + G09_BornOverseas$P_FYROM_Tot + G09_BornOverseas$P_SE_Europe_nfd_Tot) / (G09_BornOverseas$P_Tot_Tot)) * 100,
  
  Born_Asia = ((G09_BornOverseas$P_Bangladesh_Tot + G09_BornOverseas$P_Cambodia_Tot + G09_BornOverseas$P_China_Tot + G09_BornOverseas$P_Hong_Kong_Tot + G09_BornOverseas$P_Indonesia_Tot + G09_BornOverseas$P_Indonesia_Tot + G09_BornOverseas$P_Japan_Tot + G09_BornOverseas$P_Korea_South_Tot + G09_BornOverseas$P_Malaysia_Tot + G09_BornOverseas$P_Nepal_Tot + G09_BornOverseas$P_Pakistan_Tot + G09_BornOverseas$P_Philippines_Tot + G09_BornOverseas$P_Singapore_Tot + G09_BornOverseas$P_Sri_Lanka_Tot + G09_BornOverseas$P_Thailand_Tot + G09_BornOverseas$P_Taiwan_Tot + G09_BornOverseas$P_Vietnam_Tot) / (G09_BornOverseas$P_Tot_Tot)) * 100,
  
  #G13
  Language_NS = (G13D_LanguageHome$P_Tot_NS / G13D_LanguageHome$P_Tot_Tot)*100,
  
  #G14
  Christianity = (G14_Religion$Christianity_Tot_P/(G14_Religion$Tot_P))*100,
  Anglican = (G14_Religion$Christianity_Anglican_P/(G14_Religion$Tot_P))*100,
  Catholic = (G14_Religion$Christianity_Catholic_P/(G14_Religion$Tot_P))*100,
  Buddhism = (G14_Religion$Buddhism_P/(G14_Religion$Tot_P))*100,
  Islam = (G14_Religion$Islam_P/(G14_Religion$Tot_P))*100,
  Judaism = (G14_Religion$Judaism_P/(G14_Religion$Tot_P))*100,
  OtherChrist = ((G14_Religion$Christianity_Tot_P - G14_Religion$Christianity_Anglican_P - G14_Religion$Christianity_Catholic_P)/(G14_Religion$Tot_P))*100,
  #Other_NonChrist = (1- ((G14_Religion$Christianity_Tot_P - G14_Religion$SB_OSB_NRA_NR_P)/(G14_Religion$Tot_P)))*100,
  NoReligion = (G14_Religion$SB_OSB_NRA_NR_P/(G14_Religion$Tot_P))*100,
  Religion_NS = (G14_Religion$Religious_affiliation_ns_P/G14_Religion$Tot_P)*100,
  Other_NonChrist = 100 - NoReligion - Christianity,

  #G15
  CurrentlyStudying = (G15_Study$Tot_P / Tot_P_P)*100, #of total population
  
  #G16
  HighSchool = (G16A_HighSchool$P_Y12e_Tot/(G16B_HighSchool$P_Tot_Tot))*100,
  HighSchool_NS = (G16B_HighSchool$P_Hghst_yr_schl_ns_Tot/G16B_HighSchool$P_Tot_Tot)*100, #of age appropriate population
  
  #G17C
  PersonalIncome_NS = (G17C_Income$P_PI_NS_ns_Tot / G17C_Income$P_Tot_Tot)*100,
  
  #G19
  Volunteer = (G19_Volunteer$P_Tot_Volunteer / (G19_Volunteer$P_Tot_Tot))*100,
  Volunteer_NS = (G19_Volunteer$P_Tot_Voluntary_work_ns / G19_Volunteer$P_Tot_Tot)*100,
  
  #G25
  FamilyRatio = G25_Family$Total_P/G25_Family$Total_F, #average number of people per family
  Couple_NoChild_House = (G25_Family$CF_no_children_F/G25_Family$Total_F)*100,
  Couple_WChild_House = (G25_Family$CF_Total_F/G25_Family$Total_F)*100,
  OneParent_House = (G25_Family$OPF_Total_F/G25_Family$Total_F)*100,
  
  #G28
  FamilyIncome_NS = ((G28_FamilyIncome$Partial_income_stated_Tot + G28_FamilyIncome$All_incomes_ns_Tot) / G28_FamilyIncome$Tot_Tot)*100,
  #includes no income and partial income entries
  
  #G29
  HouseholdIncome_NS = ((G29_HouseholdIncome$Partial_income_stated_Tot + G29_HouseholdIncome$All_incomes_not_stated_Tot) / G29_HouseholdIncome$Tot_Tot)*100,
  #includes no income and partial income entries
  
  #G31
  SP_House = (G31_NumberInHouse$Num_Psns_UR_1_Total/G31_NumberInHouse$Total_Total)*100,
  
  #G33
  Tenure_NS = (G33_Tenure$Ten_type_NS_Total / G33_Tenure$Total_Total)*100,
  Owned = (G33_Tenure$O_OR_Total/(G33_Tenure$Total_Total))*100,
  Mortgage = ((G33_Tenure$O_MTG_Total)/(G33_Tenure$Total_Total))*100,
  Renting = (G33_Tenure$R_Tot_Total/(G33_Tenure$Total_Total))*100,
  PublicHousing = (G33_Tenure$R_ST_h_auth_Total/(G33_Tenure$Total_Total))*100,
  
  #G36
  Rent_NS = (G36_Rent$Rent_ns_Tot / G36_Rent$Tot_Tot)*100,
  
  #G37
  InternetAccess = (G37_Internet$IA_Total/(G37_Internet$Total_Total))*100,
  InternetAccess_NS = (G37_Internet$IC_not_stated_Total / G37_Internet$Total_Total)*100,
  
  #G40
  Unemployed = G40_Employ$Percent_Unem_loyment_P,
  LFParticipation = G40_Employ$Percnt_LabForc_prticipation_P,
  
  #G42
  DiffAddress = (1 - (G42_Address$Sme_Usl_ad_5_yr_ago_as_2016_P/(G42_Address$Tot_P)))*100,
  
  #G46B
  BachelorAbv = ((G46B_Uni$P_BachDeg_Total + G46B_Uni$P_PGrad_Deg_Total + G46B_Uni$P_GradDip_and_GradCert_Total) / (Population*(100 - Age00_04 - Age05_14)/100))*100,
  DipCert = ((G46B_Uni$P_AdvDip_and_Dip_Total + G46B_Uni$P_Cert_Lev_Tot_Total) /(Population*(100 - Age00_04 - Age05_14)/100))*100,
  University_NS = ((G46B_Uni$P_Lev_Edu_IDes_Total + G46B_Uni$P_Lev_Edu_NS_Total) / (Population*(100 - Age00_04 - Age05_14)/100))*100,
  
  #G51
  Extractive = ((G51_Industry$P_Ag_For_Fshg_Tot + G51_Industry$P_Mining_Tot + G51_Industry$P_El_Gas_Wt_Waste_Tot) / (G51_Industry$P_Tot_Tot)) * 100,
  Transformative = ((G51_Industry$P_Constru_Tot + G51_Industry$P_Manufact_Tot) / (G51_Industry$P_Tot_Tot)) * 100,
  Distributive = ((G51_Industry$P_WhlesaleTde_Tot + G51_Industry$P_RetTde_Tot + G51_Industry$P_Trans_post_wrehsg_Tot) / (G51_Industry$P_Tot_Tot)) * 100,
  Finance = (G51_Industry$P_Fin_Insur_Tot / (G51_Industry$P_Tot_Tot)) * 100,
  SocialServ = ((G51_Industry$P_Educ_trng_Tot + G51_Industry$P_HlthCare_SocAs_Tot + G51_Industry$P_Art_recn_Tot) / (G51_Industry$P_Tot_Tot)) * 100,
  
  #G57
  ManagerAdminClericalSales = ((G57_Occupation$P_Tot_Managers + G57_Occupation$P_Tot_ClericalAdminis_W + G57_Occupation$P_Tot_Sales_W) / (G57_Occupation$P_Tot_Tot))*100,
  Professional = (G57_Occupation$P_Tot_Professionals / (G57_Occupation$P_Tot_Tot))*100,
  Tradesperson = (G57_Occupation$P_Tot_TechnicTrades_W / (G57_Occupation$P_Tot_Tot))*100,
  Laborer = (G57_Occupation$P_Tot_Labourers / (G57_Occupation$P_Tot_Tot))*100,
  
  #Area
  #Area = as.numeric(Area_sqkm$Area_sqkm),
  
  #Other
  EmuneratedElsewhere = 0,
  InternetUse = 0,
  InternetUse_NS = 0
)


POA_abs2016 <- new_POA_abs2016[,c(110:ncol(new_POA_abs2016))] %>%
  mutate(InternetUse_NS = 0)

## ABS includes some random error when counts are low, to ensure privacy
## Any metric that exceeds 100% is therefore reduced to 100%

# Minimum function
max100 <- function(x) {
  val = min(100, x)
  return(val)
}
# Maximum function
min0 <- function(x) {
  val = max(0, x)
  return(val)
}


for (i in c(3:18, 26:49, 51:ncol(POA_abs2016))) {
  POA_abs2016[,i] = sapply(as.matrix(POA_abs2016[,i]), max100) # maximum of 100%
  POA_abs2016[,i] = sapply(as.matrix(POA_abs2016[,i]), min0) # minimum of 0%
}


# Order by post code
POA_abs2016 <- POA_abs2016[order(POA_abs2016$POA),]

# Area
Area_POA_16 <- read_excel("./2016_GCP_POA_for_AUS_short-header/Metadata/2016Census_geog_desc_1st_and_2nd_release.xlsx", sheet = 6) %>%
  filter(ASGS_Structure == "POA")
Area_POA_16 <- Area_POA_16[order(Area_POA_16$ASGS_Code_2016),]
POA_abs2016$Area <- Area_POA_16$`Area sqkm`

# Change any Inf and NaN to NA
for (i in 1:ncol(POA_abs2016)) {
  POA_abs2016[which(is.nan(POA_abs2016[,i] %>% unlist)), i] <- NA
  POA_abs2016[which(is.infinite(POA_abs2016[,i] %>% unlist)), i] <- NA
}

# Remove prefix from POA
POA_abs2016$POA <- substr(POA_abs2016$POA, 4, 7)

# Check that min/max for each metric are [0,100]
POA_abs2016[,-1] %>% sapply(quantile, na.rm = TRUE) %>% t() %>% View()

# Inflation
inflation_rates <- c(1.151, 1.330, 1.461)
POA_abs2016 <- POA_abs2016 %>%
  mutate(MedianFamilyIncome = MedianFamilyIncome/inflation_rates[3],
         MedianHouseholdIncome = MedianHouseholdIncome/inflation_rates[3],
         MedianLoanPay = MedianLoanPay/inflation_rates[3],
         MedianPersonalIncome = MedianPersonalIncome/inflation_rates[3],
         MedianRent = MedianRent/inflation_rates[3])

# Change BornOverseas to BornElsewhere
POA_abs2016 <- POA_abs2016 %>%
  mutate(BornElsewhere = BornOverseas - Born_MidEast - Born_SE_Europe - Born_UK) %>% 
  select(-BornOverseas)

# Save
save(POA_abs2016, file = "/Users/Jeremy/Documents/R/Data/Clean/POA_abs2016.rda")
