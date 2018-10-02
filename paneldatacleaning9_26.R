colnames(data2017weight)[1] <- "Y16_KEY_LP"

#making subset panel data according to weight data
paneldata2016<-subset(data2016, (data2016$KEY %in% data2017weight$Y16_KEY_LP & data2016$KEY %in% data2017$Y16_KEY_LP))
paneldata2017<-subset(data2017, (data2017$Y16_KEY_LP %in% data2017weight$Y16_KEY_LP & data2017$Y16_KEY_LP %in% data2016$KEY))

#merge panel data by 16 key
colnames(paneldata2016)[1] <- "Y16_KEY_LP"
paneldata2016$YEAR<-2016
paneldata2017$YEAR<-2017

#delete variables not matching 2016
paneldata2016$Q9_11=NULL
paneldata2016$Q14_9=NULL
paneldata2016$Q19.1_10=NULL
paneldata2016$Q20.1_7=NULL
paneldata2016$Q25.1_7=NULL
paneldata2016$Q25.1_17=NULL
paneldata2016$Q26.1_9=NULL
paneldata2016$Q27.1_16=NULL
paneldata2016$Q32.2=NULL
paneldata2016$Q36=NULL
paneldata2016$Q40=NULL
paneldata2016$Q42=NULL
paneldata2016$Q45_12=NULL
paneldata2016$Q46_5=NULL
paneldata2016$Q46_14=NULL
paneldata2016$Q47_9=NULL
paneldata2016$Q51_11=NULL
paneldata2016$Q61_18=NULL
paneldata2016$Q69=NULL
paneldata2016$Q76=NULL
paneldata2016$Q77.1=NULL
paneldata2016$Q77.2=NULL
paneldata2016$Q77.3=NULL
paneldata2016$Q78_1=NULL
paneldata2016$Q78_2=NULL
paneldata2016$Q78_3=NULL
paneldata2016$Q78_4=NULL
paneldata2016$Q78_5=NULL
paneldata2016$Q79=NULL
paneldata2016$Q80.1_1=NULL
paneldata2016$Q80.1_2=NULL
paneldata2016$Q80.1_3=NULL
paneldata2016$Q80.1_4=NULL
paneldata2016$Q80.1_5=NULL
paneldata2016$Q80.1_6=NULL
paneldata2016$Q80.1_7=NULL
paneldata2016$Q80.1_8=NULL
paneldata2016$Q80.1_9=NULL
paneldata2016$Q80.1_10=NULL
paneldata2016$Q80.1_11=NULL
paneldata2016$Q80.1_12=NULL
paneldata2016$Q80.1_13=NULL
paneldata2016$Q80.1_14=NULL
paneldata2016$Q80.1_15=NULL
paneldata2016$Q80.1_16=NULL
paneldata2016$Q80.1_17=NULL
paneldata2016$Q80.1_18=NULL
paneldata2016$Q80.1_19=NULL
paneldata2016$Q80.1_20=NULL
paneldata2016$Q80.2=NULL
paneldata2016$Q89=NULL

#delete variables not matching 2017
paneldata2017$KEY=NULL

paneldata2017$Y17_Q6=NULL
paneldata2017$Y17_Q26_1_7=NULL
paneldata2017$Y17_Q35_1=NULL
paneldata2017$Y17_Q35_2=NULL
paneldata2017$Y17_Q41_1=NULL
paneldata2017$Y17_Q41_2=NULL
paneldata2017$Y17_Q41_3=NULL
paneldata2017$Y17_Q41_4=NULL
paneldata2017$Y17_Q41_5=NULL
paneldata2017$Y17_Q41_6=NULL
paneldata2017$Y17_Q41_7=NULL
paneldata2017$Y17_Q41_8=NULL
paneldata2017$Y17_BQN42_1_1=NULL
paneldata2017$Y17_BQN42_1_2=NULL
paneldata2017$Y17_BQN42_2_1=NULL
paneldata2017$Y17_BQN42_2_2=NULL
paneldata2017$Y17_BQN42_3_1=NULL
paneldata2017$Y17_BQN42_3_2=NULL
paneldata2017$Y17_BQN42_4_1=NULL
paneldata2017$Y17_BQN42_4_2=NULL
paneldata2017$Y17_BQN42_5_1=NULL
paneldata2017$Y17_BQN42_5_2=NULL
paneldata2017$Y17_Q43_1=NULL
paneldata2017$Y17_Q43_2=NULL
paneldata2017$Y17_Q43_3=NULL
paneldata2017$Y17_Q43_4=NULL
paneldata2017$Y17_Q44=NULL
paneldata2017$Y17_Q45=NULL
paneldata2017$Y17_Q47=NULL
paneldata2017$Y17_Q49_11=NULL
paneldata2017$Y17_Q50_5=NULL
paneldata2017$Y17_Q51_1=NULL
paneldata2017$Y17_Q51_2=NULL
paneldata2017$Y17_Q51_3=NULL
paneldata2017$Y17_Q51_4=NULL
paneldata2017$Y17_Q51_8=NULL
paneldata2017$Y17_Q67=NULL
paneldata2017$Y17_Q68_1=NULL
paneldata2017$Y17_Q68_2=NULL
paneldata2017$Y17_Q68_3=NULL
paneldata2017$Y17_Q69_1=NULL
paneldata2017$Y17_Q69_2=NULL
paneldata2017$Y17_Q70=NULL
paneldata2017$Y17_Q70H_1=NULL
paneldata2017$Y17_Q70H_2=NULL
paneldata2017$Y17_CQ8486_1=NULL
paneldata2017$Y17_CQ8486_2=NULL
paneldata2017$Y17_CQ8486_3=NULL
paneldata2017$Y17_CQ8587_1=NULL
paneldata2017$Y17_CQ8587_2=NULL
paneldata2017$Y17_CQ8587_3=NULL
paneldata2017$Y17_CQ8587_4=NULL
paneldata2017$Y17_Q96_1=NULL
paneldata2017$Y17_Q96_2=NULL
paneldata2017$Y17_Q96_3=NULL
paneldata2017$Y17_Q96_4=NULL
paneldata2017$Y17_Q96_5=NULL
paneldata2017$Y17_Q96_6=NULL
paneldata2017$Y17_Q96_7=NULL
paneldata2017$Y17_Q96_8=NULL
paneldata2017$Y17_Q96_9=NULL
paneldata2017$Y17_Q96_10=NULL
paneldata2017$Y17_Q99=NULL

#rename variables 2016 & 2017
library(dplyr)
oldname2016=c('Q1','Q2','Q3.1','Q3.2','Q4','Q5','Q6','Q7',
              'Q8.1','Q8.2','Q8.3','Q8.4','Q8.5','Q8.6','Q8.7','Q8.8','Q8.9','Q8.10',
              'Q9_1','Q9_2','Q9_3','Q9_4','Q9_5','Q9_6','Q9_7','Q9_8','Q9_9','Q9_10',
              'Q10','Q11','Q12','Q13',
              'Q14_1','Q14_2','Q14_3','Q14_4','Q14_5','Q14_6','Q14_7','Q14_8',
              'Q15.1.1','Q15.1.2','Q15.1.3','Q15.1.4',
              'Q15.2.1','Q15.2.2','Q15.2.3','Q15.2.4',
              'Q15.3.1','Q15.3.2','Q15.3.3',
              'Q16','Q17','Q18',
              'Q19.1_1','Q19.1_2','Q19.1_3','Q19.1_4','Q19.1_5','Q19.1_6','Q19.1_7','Q19.1_8','Q19.1_9',
              'Q19.2',
              'Q20.1_1','Q20.1_2','Q20.1_3','Q20.1_4','Q20.1_5','Q20.1_6',
              'Q20.2','Q21','Q22','Q23','Q24',
              'Q25.1_1','Q25.1_2','Q25.1_3','Q25.1_4','Q25.1_5','Q25.1_6',
              'Q25.1_8','Q25.1_9','Q25.1_10','Q25.1_11','Q25.1_12','Q25.1_13','Q25.1_14','Q25.1_15','Q25.1_16',
              'Q25.2',
              'Q26.1_1','Q26.1_2','Q26.1_3','Q26.1_4','Q26.1_5','Q26.1_6','Q26.1_7','Q26.1_8',
              'Q26.2',
              'Q27.1_1','Q27.1_2','Q27.1_3','Q27.1_4','Q27.1_5','Q27.1_6','Q27.1_7','Q27.1_8','Q27.1_9','Q27.1_10','Q27.1_11','Q27.1_12','Q27.1_13','Q27.1_14','Q27.1_15',
              'Q27.2','Q28','Q29','Q30','Q31','Q32.1','Q33','Q34.1','Q34.2','Q35','Q37','Q38','Q39',
              'Q41.1','Q41.2','Q41.3',
              'Q43','Q44',
              'Q45_1','Q45_2','Q45_3','Q45_4','Q45_5','Q45_6','Q45_7','Q45_8','Q45_9','Q45_10','Q45_11',
              'Q46_1','Q46_2','Q46_3','Q46_4',
              'Q46_6','Q46_7','Q46_8','Q46_9','Q46_10','Q46_11','Q46_12','Q46_13',
              'Q47_1','Q47_2','Q47_3','Q47_4','Q47_5','Q47_6','Q47_7','Q47_8',
              'Q48','Q49',
              'Q50.1','Q50.2','Q50.3','Q50.4','Q50.5','Q50.6','Q50.7','Q50.8',
              'Q51_1','Q51_2','Q51_3','Q51_4','Q51_5','Q51_6','Q51_7','Q51_8','Q51_9','Q51_10',
              'Q52','Q53','Q54','Q55','Q56',
              'Q57.1','Q57.2','Q57.3','Q57.4','Q57.5','Q57.6',
              'Q58.1','Q58.2','Q58.3','Q58.4','Q58.5',
              'Q59.1','Q59.2','Q59.3','Q59.4','Q59.5','Q59.6',
              'Q60',
              'Q61_1','Q61_2','Q61_3','Q61_4','Q61_5','Q61_6','Q61_7','Q61_8','Q61_9','Q61_10','Q61_11','Q61_12','Q61_13','Q61_14','Q61_15','Q61_16','Q61_17',
              'BQ62','BQ63','BQ64','BQ65','Q66','Q67','Q68','Q70',
              'Q71.1','Q71.2',
              'Q72',
              'Q73.1_1','Q73.1_2','Q73.1_3','Q73.1_4','Q73.1_5','Q73.1_6','Q73.1_7','Q73.1_8','Q73.1_9','Q73.1_10','Q73.1_11','Q73.1_12','Q73.1_13','Q73.1_14',
              'Q73.2','Q74',
              'Q75.1_1','Q75.1_2','Q75.1_3','Q75.1_4','Q75.1_5','Q75.1_6','Q75.1_7','Q75.1_8','Q75.1_9','Q75.1_10','Q75.1_11','Q75.1_12','Q75.1_13','Q75.1_14','Q75.1_15','Q75.1_16','Q75.1_17','Q75.1_18','Q75.1_19','Q75.1_20',
              'Q75.2',
              'Q81.1','Q81.2','Q81.3',
              'Q82',
              'QN83.1','QN83.2',
              'BQN83.3','BQN83.4','BQN83.5','BQN83.6',
              'QN83.7','QN83.8',
              'QN84.1','QN84.2','QN84.3','QN84.4',
              'Q85.1','Q85.2','Q85.3',
              'Q86','Q87',
              'Q88.1','Q88.2',
              'Q90','Q91','Q92')
oldname2017=c('Y17_Q1','Y17_Q2',
              'Y17_Q3_1','Y17_Q3_2',
              'Y17_Q4','Y17_Q9','Y17_Q10','Y17_Q11',
              'Y17_Q12_1','Y17_Q12_2','Y17_Q12_3','Y17_Q12_4','Y17_Q12_5','Y17_Q12_6','Y17_Q12_7','Y17_Q12_8','Y17_Q12_9','Y17_Q12_10',
              'Y17_Q14_1','Y17_Q14_2','Y17_Q14_3','Y17_Q14_4','Y17_Q14_5','Y17_Q14_6','Y17_Q14_7','Y17_Q14_8','Y17_Q14_9','Y17_Q14_10',
              'Y17_Q15','Y17_Q13','Y17_Q5','Y17_Q7',
              'Y17_Q8_1','Y17_Q8_2','Y17_Q8_3','Y17_Q8_4','Y17_Q8_5','Y17_Q8_6','Y17_Q8_7','Y17_Q8_8',
              'Y17_Q16_1_1','Y17_Q16_1_2','Y17_Q16_1_3','Y17_Q16_1_4',
              'Y17_Q16_2_1','Y17_Q16_2_2','Y17_Q16_2_3','Y17_Q16_2_4',
              'Y17_Q16_3_1','Y17_Q16_3_2','Y17_Q16_3_3',
              'Y17_Q17','Y17_Q18','Y17_Q19',
              'Y17_Q20_1_1','Y17_Q20_1_2','Y17_Q20_1_3','Y17_Q20_1_4','Y17_Q20_1_5','Y17_Q20_1_6','Y17_Q20_1_7','Y17_Q20_1_8','Y17_Q20_1_9',
              'Y17_Q20_2',
              'Y17_Q21_1_1','Y17_Q21_1_2','Y17_Q21_1_3','Y17_Q21_1_4','Y17_Q21_1_5','Y17_Q21_1_6',
              'Y17_Q21_2','Y17_Q22','Y17_Q23','Y17_Q24','Y17_Q25',
              'Y17_Q26_1_1','Y17_Q26_1_2','Y17_Q26_1_3','Y17_Q26_1_4','Y17_Q26_1_5','Y17_Q26_1_6',
              'Y17_Q26_1_8','Y17_Q26_1_9','Y17_Q26_1_10','Y17_Q26_1_11','Y17_Q26_1_12','Y17_Q26_1_13','Y17_Q26_1_14','Y17_Q26_1_15','Y17_Q26_1_16',
              'Y17_Q26_2',
              'Y17_Q27_1_1','Y17_Q27_1_2','Y17_Q27_1_3','Y17_Q27_1_4','Y17_Q27_1_5','Y17_Q27_1_6','Y17_Q27_1_7','Y17_Q27_1_8',
              'Y17_Q27_2',
              'Y17_Q28_1_1','Y17_Q28_1_2','Y17_Q28_1_3','Y17_Q28_1_4','Y17_Q28_1_5','Y17_Q28_1_6','Y17_Q28_1_7','Y17_Q28_1_8','Y17_Q28_1_9','Y17_Q28_1_10','Y17_Q28_1_11','Y17_Q28_1_12','Y17_Q28_1_13','Y17_Q28_1_14','Y17_Q28_1_15',
              'Y17_Q28_2',
              'Y17_Q29','Y17_Q30','Y17_Q31','Y17_Q33','Y17_Q34','Y17_Q35_3','Y17_Q36_1','Y17_Q36_2','Y17_Q32','Y17_Q37','Y17_Q38','Y17_Q39',
              'Y17_Q40_1','Y17_Q40_2','Y17_Q40_3',
              'Y17_Q46','Y17_Q48',
              'Y17_Q49_1','Y17_Q49_2','Y17_Q49_3','Y17_Q49_4','Y17_Q49_5','Y17_Q49_6','Y17_Q49_7','Y17_Q49_8','Y17_Q49_9','Y17_Q49_10',
              'Y17_Q49_12',
              'Y17_Q50_1','Y17_Q50_2','Y17_Q50_3','Y17_Q50_4',
              'Y17_Q51_5','Y17_Q51_6','Y17_Q51_7',
              'Y17_Q51_9','Y17_Q51_10','Y17_Q51_11','Y17_Q51_12','Y17_Q51_13',
              'Y17_Q52_1','Y17_Q52_2','Y17_Q52_3','Y17_Q52_4','Y17_Q52_5','Y17_Q52_6','Y17_Q52_7','Y17_Q52_8',
              'Y17_Q53','Y17_Q54',
              'Y17_Q55_1','Y17_Q55_2','Y17_Q55_3','Y17_Q55_4','Y17_Q55_5','Y17_Q55_6','Y17_Q55_7','Y17_Q55_8',
              'Y17_Q56_1','Y17_Q56_2','Y17_Q56_3','Y17_Q56_4','Y17_Q56_5','Y17_Q56_6','Y17_Q56_7','Y17_Q56_8','Y17_Q56_9','Y17_Q56_10',
              'Y17_Q57','Y17_Q58','Y17_Q59','Y17_Q60','Y17_Q61',
              'Y17_Q62_1','Y17_Q62_2','Y17_Q62_3','Y17_Q62_4','Y17_Q62_5','Y17_Q62_6',
              'Y17_Q63_1','Y17_Q63_2','Y17_Q63_3','Y17_Q63_4','Y17_Q63_5',
              'Y17_Q64_1','Y17_Q64_2','Y17_Q64_3','Y17_Q64_4','Y17_Q64_5','Y17_Q64_6',
              'Y17_Q65',
              'Y17_Q66_1','Y17_Q66_2','Y17_Q66_3','Y17_Q66_4','Y17_Q66_5','Y17_Q66_6','Y17_Q66_7','Y17_Q66_8','Y17_Q66_9','Y17_Q66_10','Y17_Q66_11','Y17_Q66_12','Y17_Q66_13','Y17_Q66_14','Y17_Q66_15','Y17_Q66_16','Y17_Q66_17',
              'Y17_BQ71','Y17_BQ72','Y17_BQ73','Y17_BQ74','Y17_BQ75','Y17_BQ76','Y17_BQ77','Y17_BQ78',
              'Y17_BQ79_1','Y17_BQ79_2',
              'Y17_BQ80',
              'Y17_BQ81_1_1','Y17_BQ81_1_2','Y17_BQ81_1_3','Y17_BQ81_1_4','Y17_BQ81_1_5','Y17_BQ81_1_6','Y17_BQ81_1_7','Y17_BQ81_1_8','Y17_BQ81_1_9','Y17_BQ81_1_10','Y17_BQ81_1_11','Y17_BQ81_1_12','Y17_BQ81_1_13','Y17_BQ81_1_14',
              'Y17_BQ81_2','Y17_BQ82',
              'Y17_BQ83_1_1','Y17_BQ83_1_2','Y17_BQ83_1_3','Y17_BQ83_1_4','Y17_BQ83_1_5','Y17_BQ83_1_6','Y17_BQ83_1_7','Y17_BQ83_1_8','Y17_BQ83_1_9','Y17_BQ83_1_10','Y17_BQ83_1_11','Y17_BQ83_1_12','Y17_BQ83_1_13','Y17_BQ83_1_14','Y17_BQ83_1_15','Y17_BQ83_1_16','Y17_BQ83_1_17','Y17_BQ83_1_18','Y17_BQ83_1_19','Y17_BQ83_1_20',
              'Y17_BQ83_2',
              'Y17_BQ88_1','Y17_BQ88_2','Y17_BQ88_3',
              'Y17_BQ89',
              'Y17_BQN90_1','Y17_BQN90_2','Y17_BQN90_3','Y17_BQN90_4','Y17_BQN90_5','Y17_BQN90_6',
              'Y17_QN90_11','Y17_QN90_12',
              'Y17_BQN90_7','Y17_BQN90_8','Y17_CQN90_9','Y17_BQN90_10',
              'Y17_Q91_1','Y17_Q91_2','Y17_Q91_3',
              'Y17_Q92','Y17_Q93',
              'Y17_Q94_1','Y17_Q94_2',
              'Y17_Q97','Y17_Q98','Y17_Q95')

newname=paste0(rep("V", 412),as.character(1:412))
newnameboth=newname[-c(29,33,43,67,75,87,88,98,108,125,132,133,134,139,143,147,
               150,151,152,153,154,155,156,157,158,159,
               160,161,162,163,164,165,166,167,168,169,
               170,171,172,173,174,
               185,187,192,193,194,195,196,197,
               201,207,216,237,
               278,279,280,281,282,283,284,285,286,287,
               295,
               337,338,339,340,341,342,343,344,345,346,347,348,349,
               350,351,352,353,354,355,356,357,358,359,
               360,361,362,363,364,365,366,367,368,369,
               370,371,372,373,374,
               398,399,400,401,402,403,404,405,406,407,408,411)]

newpaneldata2016<-paneldata2016 %>% rename_at(vars(oldname2016), ~ newnameboth)
newpaneldata2017<-paneldata2017 %>% rename_at(vars(oldname2017), ~ newnameboth)

#delete useless variables
newpaneldata2016$ERRFLG1=NULL
newpaneldata2016$ERRFLG2=NULL
newpaneldata2016$X997=NULL

newpaneldata2017$FLG=NULL
newpaneldata2017$Y17_ERRFLG1=NULL
newpaneldata2017$Y17_ERRFLG2=NULL
newpaneldata2017$Y17_X997=NULL


#merge 2016 and 2017
newpaneldata<-rbind(newpaneldata2016,newpaneldata2017)

#save panel data
write.csv(newpaneldata,file = "JPSED_paneldataver.csv",row.names=FALSE)











