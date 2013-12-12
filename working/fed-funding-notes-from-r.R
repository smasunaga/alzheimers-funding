setwd("~/dataviz-fall-2013/alzheimers-funding/working")

data <- read.csv("fed-funding.csv")

 # renaming my 54 columns
 colnames(data) <- c("funding_org", "FY", "amyloid", "tau", "presenilins", "ApoE", "brain_circuits", "cell_death", "immunity", "bioenergetics", "vascular_factors", "hormones", "genetics", "other_pathogenic", "total1", "fluid_biomarkers", "imaging_biomarkers", "cog_behav_assess", "multimodal_markers", "novel_biomarkers", "novel_methodol", "other", "diag", "drug_discovery", "preclinical_drug_dev", "preclinical_proof", "clinical_trial_design", "early_stage_drug_dv", "late_stage_drug_dv", "nonpharmacological", "clinical_therapy_dev", "clinical_ethics", "other2", "translational_research", "genetic_risks", "cardio_factors", "nutrition", "multimodal_risk", "other3", "epidemiology", "QoLife", "tech_assist_care", "caregiver_support", "cult_beliefs", "econ_burden", "other4", "care_total", "total_AD_funding" )

# make sure funding orgs are characters, not factors
as.character(as.factor(data$funding_org))

 # time for aggregation
 agg <-aggregate(data2$total_AD_funding, list(data$FY, data$funding_org), max)

# filter by year, eg 2008
year_08 <- subset(data, FY==2008)

# test and see if there are NAs in your data
is.na(year_08$total_AD_funding)

# screw you, R. I can't get complete.cases to work, so I'm making a list
year_08_list <- year_08[order(year_08$total_AD_funding, decreasing=TRUE),]

year_08_list
                                                                          funding_org   FY
89                                                National Institutes of Health (NIH) 2008
33                                              National Institute on Aging (NIH/NIA) 2008
77                National Institute of Neurological Disorders and Stroke (NIH/NINDS) 2008
101                                                           Alzheimer's Association 2008
73                                     National Institute of Mental Health (NIH/NIMH) 2008
93                                                      Administration on Aging (AoA) 2008
5              National Center for Complementary and Alternative Medicine (NIH/NCCAM) 2008
65                    National Institute of Environmental Health Sciences (NIH/NIEHS) 2008
105                                             Alzheimer's Drug Discovery Foundation 2008
81                                  National Institute of Nursing Research (NIH/NINR) 2008
69                         National Institute of General Medical Sciences (NIH/NIGMS) 2008
29                              National Heart, Lung, and Blood Institute (NIH/NHLBI) 2008
61       National Institute of Diabetes and Digestive and Kidney Diseases (NIH/NIDDK) 2008
49               National Institute of Child Health and Human Development (NIH/NICHD) 2008
25                               National Human Genome Research Institute (NIH/NHGRI) 2008
9                                                 National Cancer Institute (NIH/NCI) 2008
45            National Institute of Biomedical Imaging and Bioengineering (NIH/NIBIB) 2008
113                                  Centers for Disease Control and Prevention (CDC) 2008
57       National Institute on Deafness and Other Communication Disorders (NIH/NIDCD) 2008
21                                                   National Eye Institute (NIH/NEI) 2008
109                                                           Alzheimer's Research UK 2008
41  National Institute of Arthritis and Musculoskeletal and Skin Diseases (NIH/NIAMS) 2008
53                                        National Institute on Drug Abuse (NIH/NIDA) 2008
13           National Institute on Minority Health and Health Disparities (NIH/NIMHD) 2008
17                                  National Center for Research Resources (NIH/NCRR) 2008
97                                  Agency for Healthcare Research and Quality (AHRQ) 2008
1                                              Fogarty International Center (NIH/FIC) 2008
37                  National Institute of Allergy and Infectious Diseases (NIH/NIAID) 2008
85                                                    Office of the Director (NIH/OD) 2008
117                                               Department of Veterans Affairs (VA) 2008
121                         United States Army Medical Research and Materiel Command  2008
       amyloid      tau presenilins     ApoE brain_circuits cell_death immunity bioenergetics
89  41428523.0 11451040     4658338 12835834        9869949 12754509.0 12374013       3267228
33  28190367.0  7944598     2234329 10517592        6839218  8471850.0  7660073       3077127
77   7126343.0  2716879     2204351   978583        1515961  1899566.0  1981304            NA
101  4829435.0   339816      200000   900000        1215588   340000.0  1445647        340000
73          NA   338491          NA       NA         570116         NA    42680            NA
93          NA       NA          NA       NA             NA         NA       NA            NA
5           NA       NA          NA       NA             NA         NA       NA          1451
65   1374507.0       NA          NA   288563             NA         NA  1999178            NA
105         NA       NA          NA       NA             NA         NA       NA            NA
81          NA       NA          NA       NA             NA         NA       NA            NA
69   1480301.0   252643          NA    41199             NA  1026985.0       NA            NA
29     16074.0       NA          NA   705652             NA  1356108.0       NA            NA
61   1755027.0       NA          NA       NA             NA         NA       NA            NA
49    669254.0   198429          NA     9516         670698         NA       NA        188650
25          NA       NA          NA       NA             NA         NA       NA            NA
9     488214.0       NA          NA       NA             NA         NA   409830            NA
45          NA       NA          NA       NA             NA         NA       NA            NA
113         NA       NA          NA       NA             NA         NA       NA            NA
57          NA       NA          NA   190606             NA         NA       NA            NA
21          NA       NA          NA       NA             NA         NA   230790            NA
109   294746.1       NA          NA       NA             NA   142335.7       NA            NA
41    300563.0       NA          NA       NA             NA         NA       NA            NA
53          NA       NA          NA       NA         273956         NA       NA            NA
13          NA       NA      219658       NA             NA         NA       NA            NA
17     27873.0       NA          NA   104123             NA         NA       NA            NA
97          NA       NA          NA       NA             NA         NA       NA            NA
1           NA       NA          NA       NA             NA         NA    50158            NA
37          NA       NA          NA       NA             NA         NA       NA            NA
85          NA       NA          NA       NA             NA         NA       NA            NA
117         NA       NA          NA       NA             NA         NA       NA            NA
121         NA       NA          NA       NA             NA         NA       NA            NA
    vascular_factors hormones genetics other_pathogenic      total1 fluid_biomarkers
89           7559194  4158453 17874679          2315576 140547336.0          2952796
33           2575606  3348344 12461879               NA  93320983.0          2585921
77           3917566   483859  2590367           769340  26184119.0           366875
101           540000   232080  1128000               NA  11510566.0           538767
73                NA   326250   785119           634059   2696715.0               NA
93                NA       NA       NA               NA          NA               NA
5                 NA       NA       NA               NA      1451.0               NA
65                NA       NA       NA               NA   3662248.0               NA
105               NA       NA       NA               NA          NA           400000
81            429188       NA       NA               NA    429188.0               NA
69                NA       NA       NA               NA   2801128.0               NA
29                NA       NA   359270               NA   2437104.0               NA
61            636834       NA       NA           326494   2718355.0               NA
49                NA       NA       NA           521790   2258337.0               NA
25                NA       NA  1206780               NA   1206780.0               NA
9                 NA       NA   471264            63893   1433201.0               NA
45                NA       NA       NA               NA          NA               NA
113               NA       NA       NA               NA          NA               NA
57                NA       NA       NA               NA    190606.0               NA
21                NA       NA       NA               NA    230790.0               NA
109               NA       NA       NA               NA    437081.8               NA
41                NA       NA       NA               NA    300563.0               NA
53                NA       NA       NA               NA    273956.0               NA
13                NA       NA       NA               NA    219658.0               NA
17                NA       NA       NA               NA    131996.0               NA
97                NA       NA       NA               NA          NA               NA
1                 NA       NA       NA               NA     50158.0               NA
37                NA       NA       NA               NA          NA               NA
85                NA       NA       NA               NA          NA               NA
117               NA       NA       NA               NA          NA               NA
121               NA       NA       NA               NA          NA               NA
    imaging_biomarkers cog_behav_assess multimodal_markers novel_biomarkers novel_methodol
89            20395636         10143216           16103243          2931920        1803969
33            16117370          9244572           14972211          2510207         297164
77             1476524           498437                 NA               NA         267630
101            1954053           539715                 NA           327116             NA
73             1630442           158338             752729               NA         321433
93                  NA               NA                 NA               NA             NA
5                   NA               NA                 NA           127778             NA
65                  NA               NA                 NA               NA             NA
105              78978           200000                 NA               NA             NA
81                  NA            96912                 NA               NA             NA
69                  NA           109357                 NA           293935             NA
29                  NA               NA             378303               NA             NA
61                  NA               NA                 NA               NA             NA
49                  NA               NA                 NA               NA             NA
25                  NA               NA                 NA               NA         572870
9                   NA               NA                 NA               NA             NA
45              855711               NA                 NA               NA         344872
113                 NA               NA                 NA               NA             NA
57              315589               NA                 NA               NA             NA
21                  NA               NA                 NA               NA             NA
109                 NA               NA                 NA               NA             NA
41                  NA               NA                 NA               NA             NA
53                  NA               NA                 NA               NA             NA
13                  NA               NA                 NA               NA             NA
17                  NA            35600                 NA               NA             NA
97                  NA               NA                 NA               NA             NA
1                   NA               NA                 NA               NA             NA
37                  NA               NA                 NA               NA             NA
85                  NA               NA                 NA               NA             NA
117                 NA               NA                 NA               NA             NA
121                 NA               NA                 NA               NA             NA
     other     diag drug_discovery preclinical_drug_dev preclinical_proof clinical_trial_design
89  266315 54597095       11260138              7581867           1950742                    NA
33      NA 45727445        8106818              7014532            463151                    NA
77      NA  2609466        3153320               567335                NA                    NA
101     NA  3359651        2105417               238936            239426                    NA
73      NA  2862942             NA                   NA                NA                    NA
93      NA       NA             NA                   NA                NA                    NA
5       NA   127778             NA                   NA           1487591                    NA
65      NA       NA             NA                   NA                NA                    NA
105     NA   678978        2200128               395300                NA                    NA
81      NA    96912             NA                   NA                NA                    NA
69      NA   403292             NA                   NA                NA                    NA
29      NA   378303             NA                   NA                NA                    NA
61      NA       NA             NA                   NA                NA                    NA
49      NA       NA             NA                   NA                NA                    NA
25      NA   572870             NA                   NA                NA                    NA
9       NA       NA             NA                   NA                NA                    NA
45      NA  1200583             NA                   NA                NA                    NA
113     NA       NA             NA                   NA                NA                    NA
57      NA   315589             NA                   NA                NA                    NA
21  266315   266315             NA                   NA                NA                    NA
109     NA       NA             NA                   NA                NA                    NA
41      NA       NA             NA                   NA                NA                    NA
53      NA       NA             NA                   NA                NA                    NA
13      NA       NA             NA                   NA                NA                    NA
17      NA    35600             NA                   NA                NA                    NA
97      NA       NA             NA                   NA                NA                    NA
1       NA       NA             NA                   NA                NA                    NA
37      NA       NA             NA                   NA                NA                    NA
85      NA       NA             NA                   NA                NA                    NA
117     NA       NA             NA                   NA                NA                    NA
121     NA       NA             NA                   NA                NA                    NA
    early_stage_drug_dv late_stage_drug_dv nonpharmacological clinical_therapy_dev
89              6184391            1103923            7176867              3229734
33              6184391            1103923            5183796              1882954
77                   NA                 NA                 NA                   NA
101                  NA                 NA             477449               100000
73                   NA                 NA                 NA              1346780
93                   NA                 NA                 NA                   NA
5                    NA                 NA            1993071                   NA
65                   NA                 NA                 NA                   NA
105              280000                 NA                 NA                   NA
81                   NA                 NA                 NA                   NA
69                   NA                 NA                 NA                   NA
29                   NA                 NA                 NA                   NA
61                   NA                 NA                 NA                   NA
49                   NA                 NA                 NA                   NA
25                   NA                 NA                 NA                   NA
9                    NA                 NA                 NA                   NA
45                   NA                 NA                 NA                   NA
113                  NA                 NA             449724                   NA
57                   NA                 NA                 NA                   NA
21                   NA                 NA                 NA                   NA
109                  NA                 NA                 NA                   NA
41                   NA                 NA                 NA                   NA
53                   NA                 NA                 NA                   NA
13                   NA                 NA                 NA                   NA
17                   NA                 NA                 NA                   NA
97                   NA                 NA                 NA                   NA
1                    NA                 NA                 NA                   NA
37                   NA                 NA                 NA                   NA
85                   NA                 NA                 NA                   NA
117                  NA                 NA                 NA                   NA
121                  NA                 NA                 NA                   NA
    clinical_ethics other2 translational_research genetic_risks cardio_factors nutrition
89          1269971     NA               39757633       5303692        2454002   1122748
33           987746     NA               30927311       5303692        2282498   1122748
77               NA     NA                3720655            NA         171504        NA
101              NA     NA                3161228        438362         335501        NA
73           282225     NA                1629005            NA             NA        NA
93               NA     NA                     NA            NA             NA        NA
5                NA     NA                3480662            NA             NA        NA
65               NA     NA                     NA            NA             NA        NA
105              NA     NA                2875428            NA             NA        NA
81               NA     NA                     NA            NA             NA        NA
69               NA     NA                     NA            NA             NA        NA
29               NA     NA                     NA            NA             NA        NA
61               NA     NA                     NA            NA             NA        NA
49               NA     NA                     NA            NA             NA        NA
25               NA     NA                     NA            NA             NA        NA
9                NA     NA                     NA            NA             NA        NA
45               NA     NA                     NA            NA             NA        NA
113              NA     NA                 449724            NA             NA        NA
57               NA     NA                     NA            NA             NA        NA
21               NA     NA                     NA            NA             NA        NA
109              NA     NA                     NA            NA             NA        NA
41               NA     NA                     NA            NA             NA        NA
53               NA     NA                     NA            NA             NA        NA
13               NA     NA                     NA            NA             NA        NA
17               NA     NA                     NA            NA             NA        NA
97               NA     NA                     NA            NA             NA        NA
1                NA     NA                     NA            NA             NA        NA
37               NA     NA                     NA            NA             NA        NA
85               NA     NA                     NA            NA             NA        NA
117              NA     NA                     NA            NA             NA        NA
121              NA     NA                     NA            NA             NA        NA
    multimodal_risk  other3 epidemiology  QoLife tech_assist_care caregiver_support cult_beliefs
89         20508564 1103591     30492597 4492328           112527           5433149           NA
33         19676818   65268     28451024 2170912           112527           3749848           NA
77           781441      NA       952945      NA               NA             32172           NA
101          425526  478770      1678159 2073553           483010            718725       239080
73            40000 1038323      1078323  400577               NA            127120           NA
93               NA      NA           NA      NA               NA           5482442           NA
5                NA      NA           NA  297230               NA            215887           NA
65               NA      NA           NA      NA               NA                NA           NA
105              NA      NA           NA      NA               NA                NA           NA
81               NA      NA           NA 1623609               NA           1308122           NA
69               NA      NA           NA      NA               NA                NA           NA
29               NA      NA           NA      NA               NA                NA           NA
61               NA      NA           NA      NA               NA                NA           NA
49               NA      NA           NA      NA               NA                NA           NA
25               NA      NA           NA      NA               NA                NA           NA
9                NA      NA           NA      NA               NA                NA           NA
45               NA      NA           NA      NA               NA                NA           NA
113              NA  748789       748789      NA               NA                NA           NA
57               NA      NA           NA      NA               NA                NA           NA
21               NA      NA           NA      NA               NA                NA           NA
109              NA      NA           NA      NA               NA                NA           NA
41               NA      NA           NA      NA               NA                NA           NA
53               NA      NA           NA      NA               NA                NA           NA
13               NA      NA           NA      NA               NA                NA           NA
17            10305      NA        10305      NA               NA                NA           NA
97               NA  133643       133643      NA               NA                NA           NA
1                NA      NA           NA      NA               NA                NA           NA
37               NA      NA           NA      NA               NA                NA           NA
85               NA      NA           NA      NA               NA                NA           NA
117              NA      NA           NA      NA               NA                NA           NA
121              NA      NA           NA      NA               NA                NA           NA
    econ_burden other4 care_total total_AD_funding
89      1001121 368167   11407292      276801953.0
33      1001121     NA    7034408      205461171.0
77           NA     NA      32172       33499357.0
101          NA     NA    3514368       23223972.0
73           NA     NA     527697        8794682.0
93           NA     NA    5482442        5482442.0
5            NA 278688     791805        4401696.0
65           NA     NA         NA        3662248.0
105          NA     NA         NA        3554406.0
81           NA  89479    3021210        3547310.0
69           NA     NA         NA        3204420.0
29           NA     NA         NA        2815407.0
61           NA     NA         NA        2718355.0
49           NA     NA         NA        2258337.0
25           NA     NA         NA        1779650.0
9            NA     NA         NA        1433201.0
45           NA     NA         NA        1200583.0
113          NA     NA         NA        1198513.0
57           NA     NA         NA         506195.0
21           NA     NA         NA         497105.0
109          NA     NA         NA         437081.8
41           NA     NA         NA         300563.0
53           NA     NA         NA         273956.0
13           NA     NA         NA         219658.0
17           NA     NA         NA         177901.0
97           NA     NA         NA         133643.0
1            NA     NA         NA          50158.0
37           NA     NA         NA               NA
85           NA     NA         NA               NA
117          NA     NA         NA               NA
121          NA     NA         NA               NA

///
# year 09 stuff
> year_09 <- subset(data, FY==2009)
year_09_list:
6    2009 Agency for Healthcare Research and Quality (AHRQ)  285380
> tail(agg)
    Group.1                                                   Group.2        x
119    2010                           Office of the Director (NIH/OD)  1732986
120    2011                           Office of the Director (NIH/OD)  5457150
121    2008 United States Army Medical Research and Materiel Command        NA
122    2009 United States Army Medical Research and Materiel Command        NA
123    2010 United States Army Medical Research and Materiel Command        NA
124    2011 United States Army Medical Research and Materiel Command  12992586
> max(agg$total_AD_funding)
[1] -Inf
Warning message:
In max(agg$total_AD_funding) :
  no non-missing arguments to max; returning -Inf
> year_08 <- subset(data, year=2008)
> head(year_08)
                                                             funding_org   FY amyloid   tau
1                                 Fogarty International Center (NIH/FIC) 2008      NA    NA
2                                 Fogarty International Center (NIH/FIC) 2009      NA 57904
3                                 Fogarty International Center (NIH/FIC) 2010      NA 57904
4                                 Fogarty International Center (NIH/FIC) 2011      NA 57325
5 National Center for Complementary and Alternative Medicine (NIH/NCCAM) 2008      NA    NA
6 National Center for Complementary and Alternative Medicine (NIH/NCCAM) 2009      NA    NA
  presenilins ApoE brain_circuits cell_death immunity bioenergetics vascular_factors hormones
1          NA   NA             NA         NA    50158            NA               NA       NA
2          NA   NA             NA         NA    50309            NA               NA       NA
3          NA   NA             NA         NA    83296            NA               NA       NA
4          NA   NA             NA         NA   103526            NA               NA       NA
5          NA   NA             NA         NA       NA          1451               NA       NA
6          NA   NA             NA         NA       NA            NA               NA       NA
  genetics other_pathogenic total1 fluid_biomarkers imaging_biomarkers cog_behav_assess
1       NA               NA  50158               NA                 NA               NA
2       NA               NA 108213               NA                 NA               NA
3       NA               NA 141200               NA                 NA               NA
4       NA               NA 160851               NA                 NA               NA
5       NA               NA   1451               NA                 NA               NA
6       NA               NA     NA               NA                 NA               NA
  multimodal_markers novel_biomarkers novel_methodol other   diag drug_discovery
1                 NA               NA             NA    NA     NA             NA
2                 NA               NA             NA    NA     NA             NA
3                 NA               NA             NA    NA     NA             NA
4                 NA               NA             NA    NA     NA          70352
5                 NA           127778             NA    NA 127778             NA
6                 NA           127778             NA    NA 127778             NA
  preclinical_drug_dev preclinical_proof clinical_trial_design early_stage_drug_dv
1                   NA                NA                    NA                  NA
2                   NA                NA                    NA                  NA
3                   NA                NA                    NA                  NA
4                   NA                NA                    NA                  NA
5                   NA           1487591                    NA                  NA
6                   NA           1625379                    NA                  NA
  late_stage_drug_dv nonpharmacological clinical_therapy_dev clinical_ethics other2
1                 NA                 NA                   NA              NA     NA
2                 NA                 NA                   NA              NA     NA
3                 NA                 NA                   NA              NA     NA
4                 NA                 NA                   NA              NA     NA
5                 NA            1993071                   NA              NA     NA
6                 NA             147530                   NA              NA     NA
  translational_research genetic_risks cardio_factors nutrition multimodal_risk other3
1                     NA            NA             NA        NA              NA     NA
2                     NA            NA             NA        NA              NA     NA
3                     NA            NA             NA        NA          142591     NA
4                  70352            NA             NA        NA          126850     NA
5                3480662            NA             NA        NA              NA     NA
6                1772909            NA             NA        NA              NA     NA
  epidemiology QoLife tech_assist_care caregiver_support cult_beliefs econ_burden other4
1           NA     NA               NA                NA           NA          NA     NA
2           NA     NA               NA                NA           NA          NA     NA
3       142591     NA               NA                NA           NA          NA     NA
4       126850     NA               NA            162170           NA          NA     NA
5           NA 297230               NA            215887           NA          NA 278688
6           NA 288941               NA            182738           NA          NA 159250
  care_total total_AD_funding
1         NA            50158
2         NA           108213
3         NA           283791
4     162170           520223
5     791805          4401696
6     630929          2531616
> year_08 <- subset(data, FY=2008)
> head(year_08)
                                                             funding_org   FY amyloid   tau
1                                 Fogarty International Center (NIH/FIC) 2008      NA    NA
2                                 Fogarty International Center (NIH/FIC) 2009      NA 57904
3                                 Fogarty International Center (NIH/FIC) 2010      NA 57904
4                                 Fogarty International Center (NIH/FIC) 2011      NA 57325
5 National Center for Complementary and Alternative Medicine (NIH/NCCAM) 2008      NA    NA
6 National Center for Complementary and Alternative Medicine (NIH/NCCAM) 2009      NA    NA
  presenilins ApoE brain_circuits cell_death immunity bioenergetics vascular_factors hormones
1          NA   NA             NA         NA    50158            NA               NA       NA
2          NA   NA             NA         NA    50309            NA               NA       NA
3          NA   NA             NA         NA    83296            NA               NA       NA
4          NA   NA             NA         NA   103526            NA               NA       NA
5          NA   NA             NA         NA       NA          1451               NA       NA
6          NA   NA             NA         NA       NA            NA               NA       NA
  genetics other_pathogenic total1 fluid_biomarkers imaging_biomarkers cog_behav_assess
1       NA               NA  50158               NA                 NA               NA
2       NA               NA 108213               NA                 NA               NA
3       NA               NA 141200               NA                 NA               NA
4       NA               NA 160851               NA                 NA               NA
5       NA               NA   1451               NA                 NA               NA
6       NA               NA     NA               NA                 NA               NA
  multimodal_markers novel_biomarkers novel_methodol other   diag drug_discovery
1                 NA               NA             NA    NA     NA             NA
2                 NA               NA             NA    NA     NA             NA
3                 NA               NA             NA    NA     NA             NA
4                 NA               NA             NA    NA     NA          70352
5                 NA           127778             NA    NA 127778             NA
6                 NA           127778             NA    NA 127778             NA
  preclinical_drug_dev preclinical_proof clinical_trial_design early_stage_drug_dv
1                   NA                NA                    NA                  NA
2                   NA                NA                    NA                  NA
3                   NA                NA                    NA                  NA
4                   NA                NA                    NA                  NA
5                   NA           1487591                    NA                  NA
6                   NA           1625379                    NA                  NA
  late_stage_drug_dv nonpharmacological clinical_therapy_dev clinical_ethics other2
1                 NA                 NA                   NA              NA     NA
2                 NA                 NA                   NA              NA     NA
3                 NA                 NA                   NA              NA     NA
4                 NA                 NA                   NA              NA     NA
5                 NA            1993071                   NA              NA     NA
6                 NA             147530                   NA              NA     NA
  translational_research genetic_risks cardio_factors nutrition multimodal_risk other3
1                     NA            NA             NA        NA              NA     NA
2                     NA            NA             NA        NA              NA     NA
3                     NA            NA             NA        NA          142591     NA
4                  70352            NA             NA        NA          126850     NA
5                3480662            NA             NA        NA              NA     NA
6                1772909            NA             NA        NA              NA     NA
  epidemiology QoLife tech_assist_care caregiver_support cult_beliefs econ_burden other4
1           NA     NA               NA                NA           NA          NA     NA
2           NA     NA               NA                NA           NA          NA     NA
3       142591     NA               NA                NA           NA          NA     NA
4       126850     NA               NA            162170           NA          NA     NA
5           NA 297230               NA            215887           NA          NA 278688
6           NA 288941               NA            182738           NA          NA 159250
  care_total total_AD_funding
1         NA            50158
2         NA           108213
3         NA           283791
4     162170           520223
5     791805          4401696
6     630929          2531616
> year_08 <- subset(data, FY==2008)
> head(year_09)
Error in head(year_09) : object 'year_09' not found
> head(year_08)
                                                                funding_org   FY amyloid tau
1                                    Fogarty International Center (NIH/FIC) 2008      NA  NA
5    National Center for Complementary and Alternative Medicine (NIH/NCCAM) 2008      NA  NA
9                                       National Cancer Institute (NIH/NCI) 2008  488214  NA
13 National Institute on Minority Health and Health Disparities (NIH/NIMHD) 2008      NA  NA
17                        National Center for Research Resources (NIH/NCRR) 2008   27873  NA
21                                         National Eye Institute (NIH/NEI) 2008      NA  NA
   presenilins   ApoE brain_circuits cell_death immunity bioenergetics vascular_factors hormones
1           NA     NA             NA         NA    50158            NA               NA       NA
5           NA     NA             NA         NA       NA          1451               NA       NA
9           NA     NA             NA         NA   409830            NA               NA       NA
13      219658     NA             NA         NA       NA            NA               NA       NA
17          NA 104123             NA         NA       NA            NA               NA       NA
21          NA     NA             NA         NA   230790            NA               NA       NA
   genetics other_pathogenic  total1 fluid_biomarkers imaging_biomarkers cog_behav_assess
1        NA               NA   50158               NA                 NA               NA
5        NA               NA    1451               NA                 NA               NA
9    471264            63893 1433201               NA                 NA               NA
13       NA               NA  219658               NA                 NA               NA
17       NA               NA  131996               NA                 NA            35600
21       NA               NA  230790               NA                 NA               NA
   multimodal_markers novel_biomarkers novel_methodol  other   diag drug_discovery
1                  NA               NA             NA     NA     NA             NA
5                  NA           127778             NA     NA 127778             NA
9                  NA               NA             NA     NA     NA             NA
13                 NA               NA             NA     NA     NA             NA
17                 NA               NA             NA     NA  35600             NA
21                 NA               NA             NA 266315 266315             NA
   preclinical_drug_dev preclinical_proof clinical_trial_design early_stage_drug_dv
1                    NA                NA                    NA                  NA
5                    NA           1487591                    NA                  NA
9                    NA                NA                    NA                  NA
13                   NA                NA                    NA                  NA
17                   NA                NA                    NA                  NA
21                   NA                NA                    NA                  NA
   late_stage_drug_dv nonpharmacological clinical_therapy_dev clinical_ethics other2
1                  NA                 NA                   NA              NA     NA
5                  NA            1993071                   NA              NA     NA
9                  NA                 NA                   NA              NA     NA
13                 NA                 NA                   NA              NA     NA
17                 NA                 NA                   NA              NA     NA
21                 NA                 NA                   NA              NA     NA
   translational_research genetic_risks cardio_factors nutrition multimodal_risk other3
1                      NA            NA             NA        NA              NA     NA
5                 3480662            NA             NA        NA              NA     NA
9                      NA            NA             NA        NA              NA     NA
13                     NA            NA             NA        NA              NA     NA
17                     NA            NA             NA        NA           10305     NA
21                     NA            NA             NA        NA              NA     NA
   epidemiology QoLife tech_assist_care caregiver_support cult_beliefs econ_burden other4
1            NA     NA               NA                NA           NA          NA     NA
5            NA 297230               NA            215887           NA          NA 278688
9            NA     NA               NA                NA           NA          NA     NA
13           NA     NA               NA                NA           NA          NA     NA
17        10305     NA               NA                NA           NA          NA     NA
21           NA     NA               NA                NA           NA          NA     NA
   care_total total_AD_funding
1          NA            50158
5      791805          4401696
9          NA          1433201
13         NA           219658
17         NA           177901
21         NA           497105
> max(year_08$total_AD_funding)
[1] NA
> class(year_08$total_AD_funding)
[1] "numeric"
> summary(year_08$total_AD_funding)
     Min.   1st Qu.    Median      Mean   3rd Qu.      Max.      NA's 
    50160    467100   2258000  21760000   4032000 276800000         4 
> max(year_08$total_AD_funding)
[1] NA
> subset(year_08, total_AD_funding == max(year_08$kpg))
 [1] funding_org            FY                     amyloid                tau                   
 [5] presenilins            ApoE                   brain_circuits         cell_death            
 [9] immunity               bioenergetics          vascular_factors       hormones              
[13] genetics               other_pathogenic       total1                 fluid_biomarkers      
[17] imaging_biomarkers     cog_behav_assess       multimodal_markers     novel_biomarkers      
[21] novel_methodol         other                  diag                   drug_discovery        
[25] preclinical_drug_dev   preclinical_proof      clinical_trial_design  early_stage_drug_dv   
[29] late_stage_drug_dv     nonpharmacological     clinical_therapy_dev   clinical_ethics       
[33] other2                 translational_research genetic_risks          cardio_factors        
[37] nutrition              multimodal_risk        other3                 epidemiology          
[41] QoLife                 tech_assist_care       caregiver_support      cult_beliefs          
[45] econ_burden            other4                 care_total             total_AD_funding      
<0 rows> (or 0-length row.names)
Warning message:
In max(year_08$kpg) : no non-missing arguments to max; returning -Inf
> subset(year_08, total_AD_funding == max(year_08$total_AD_funding))
 [1] funding_org            FY                     amyloid                tau                   
 [5] presenilins            ApoE                   brain_circuits         cell_death            
 [9] immunity               bioenergetics          vascular_factors       hormones              
[13] genetics               other_pathogenic       total1                 fluid_biomarkers      
[17] imaging_biomarkers     cog_behav_assess       multimodal_markers     novel_biomarkers      
[21] novel_methodol         other                  diag                   drug_discovery        
[25] preclinical_drug_dev   preclinical_proof      clinical_trial_design  early_stage_drug_dv   
[29] late_stage_drug_dv     nonpharmacological     clinical_therapy_dev   clinical_ethics       
[33] other2                 translational_research genetic_risks          cardio_factors        
[37] nutrition              multimodal_risk        other3                 epidemiology          
[41] QoLife                 tech_assist_care       caregiver_support      cult_beliefs          
[45] econ_burden            other4                 care_total             total_AD_funding      
<0 rows> (or 0-length row.names)
> max( year_08[ , "total_AD_funding" ] )  
[1] NA
> is.na(year_08$total_AD_funding)
 [1] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE  TRUE FALSE FALSE FALSE FALSE FALSE
[16] FALSE FALSE FALSE FALSE FALSE FALSE  TRUE FALSE FALSE FALSE FALSE FALSE FALSE FALSE  TRUE
[31]  TRUE
> funding_no_na <- total_AD_funding[complete.cases(year_08$total_AD_funding)]
Error: object 'total_AD_funding' not found
> funding_no_na <- year_08$total_AD_funding[complete.cases(year_08$total_AD_funding)]
> max(year_08[, "funding_no_na"])
Error in `[.data.frame`(year_08, , "funding_no_na") : 
  undefined columns selected
> funding_no_na <- year_08$total_AD_funding[complete.cases(year_08$total_AD_funding),]
Error in year_08$total_AD_funding[complete.cases(year_08$total_AD_funding),  : 
  incorrect number of dimensions
> ?complete.cases
> funding_no_na_08 <- year_08$total_AD_funding
> stopifnot(complete.cases(funding_no_na_08) !=is.na(funding_no_na_08))
> funding_08 <- year_08$total_AD_funding
> funding_no_na <- funding_08[complete.cases(funding_08),]
Error in funding_08[complete.cases(funding_08), ] : 
  incorrect number of dimensions
> ?incorrect number of dimensions
Error: unexpected symbol in "?incorrect number"
> funding_no_na <- total_AD_funding[complete.cases(total_AD_funding),]
Error: object 'total_AD_funding' not found
> funding_no_na <- "total_AD_funding"[complete.cases("total_AD_funding"),]
Error in "total_AD_funding"[complete.cases("total_AD_funding"), ] : 
  incorrect number of dimensions
> max( year_08[, total_AD_funding])
Error in `[.data.frame`(year_08, , total_AD_funding) : 
  object 'total_AD_funding' not found
> names(year_08)
 [1] "funding_org"            "FY"                     "amyloid"               
 [4] "tau"                    "presenilins"            "ApoE"                  
 [7] "brain_circuits"         "cell_death"             "immunity"              
[10] "bioenergetics"          "vascular_factors"       "hormones"              
[13] "genetics"               "other_pathogenic"       "total1"                
[16] "fluid_biomarkers"       "imaging_biomarkers"     "cog_behav_assess"      
[19] "multimodal_markers"     "novel_biomarkers"       "novel_methodol"        
[22] "other"                  "diag"                   "drug_discovery"        
[25] "preclinical_drug_dev"   "preclinical_proof"      "clinical_trial_design" 
[28] "early_stage_drug_dv"    "late_stage_drug_dv"     "nonpharmacological"    
[31] "clinical_therapy_dev"   "clinical_ethics"        "other2"                
[34] "translational_research" "genetic_risks"          "cardio_factors"        
[37] "nutrition"              "multimodal_risk"        "other3"                
[40] "epidemiology"           "QoLife"                 "tech_assist_care"      
[43] "caregiver_support"      "cult_beliefs"           "econ_burden"           
[46] "other4"                 "care_total"             "total_AD_funding"      
> year_08$total_AD_funding
 [1]     50158.0   4401696.0   1433201.0    219658.0    177901.0    497105.0   1779650.0
 [8]   2815407.0 205461171.0          NA    300563.0   1200583.0   2258337.0    273956.0
[15]    506195.0   2718355.0   3662248.0   3204420.0   8794682.0  33499357.0   3547310.0
[22]          NA 276801953.0   5482442.0    133643.0  23223972.0   3554406.0    437081.8
[29]   1198513.0          NA          NA
> max(year_08$total_AD_funding)
[1] NA
> funding_no_na <- year_08$total_AD_funding
> funding_no_na[complete.cases(funding_no_na),]
Error in funding_no_na[complete.cases(funding_no_na), ] : 
  incorrect number of dimensions
> min(year_08$total_AD_funding)
[1] NA
> min(year_08$total_AD_funding) !=NA
[1] NA
> year_08[complete.cases(year_08),]
 [1] funding_org            FY                     amyloid                tau                   
 [5] presenilins            ApoE                   brain_circuits         cell_death            
 [9] immunity               bioenergetics          vascular_factors       hormones              
[13] genetics               other_pathogenic       total1                 fluid_biomarkers      
[17] imaging_biomarkers     cog_behav_assess       multimodal_markers     novel_biomarkers      
[21] novel_methodol         other                  diag                   drug_discovery        
[25] preclinical_drug_dev   preclinical_proof      clinical_trial_design  early_stage_drug_dv   
[29] late_stage_drug_dv     nonpharmacological     clinical_therapy_dev   clinical_ethics       
[33] other2                 translational_research genetic_risks          cardio_factors        
[37] nutrition              multimodal_risk        other3                 epidemiology          
[41] QoLife                 tech_assist_care       caregiver_support      cult_beliefs          
[45] econ_burden            other4                 care_total             total_AD_funding      
<0 rows> (or 0-length row.names)
> max(year_08$total_AD_funding)
[1] NA
> year_08_list <- year_08[order(year_08$total_AD_funding, decreasing=TRUE),]
> year_08_list
                                                                          funding_org   FY
89                                                National Institutes of Health (NIH) 2008
33                                              National Institute on Aging (NIH/NIA) 2008
77                National Institute of Neurological Disorders and Stroke (NIH/NINDS) 2008
101                                                           Alzheimer's Association 2008
73                                     National Institute of Mental Health (NIH/NIMH) 2008
93                                                      Administration on Aging (AoA) 2008
5              National Center for Complementary and Alternative Medicine (NIH/NCCAM) 2008
65                    National Institute of Environmental Health Sciences (NIH/NIEHS) 2008
105                                             Alzheimer's Drug Discovery Foundation 2008
81                                  National Institute of Nursing Research (NIH/NINR) 2008
69                         National Institute of General Medical Sciences (NIH/NIGMS) 2008
29                              National Heart, Lung, and Blood Institute (NIH/NHLBI) 2008
61       National Institute of Diabetes and Digestive and Kidney Diseases (NIH/NIDDK) 2008
49               National Institute of Child Health and Human Development (NIH/NICHD) 2008
25                               National Human Genome Research Institute (NIH/NHGRI) 2008
9                                                 National Cancer Institute (NIH/NCI) 2008
45            National Institute of Biomedical Imaging and Bioengineering (NIH/NIBIB) 2008
113                                  Centers for Disease Control and Prevention (CDC) 2008
57       National Institute on Deafness and Other Communication Disorders (NIH/NIDCD) 2008
21                                                   National Eye Institute (NIH/NEI) 2008
109                                                           Alzheimer's Research UK 2008
41  National Institute of Arthritis and Musculoskeletal and Skin Diseases (NIH/NIAMS) 2008
53                                        National Institute on Drug Abuse (NIH/NIDA) 2008
13           National Institute on Minority Health and Health Disparities (NIH/NIMHD) 2008
17                                  National Center for Research Resources (NIH/NCRR) 2008
97                                  Agency for Healthcare Research and Quality (AHRQ) 2008
1                                              Fogarty International Center (NIH/FIC) 2008
37                  National Institute of Allergy and Infectious Diseases (NIH/NIAID) 2008
85                                                    Office of the Director (NIH/OD) 2008
117                                               Department of Veterans Affairs (VA) 2008
121                         United States Army Medical Research and Materiel Command  2008
       amyloid      tau presenilins     ApoE brain_circuits cell_death immunity bioenergetics
89  41428523.0 11451040     4658338 12835834        9869949 12754509.0 12374013       3267228
33  28190367.0  7944598     2234329 10517592        6839218  8471850.0  7660073       3077127
77   7126343.0  2716879     2204351   978583        1515961  1899566.0  1981304            NA
101  4829435.0   339816      200000   900000        1215588   340000.0  1445647        340000
73          NA   338491          NA       NA         570116         NA    42680            NA
93          NA       NA          NA       NA             NA         NA       NA            NA
5           NA       NA          NA       NA             NA         NA       NA          1451
65   1374507.0       NA          NA   288563             NA         NA  1999178            NA
105         NA       NA          NA       NA             NA         NA       NA            NA
81          NA       NA          NA       NA             NA         NA       NA            NA
69   1480301.0   252643          NA    41199             NA  1026985.0       NA            NA
29     16074.0       NA          NA   705652             NA  1356108.0       NA            NA
61   1755027.0       NA          NA       NA             NA         NA       NA            NA
49    669254.0   198429          NA     9516         670698         NA       NA        188650
25          NA       NA          NA       NA             NA         NA       NA            NA
9     488214.0       NA          NA       NA             NA         NA   409830            NA
45          NA       NA          NA       NA             NA         NA       NA            NA
113         NA       NA          NA       NA             NA         NA       NA            NA
57          NA       NA          NA   190606             NA         NA       NA            NA
21          NA       NA          NA       NA             NA         NA   230790            NA
109   294746.1       NA          NA       NA             NA   142335.7       NA            NA
41    300563.0       NA          NA       NA             NA         NA       NA            NA
53          NA       NA          NA       NA         273956         NA       NA            NA
13          NA       NA      219658       NA             NA         NA       NA            NA
17     27873.0       NA          NA   104123             NA         NA       NA            NA
97          NA       NA          NA       NA             NA         NA       NA            NA
1           NA       NA          NA       NA             NA         NA    50158            NA
37          NA       NA          NA       NA             NA         NA       NA            NA
85          NA       NA          NA       NA             NA         NA       NA            NA
117         NA       NA          NA       NA             NA         NA       NA            NA
121         NA       NA          NA       NA             NA         NA       NA            NA
    vascular_factors hormones genetics other_pathogenic      total1 fluid_biomarkers
89           7559194  4158453 17874679          2315576 140547336.0          2952796
33           2575606  3348344 12461879               NA  93320983.0          2585921
77           3917566   483859  2590367           769340  26184119.0           366875
101           540000   232080  1128000               NA  11510566.0           538767
73                NA   326250   785119           634059   2696715.0               NA
93                NA       NA       NA               NA          NA               NA
5                 NA       NA       NA               NA      1451.0               NA
65                NA       NA       NA               NA   3662248.0               NA
105               NA       NA       NA               NA          NA           400000
81            429188       NA       NA               NA    429188.0               NA
69                NA       NA       NA               NA   2801128.0               NA
29                NA       NA   359270               NA   2437104.0               NA
61            636834       NA       NA           326494   2718355.0               NA
49                NA       NA       NA           521790   2258337.0               NA
25                NA       NA  1206780               NA   1206780.0               NA
9                 NA       NA   471264            63893   1433201.0               NA
45                NA       NA       NA               NA          NA               NA
113               NA       NA       NA               NA          NA               NA
57                NA       NA       NA               NA    190606.0               NA
21                NA       NA       NA               NA    230790.0               NA
109               NA       NA       NA               NA    437081.8               NA
41                NA       NA       NA               NA    300563.0               NA
53                NA       NA       NA               NA    273956.0               NA
13                NA       NA       NA               NA    219658.0               NA
17                NA       NA       NA               NA    131996.0               NA
97                NA       NA       NA               NA          NA               NA
1                 NA       NA       NA               NA     50158.0               NA
37                NA       NA       NA               NA          NA               NA
85                NA       NA       NA               NA          NA               NA
117               NA       NA       NA               NA          NA               NA
121               NA       NA       NA               NA          NA               NA
    imaging_biomarkers cog_behav_assess multimodal_markers novel_biomarkers novel_methodol
89            20395636         10143216           16103243          2931920        1803969
33            16117370          9244572           14972211          2510207         297164
77             1476524           498437                 NA               NA         267630
101            1954053           539715                 NA           327116             NA
73             1630442           158338             752729               NA         321433
93                  NA               NA                 NA               NA             NA
5                   NA               NA                 NA           127778             NA
65                  NA               NA                 NA               NA             NA
105              78978           200000                 NA               NA             NA
81                  NA            96912                 NA               NA             NA
69                  NA           109357                 NA           293935             NA
29                  NA               NA             378303               NA             NA
61                  NA               NA                 NA               NA             NA
49                  NA               NA                 NA               NA             NA
25                  NA               NA                 NA               NA         572870
9                   NA               NA                 NA               NA             NA
45              855711               NA                 NA               NA         344872
113                 NA               NA                 NA               NA             NA
57              315589               NA                 NA               NA             NA
21                  NA               NA                 NA               NA             NA
109                 NA               NA                 NA               NA             NA
41                  NA               NA                 NA               NA             NA
53                  NA               NA                 NA               NA             NA
13                  NA               NA                 NA               NA             NA
17                  NA            35600                 NA               NA             NA
97                  NA               NA                 NA               NA             NA
1                   NA               NA                 NA               NA             NA
37                  NA               NA                 NA               NA             NA
85                  NA               NA                 NA               NA             NA
117                 NA               NA                 NA               NA             NA
121                 NA               NA                 NA               NA             NA
     other     diag drug_discovery preclinical_drug_dev preclinical_proof clinical_trial_design
89  266315 54597095       11260138              7581867           1950742                    NA
33      NA 45727445        8106818              7014532            463151                    NA
77      NA  2609466        3153320               567335                NA                    NA
101     NA  3359651        2105417               238936            239426                    NA
73      NA  2862942             NA                   NA                NA                    NA
93      NA       NA             NA                   NA                NA                    NA
5       NA   127778             NA                   NA           1487591                    NA
65      NA       NA             NA                   NA                NA                    NA
105     NA   678978        2200128               395300                NA                    NA
81      NA    96912             NA                   NA                NA                    NA
69      NA   403292             NA                   NA                NA                    NA
29      NA   378303             NA                   NA                NA                    NA
61      NA       NA             NA                   NA                NA                    NA
49      NA       NA             NA                   NA                NA                    NA
25      NA   572870             NA                   NA                NA                    NA
9       NA       NA             NA                   NA                NA                    NA
45      NA  1200583             NA                   NA                NA                    NA
113     NA       NA             NA                   NA                NA                    NA
57      NA   315589             NA                   NA                NA                    NA
21  266315   266315             NA                   NA                NA                    NA
109     NA       NA             NA                   NA                NA                    NA
41      NA       NA             NA                   NA                NA                    NA
53      NA       NA             NA                   NA                NA                    NA
13      NA       NA             NA                   NA                NA                    NA
17      NA    35600             NA                   NA                NA                    NA
97      NA       NA             NA                   NA                NA                    NA
1       NA       NA             NA                   NA                NA                    NA
37      NA       NA             NA                   NA                NA                    NA
85      NA       NA             NA                   NA                NA                    NA
117     NA       NA             NA                   NA                NA                    NA
121     NA       NA             NA                   NA                NA                    NA
    early_stage_drug_dv late_stage_drug_dv nonpharmacological clinical_therapy_dev
89              6184391            1103923            7176867              3229734
33              6184391            1103923            5183796              1882954
77                   NA                 NA                 NA                   NA
101                  NA                 NA             477449               100000
73                   NA                 NA                 NA              1346780
93                   NA                 NA                 NA                   NA
5                    NA                 NA            1993071                   NA
65                   NA                 NA                 NA                   NA
105              280000                 NA                 NA                   NA
81                   NA                 NA                 NA                   NA
69                   NA                 NA                 NA                   NA
29                   NA                 NA                 NA                   NA
61                   NA                 NA                 NA                   NA
49                   NA                 NA                 NA                   NA
25                   NA                 NA                 NA                   NA
9                    NA                 NA                 NA                   NA
45                   NA                 NA                 NA                   NA
113                  NA                 NA             449724                   NA
57                   NA                 NA                 NA                   NA
21                   NA                 NA                 NA                   NA
109                  NA                 NA                 NA                   NA
41                   NA                 NA                 NA                   NA
53                   NA                 NA                 NA                   NA
13                   NA                 NA                 NA                   NA
17                   NA                 NA                 NA                   NA
97                   NA                 NA                 NA                   NA
1                    NA                 NA                 NA                   NA
37                   NA                 NA                 NA                   NA
85                   NA                 NA                 NA                   NA
117                  NA                 NA                 NA                   NA
121                  NA                 NA                 NA                   NA
    clinical_ethics other2 translational_research genetic_risks cardio_factors nutrition
89          1269971     NA               39757633       5303692        2454002   1122748
33           987746     NA               30927311       5303692        2282498   1122748
77               NA     NA                3720655            NA         171504        NA
101              NA     NA                3161228        438362         335501        NA
73           282225     NA                1629005            NA             NA        NA
93               NA     NA                     NA            NA             NA        NA
5                NA     NA                3480662            NA             NA        NA
65               NA     NA                     NA            NA             NA        NA
105              NA     NA                2875428            NA             NA        NA
81               NA     NA                     NA            NA             NA        NA
69               NA     NA                     NA            NA             NA        NA
29               NA     NA                     NA            NA             NA        NA
61               NA     NA                     NA            NA             NA        NA
49               NA     NA                     NA            NA             NA        NA
25               NA     NA                     NA            NA             NA        NA
9                NA     NA                     NA            NA             NA        NA
45               NA     NA                     NA            NA             NA        NA
113              NA     NA                 449724            NA             NA        NA
57               NA     NA                     NA            NA             NA        NA
21               NA     NA                     NA            NA             NA        NA
109              NA     NA                     NA            NA             NA        NA
41               NA     NA                     NA            NA             NA        NA
53               NA     NA                     NA            NA             NA        NA
13               NA     NA                     NA            NA             NA        NA
17               NA     NA                     NA            NA             NA        NA
97               NA     NA                     NA            NA             NA        NA
1                NA     NA                     NA            NA             NA        NA
37               NA     NA                     NA            NA             NA        NA
85               NA     NA                     NA            NA             NA        NA
117              NA     NA                     NA            NA             NA        NA
121              NA     NA                     NA            NA             NA        NA
    multimodal_risk  other3 epidemiology  QoLife tech_assist_care caregiver_support cult_beliefs
89         20508564 1103591     30492597 4492328           112527           5433149           NA
33         19676818   65268     28451024 2170912           112527           3749848           NA
77           781441      NA       952945      NA               NA             32172           NA
101          425526  478770      1678159 2073553           483010            718725       239080
73            40000 1038323      1078323  400577               NA            127120           NA
93               NA      NA           NA      NA               NA           5482442           NA
5                NA      NA           NA  297230               NA            215887           NA
65               NA      NA           NA      NA               NA                NA           NA
105              NA      NA           NA      NA               NA                NA           NA
81               NA      NA           NA 1623609               NA           1308122           NA
69               NA      NA           NA      NA               NA                NA           NA
29               NA      NA           NA      NA               NA                NA           NA
61               NA      NA           NA      NA               NA                NA           NA
49               NA      NA           NA      NA               NA                NA           NA
25               NA      NA           NA      NA               NA                NA           NA
9                NA      NA           NA      NA               NA                NA           NA
45               NA      NA           NA      NA               NA                NA           NA
113              NA  748789       748789      NA               NA                NA           NA
57               NA      NA           NA      NA               NA                NA           NA
21               NA      NA           NA      NA               NA                NA           NA
109              NA      NA           NA      NA               NA                NA           NA
41               NA      NA           NA      NA               NA                NA           NA
53               NA      NA           NA      NA               NA                NA           NA
13               NA      NA           NA      NA               NA                NA           NA
17            10305      NA        10305      NA               NA                NA           NA
97               NA  133643       133643      NA               NA                NA           NA
1                NA      NA           NA      NA               NA                NA           NA
37               NA      NA           NA      NA               NA                NA           NA
85               NA      NA           NA      NA               NA                NA           NA
117              NA      NA           NA      NA               NA                NA           NA
121              NA      NA           NA      NA               NA                NA           NA
    econ_burden other4 care_total total_AD_funding
89      1001121 368167   11407292      276801953.0
33      1001121     NA    7034408      205461171.0
77           NA     NA      32172       33499357.0
101          NA     NA    3514368       23223972.0
73           NA     NA     527697        8794682.0
93           NA     NA    5482442        5482442.0
5            NA 278688     791805        4401696.0
65           NA     NA         NA        3662248.0
105          NA     NA         NA        3554406.0
81           NA  89479    3021210        3547310.0
69           NA     NA         NA        3204420.0
29           NA     NA         NA        2815407.0
61           NA     NA         NA        2718355.0
49           NA     NA         NA        2258337.0
25           NA     NA         NA        1779650.0
9            NA     NA         NA        1433201.0
45           NA     NA         NA        1200583.0
113          NA     NA         NA        1198513.0
57           NA     NA         NA         506195.0
21           NA     NA         NA         497105.0
109          NA     NA         NA         437081.8
41           NA     NA         NA         300563.0
53           NA     NA         NA         273956.0
13           NA     NA         NA         219658.0
17           NA     NA         NA         177901.0
97           NA     NA         NA         133643.0
1            NA     NA         NA          50158.0
37           NA     NA         NA               NA
85           NA     NA         NA               NA
117          NA     NA         NA               NA
121          NA     NA         NA               NA
> max(year_08$econ_burden)
[1] NA
> plot(year_08_list)
Error in plot.new() : figure margins too large
In addition: Warning messages:
1: In data.matrix(x) : NAs introduced by coercion
2: In min(x) : no non-missing arguments to min; returning Inf
3: In max(x) : no non-missing arguments to max; returning -Inf
4: In min(x) : no non-missing arguments to min; returning Inf
5: In max(x) : no non-missing arguments to max; returning -Inf
> plot(year_08$funding_org, year_08$total_AD_funding, pch=16, col="red", main="2008 federal funding",
+      xlab="Funding organization", ylab="amount of funding", ylim=c(0, max(year_08$total_AD_funding)))
Error in plot.new() : figure margins too large
In addition: Warning messages:
1: In xy.coords(x, y, xlabel, ylabel, log) : NAs introduced by coercion
2: In min(x) : no non-missing arguments to min; returning Inf
3: In max(x) : no non-missing arguments to max; returning -Inf
> 
> 
> funding_no_na <- total_AD_funding[complete.cases(total_AD_funding)]
Error: object 'total_AD_funding' not found
> funding_no_na <- total_AD_funding[complete.cases(total_AD_funding),]
Error: object 'total_AD_funding' not found
> year_09 <- subset(data, FY==2009)
> head(year_09)
                                                                funding_org   FY amyloid   tau
2                                    Fogarty International Center (NIH/FIC) 2009      NA 57904
6    National Center for Complementary and Alternative Medicine (NIH/NCCAM) 2009      NA    NA
10                                      National Cancer Institute (NIH/NCI) 2009 1261930    NA
14 National Institute on Minority Health and Health Disparities (NIH/NIMHD) 2009      NA    NA
18                        National Center for Research Resources (NIH/NCRR) 2009   67637    NA
22                                         National Eye Institute (NIH/NEI) 2009      NA    NA
   presenilins   ApoE brain_circuits cell_death immunity bioenergetics vascular_factors hormones
2           NA     NA             NA         NA    50309            NA               NA       NA
6           NA     NA             NA         NA       NA            NA               NA       NA
10          NA     NA             NA         NA   385579            NA               NA       NA
14          NA     NA             NA         NA       NA            NA               NA       NA
18          NA 106598             NA         NA       NA            NA               NA       NA
22          NA     NA             NA         NA       NA            NA               NA       NA
   genetics other_pathogenic  total1 fluid_biomarkers imaging_biomarkers cog_behav_assess
2        NA               NA  108213               NA                 NA               NA
6        NA               NA      NA               NA                 NA               NA
10   202788            64278 1914575               NA                 NA               NA
14       NA               NA      NA               NA                 NA               NA
18       NA               NA  174235               NA                 NA            54800
22       NA               NA      NA               NA                 NA               NA
   multimodal_markers novel_biomarkers novel_methodol  other   diag drug_discovery
2                  NA               NA             NA     NA     NA             NA
6                  NA           127778             NA     NA 127778             NA
10                 NA               NA             NA     NA     NA             NA
14                 NA               NA             NA     NA     NA             NA
18                 NA               NA             NA     NA  54800             NA
22                 NA               NA             NA 271750 271750             NA
   preclinical_drug_dev preclinical_proof clinical_trial_design early_stage_drug_dv
2                    NA                NA                    NA                  NA
6                    NA           1625379                    NA                  NA
10                   NA                NA                    NA                  NA
14                   NA                NA                    NA                  NA
18                   NA                NA                    NA                  NA
22                   NA                NA                    NA                  NA
   late_stage_drug_dv nonpharmacological clinical_therapy_dev clinical_ethics other2
2                  NA                 NA                   NA              NA     NA
6                  NA             147530                   NA              NA     NA
10                 NA                 NA                   NA              NA     NA
14                 NA                 NA                   NA              NA     NA
18                 NA                 NA                   NA              NA     NA
22                 NA                 NA                   NA              NA     NA
   translational_research genetic_risks cardio_factors nutrition multimodal_risk other3
2                      NA            NA             NA        NA              NA     NA
6                 1772909            NA             NA        NA              NA     NA
10                     NA            NA             NA        NA              NA     NA
14                     NA            NA             NA        NA              NA     NA
18                     NA            NA             NA        NA            3406     NA
22                     NA            NA             NA        NA              NA     NA
   epidemiology QoLife tech_assist_care caregiver_support cult_beliefs econ_burden other4
2            NA     NA               NA                NA           NA          NA     NA
6            NA 288941               NA            182738           NA          NA 159250
10           NA     NA               NA                NA           NA          NA     NA
14           NA     NA               NA                NA           NA          NA     NA
18         3406     NA               NA                NA           NA          NA     NA
22           NA     NA               NA                NA           NA          NA     NA
   care_total total_AD_funding
2          NA           108213
6      630929          2531616
10         NA          1914575
14         NA               NA
18         NA           232441
22         NA           271750
> year_09_list <- year_09[order(year_09$total_AD_funding, decreasing=TRUE),]
> 
> year_09_list
                                                                          funding_org   FY
90                                                National Institutes of Health (NIH) 2009
34                                              National Institute on Aging (NIH/NIA) 2009
78                National Institute of Neurological Disorders and Stroke (NIH/NINDS) 2009
102                                                           Alzheimer's Association 2009
74                                     National Institute of Mental Health (NIH/NIMH) 2009
94                                                      Administration on Aging (AoA) 2009
70                         National Institute of General Medical Sciences (NIH/NIGMS) 2009
66                    National Institute of Environmental Health Sciences (NIH/NIEHS) 2009
62       National Institute of Diabetes and Digestive and Kidney Diseases (NIH/NIDDK) 2009
110                                                           Alzheimer's Research UK 2009
58       National Institute on Deafness and Other Communication Disorders (NIH/NIDCD) 2009
106                                             Alzheimer's Drug Discovery Foundation 2009
82                                  National Institute of Nursing Research (NIH/NINR) 2009
30                              National Heart, Lung, and Blood Institute (NIH/NHLBI) 2009
50               National Institute of Child Health and Human Development (NIH/NICHD) 2009
6              National Center for Complementary and Alternative Medicine (NIH/NCCAM) 2009
10                                                National Cancer Institute (NIH/NCI) 2009
26                               National Human Genome Research Institute (NIH/NHGRI) 2009
114                                  Centers for Disease Control and Prevention (CDC) 2009
46            National Institute of Biomedical Imaging and Bioengineering (NIH/NIBIB) 2009
54                                        National Institute on Drug Abuse (NIH/NIDA) 2009
98                                  Agency for Healthcare Research and Quality (AHRQ) 2009
22                                                   National Eye Institute (NIH/NEI) 2009
18                                  National Center for Research Resources (NIH/NCRR) 2009
2                                              Fogarty International Center (NIH/FIC) 2009
14           National Institute on Minority Health and Health Disparities (NIH/NIMHD) 2009
38                  National Institute of Allergy and Infectious Diseases (NIH/NIAID) 2009
42  National Institute of Arthritis and Musculoskeletal and Skin Diseases (NIH/NIAMS) 2009
86                                                    Office of the Director (NIH/OD) 2009
118                                               Department of Veterans Affairs (VA) 2009
122                         United States Army Medical Research and Materiel Command  2009
     amyloid        tau presenilins     ApoE brain_circuits cell_death immunity bioenergetics
90  55832670 11869351.0     5120006 14348874       13509337   11269926 16724129       4006099
34  36090008  7790033.0     2670843 11579977        9647717    5920767 11329576       3202345
78  11121288  3415179.0     2449163  1255706        2555561    1994093  1400208            NA
102  1927300   989778.0      280000    80000         999553     360000   450000        400000
74    513895   338491.0          NA       NA             NA         NA   731770            NA
94        NA         NA          NA       NA             NA         NA       NA            NA
70   2323394   267744.0          NA   356561             NA    1439439       NA        615104
66    678444         NA          NA   288563             NA         NA  1726382            NA
62   2792550         NA          NA       NA             NA         NA   724055            NA
110  1201845   702739.9          NA       NA             NA         NA       NA            NA
58        NA         NA          NA       NA         728029         NA       NA            NA
106       NA         NA          NA       NA             NA         NA       NA            NA
82        NA         NA          NA       NA             NA         NA       NA            NA
30        NA         NA          NA   716837             NA    1915627       NA            NA
50    983524         NA          NA    44632         578030         NA       NA        188650
6         NA         NA          NA       NA             NA         NA       NA            NA
10   1261930         NA          NA       NA             NA         NA   385579            NA
26        NA         NA          NA       NA             NA         NA       NA            NA
114       NA         NA          NA       NA             NA         NA       NA            NA
46        NA         NA          NA       NA             NA         NA       NA            NA
54        NA         NA          NA       NA             NA         NA   376250            NA
98        NA         NA          NA       NA             NA         NA       NA            NA
22        NA         NA          NA       NA             NA         NA       NA            NA
18     67637         NA          NA   106598             NA         NA       NA            NA
2         NA    57904.0          NA       NA             NA         NA    50309            NA
14        NA         NA          NA       NA             NA         NA       NA            NA
38        NA         NA          NA       NA             NA         NA       NA            NA
42        NA         NA          NA       NA             NA         NA       NA            NA
86        NA         NA          NA       NA             NA         NA       NA            NA
118       NA         NA          NA       NA             NA         NA       NA            NA
122       NA         NA          NA       NA             NA         NA       NA            NA
    vascular_factors hormones genetics other_pathogenic    total1 fluid_biomarkers
90         9039525.0  5509249 31772019          1926750 180927935          4173413
34         3613488.0  4233938 28273059           322980 124674731          4173413
78         3805869.0   259001  1376556           597114  30229738               NA
102         380000.0   200000   840000               NA   6906631            80000
74                NA   326250   761480           634131   3306017               NA
94                NA       NA       NA               NA        NA               NA
70                NA       NA       NA               NA   5002242               NA
66          478205.0   690060       NA           258193   4119847               NA
62          712775.0       NA       NA               NA   4229380               NA
110         221105.9       NA  1455183               NA   3580873               NA
58                NA       NA       NA               NA    728029               NA
106               NA       NA       NA               NA        NA           195000
82          429188.0       NA       NA               NA    429188               NA
30                NA       NA       NA               NA   2632464               NA
50                NA       NA       NA            50054   1844890               NA
6                 NA       NA       NA               NA        NA               NA
10                NA       NA   202788            64278   1914575               NA
26                NA       NA  1158136               NA   1158136               NA
114               NA       NA       NA               NA        NA               NA
46                NA       NA       NA               NA        NA               NA
54                NA       NA       NA               NA    376250               NA
98                NA       NA       NA               NA        NA               NA
22                NA       NA       NA               NA        NA               NA
18                NA       NA       NA               NA    174235               NA
2                 NA       NA       NA               NA    108213               NA
14                NA       NA       NA               NA        NA               NA
38                NA       NA       NA               NA        NA               NA
42                NA       NA       NA               NA        NA               NA
86                NA       NA       NA               NA        NA               NA
118               NA       NA       NA               NA        NA               NA
122               NA       NA       NA               NA        NA               NA
    imaging_biomarkers cog_behav_assess multimodal_markers novel_biomarkers novel_methodol
90         32057285.00         10353803         18311129.0          6115184        3389138
34         30307430.00         10194590         15397815.0          5319162         795344
78           540675.00               NA           234461.0               NA         712096
102         1967207.00           480000          1179190.0           277098             NA
74                  NA               NA           613481.0               NA         321433
94                  NA               NA                 NA               NA             NA
70                  NA           104413                 NA           261935             NA
66                  NA               NA                 NA               NA             NA
62                  NA               NA                 NA               NA             NA
110           48318.77               NA           167726.4               NA             NA
58           527155.00               NA           733440.0           406309         750001
106                 NA               NA           200000.0               NA             NA
82                  NA               NA                 NA               NA             NA
30                  NA               NA           379817.0               NA             NA
50                  NA               NA           952115.0               NA             NA
6                   NA               NA                 NA           127778             NA
10                  NA               NA                 NA               NA             NA
26                  NA               NA                 NA               NA         362180
114                 NA               NA                 NA               NA             NA
46           682025.00               NA                 NA               NA         448084
54                  NA               NA                 NA               NA             NA
98                  NA               NA                 NA               NA             NA
22                  NA               NA                 NA               NA             NA
18                  NA            54800                 NA               NA             NA
2                   NA               NA                 NA               NA             NA
14                  NA               NA                 NA               NA             NA
38                  NA               NA                 NA               NA             NA
42                  NA               NA                 NA               NA             NA
86                  NA               NA                 NA               NA             NA
118                 NA               NA                 NA               NA             NA
122                 NA               NA                 NA               NA             NA
     other       diag drug_discovery preclinical_drug_dev preclinical_proof
90  271750 74671702.0       13025969              9253358           2088530
34      NA 66187754.0        9450059              8910141            463151
78      NA  1487232.0        3236749               343217                NA
102     NA  3983495.0        1489997                   NA                NA
74      NA   934914.0             NA                   NA                NA
94      NA         NA             NA                   NA                NA
70      NA   366348.0         314161                   NA                NA
66      NA         NA             NA                   NA                NA
62      NA         NA             NA                   NA                NA
110     NA   216045.2             NA                   NA                NA
58      NA  2416905.0             NA                   NA                NA
106     NA   395000.0        2550099               100000                NA
82      NA         NA             NA                   NA                NA
30      NA   379817.0             NA                   NA                NA
50      NA   952115.0             NA                   NA                NA
6       NA   127778.0             NA                   NA           1625379
10      NA         NA             NA                   NA                NA
26      NA   362180.0             NA                   NA                NA
114     NA         NA             NA                   NA                NA
46      NA  1130109.0             NA                   NA                NA
54      NA         NA          25000                   NA                NA
98      NA         NA             NA                   NA                NA
22  271750   271750.0             NA                   NA                NA
18      NA    54800.0             NA                   NA                NA
2       NA         NA             NA                   NA                NA
14      NA         NA             NA                   NA                NA
38      NA         NA             NA                   NA                NA
42      NA         NA             NA                   NA                NA
86      NA         NA             NA                   NA                NA
118     NA         NA             NA                   NA                NA
122     NA         NA             NA                   NA                NA
    clinical_trial_design early_stage_drug_dv late_stage_drug_dv nonpharmacological
90                  55440             8720016            6641998            7395027
34                  55440             8720016            6641998            7247497
78                     NA                  NA                 NA                 NA
102                359006                  NA                 NA             440000
74                     NA                  NA                 NA                 NA
94                     NA                  NA                 NA                 NA
70                     NA                  NA                 NA                 NA
66                     NA                  NA                 NA                 NA
62                     NA                  NA                 NA                 NA
110                    NA                  NA                 NA                 NA
58                     NA                  NA                 NA                 NA
106                    NA                  NA             180000                 NA
82                     NA                  NA                 NA                 NA
30                     NA                  NA                 NA                 NA
50                     NA                  NA                 NA                 NA
6                      NA                  NA                 NA             147530
10                     NA                  NA                 NA                 NA
26                     NA                  NA                 NA                 NA
114                    NA                  NA                 NA             449829
46                     NA                  NA                 NA                 NA
54                     NA                  NA                 NA                 NA
98                     NA                  NA                 NA                 NA
22                     NA                  NA                 NA                 NA
18                     NA                  NA                 NA                 NA
2                      NA                  NA                 NA                 NA
14                     NA                  NA                 NA                 NA
38                     NA                  NA                 NA                 NA
42                     NA                  NA                 NA                 NA
86                     NA                  NA                 NA                 NA
118                    NA                  NA                 NA                 NA
122                    NA                  NA                 NA                 NA
    clinical_therapy_dev clinical_ethics other2 translational_research genetic_risks
90               3674556         1261451     NA               52116345       6750456
34               3063219         1009169     NA               45560690       6599618
78                    NA              NA     NA                3579966        150838
102                   NA              NA     NA                2289003            NA
74                611337          252282     NA                 863619            NA
94                    NA              NA     NA                     NA            NA
70                    NA              NA     NA                 314161            NA
66                    NA              NA     NA                     NA            NA
62                    NA              NA     NA                     NA            NA
110                   NA              NA     NA                     NA            NA
58                    NA              NA     NA                     NA            NA
106                   NA              NA 175000                3005099            NA
82                    NA              NA     NA                     NA            NA
30                    NA              NA     NA                     NA            NA
50                    NA              NA     NA                     NA            NA
6                     NA              NA     NA                1772909            NA
10                    NA              NA     NA                     NA            NA
26                    NA              NA     NA                     NA            NA
114                   NA              NA     NA                 449829            NA
46                    NA              NA     NA                     NA            NA
54                    NA              NA     NA                  25000            NA
98                    NA              NA     NA                     NA            NA
22                    NA              NA     NA                     NA            NA
18                    NA              NA     NA                     NA            NA
2                     NA              NA     NA                     NA            NA
14                    NA              NA     NA                     NA            NA
38                    NA              NA     NA                     NA            NA
42                    NA              NA     NA                     NA            NA
86                    NA              NA     NA                     NA            NA
118                   NA              NA     NA                     NA            NA
122                   NA              NA     NA                     NA            NA
    cardio_factors nutrition multimodal_risk  other3 epidemiology  QoLife tech_assist_care
90         3797911   1775325        24216405 2449493     38989590 4217935           137997
34         2698046   1775325        23408931  423448     34905368 1514411           137997
78         1099865        NA          804068      NA      2054771      NA               NA
102          79957        NA          298100      NA       378057  320000           320000
74              NA        NA              NA 1763480      1763480  781714               NA
94              NA        NA              NA      NA           NA      NA               NA
70              NA        NA              NA      NA           NA      NA               NA
66              NA        NA              NA  262565       262565      NA               NA
62              NA        NA              NA      NA           NA      NA               NA
110             NA        NA              NA      NA           NA      NA               NA
58              NA        NA              NA      NA           NA  326188               NA
106             NA        NA              NA      NA           NA      NA               NA
82              NA        NA              NA      NA           NA 1306681               NA
30              NA        NA              NA      NA           NA      NA               NA
50              NA        NA              NA      NA           NA      NA               NA
6               NA        NA              NA      NA           NA  288941               NA
10              NA        NA              NA      NA           NA      NA               NA
26              NA        NA              NA      NA           NA      NA               NA
114             NA        NA              NA  750000       750000      NA               NA
46              NA        NA              NA      NA           NA      NA               NA
54              NA        NA              NA      NA           NA      NA               NA
98              NA        NA              NA  285380       285380      NA               NA
22              NA        NA              NA      NA           NA      NA               NA
18              NA        NA            3406      NA         3406      NA               NA
2               NA        NA              NA      NA           NA      NA               NA
14              NA        NA              NA      NA           NA      NA               NA
38              NA        NA              NA      NA           NA      NA               NA
42              NA        NA              NA      NA           NA      NA               NA
86              NA        NA              NA      NA           NA      NA               NA
118             NA        NA              NA      NA           NA      NA               NA
122             NA        NA              NA      NA           NA      NA               NA
    caregiver_support cult_beliefs econ_burden other4 care_total total_AD_funding
90            6101751           NA     1526997 275390   12260070        358965642
34            4285210           NA     1526997  41176    7505791        278834334
78                 NA           NA          NA     NA         NA         37351707
102             80000       420000          NA     NA    1140000         14697186
74             130707           NA          NA     NA     912421          7780451
94            6723755           NA          NA     NA    6723755          6723755
70                 NA           NA          NA     NA         NA          5682751
66                 NA           NA          NA     NA         NA          4382412
62                 NA           NA          NA     NA         NA          4229380
110                NA           NA          NA     NA         NA          3796919
58                 NA           NA          NA     NA     326188          3471122
106                NA           NA          NA     NA         NA          3400099
82            1503096           NA          NA  74964    2884741          3313929
30                 NA           NA          NA     NA         NA          3012281
50                 NA           NA          NA     NA         NA          2797005
6              182738           NA          NA 159250     630929          2531616
10                 NA           NA          NA     NA         NA          1914575
26                 NA           NA          NA     NA         NA          1520316
114                NA           NA          NA     NA         NA          1199829
46                 NA           NA          NA     NA         NA          1130109
54                 NA           NA          NA     NA         NA           401250
98                 NA           NA          NA     NA         NA           285380
22                 NA           NA          NA     NA         NA           271750
18                 NA           NA          NA     NA         NA           232441
2                  NA           NA          NA     NA         NA           108213
14                 NA           NA          NA     NA         NA               NA
38                 NA           NA          NA     NA         NA               NA
42                 NA           NA          NA     NA         NA               NA
86                 NA           NA          NA     NA         NA               NA
118                NA           NA          NA     NA         NA               NA
122                NA           NA          NA     NA         NA               NA

year_10_list:
                                                                          funding_org   FY
91                                                National Institutes of Health (NIH) 2010
35                                              National Institute on Aging (NIH/NIA) 2010
79                National Institute of Neurological Disorders and Stroke (NIH/NINDS) 2010
119                                               Department of Veterans Affairs (VA) 2010
103                                                           Alzheimer's Association 2010
99                                  Agency for Healthcare Research and Quality (AHRQ) 2010
107                                             Alzheimer's Drug Discovery Foundation 2010
75                                     National Institute of Mental Health (NIH/NIMH) 2010
111                                                           Alzheimer's Research UK 2010
31                              National Heart, Lung, and Blood Institute (NIH/NHLBI) 2010
71                         National Institute of General Medical Sciences (NIH/NIGMS) 2010
95                                                      Administration on Aging (AoA) 2010
63       National Institute of Diabetes and Digestive and Kidney Diseases (NIH/NIDDK) 2010
51               National Institute of Child Health and Human Development (NIH/NICHD) 2010
83                                  National Institute of Nursing Research (NIH/NINR) 2010
59       National Institute on Deafness and Other Communication Disorders (NIH/NIDCD) 2010
67                    National Institute of Environmental Health Sciences (NIH/NIEHS) 2010
7              National Center for Complementary and Alternative Medicine (NIH/NCCAM) 2010
87                                                    Office of the Director (NIH/OD) 2010
11                                                National Cancer Institute (NIH/NCI) 2010
19                                  National Center for Research Resources (NIH/NCRR) 2010
27                               National Human Genome Research Institute (NIH/NHGRI) 2010
47            National Institute of Biomedical Imaging and Bioengineering (NIH/NIBIB) 2010
43  National Institute of Arthritis and Musculoskeletal and Skin Diseases (NIH/NIAMS) 2010
55                                        National Institute on Drug Abuse (NIH/NIDA) 2010
39                  National Institute of Allergy and Infectious Diseases (NIH/NIAID) 2010
3                                              Fogarty International Center (NIH/FIC) 2010
23                                                   National Eye Institute (NIH/NEI) 2010
15           National Institute on Minority Health and Health Disparities (NIH/NIMHD) 2010
115                                  Centers for Disease Control and Prevention (CDC) 2010
123                         United States Army Medical Research and Materiel Command  2010
     amyloid       tau presenilins        ApoE brain_circuits cell_death   immunity
91  54288652 8750632.0     4100710 11948330.00     14404686.0   10377158 13765908.0
35  33838530 5700568.0     2350438  9305979.00      9658427.0    5898311 10181577.0
79  11910106 2653669.0     1750272  1202741.00      2199927.0    3161140  1448994.0
119  1923819  876247.9          NA    83437.89       479783.3    1355262  2457320.6
103  2229624  410000.0       80000    80000.00       599970.0     440000   400000.0
99        NA        NA          NA          NA             NA         NA         NA
107       NA        NA          NA          NA             NA         NA         NA
75    539074  338491.0          NA          NA             NA         NA  1216977.0
111  1043709        NA          NA          NA             NA         NA   138617.5
31        NA        NA          NA   791796.00             NA         NA         NA
71   1558646        NA          NA   325114.00             NA    1317707         NA
95        NA        NA          NA          NA             NA         NA         NA
63   2521165        NA          NA          NA             NA         NA         NA
51    973688        NA          NA     9422.00       588346.0         NA         NA
83        NA        NA          NA          NA             NA         NA         NA
59        NA        NA          NA          NA             NA         NA         NA
67    589531        NA          NA   313278.00             NA         NA         NA
7         NA        NA          NA          NA             NA         NA         NA
87        NA        NA          NA          NA      1732986.0         NA         NA
11   1069094        NA          NA          NA             NA         NA   462576.0
19     11066        NA          NA          NA             NA         NA         NA
27        NA        NA          NA          NA             NA         NA         NA
47     40648        NA          NA          NA             NA         NA         NA
43    803844        NA          NA          NA             NA         NA         NA
55        NA        NA          NA          NA       225000.0         NA   372488.0
39    433260        NA          NA          NA             NA         NA         NA
3         NA   57904.0          NA          NA             NA         NA    83296.0
23        NA        NA          NA          NA             NA         NA         NA
15        NA        NA      219658          NA             NA         NA         NA
115       NA        NA          NA          NA             NA         NA         NA
123       NA        NA          NA          NA             NA         NA         NA
    bioenergetics vascular_factors hormones   genetics other_pathogenic    total1
91      2562599.0        9584990.0  4137155 26647105.0        1998096.0 162566021
35      1694990.0        3859958.0  3298068 21422936.0         478595.0 107688377
79             NA        3457472.0       NA  3161626.0        1102092.0  32048039
119      176088.1         318600.0       NA   302778.6         270614.2   8243952
103      719999.0         960000.0       NA   160000.0               NA   6079593
99             NA               NA       NA         NA               NA        NA
107            NA               NA       NA         NA               NA        NA
75             NA               NA   326250  1173359.0               NA   3594151
111            NA         161052.4       NA   756161.3         471684.9   2571225
31             NA               NA       NA         NA               NA    791796
71       626685.0               NA       NA         NA               NA   3828152
95             NA               NA       NA         NA               NA        NA
63             NA         859489.0       NA         NA               NA   3380654
51        50654.0         421083.0       NA         NA               NA   2043193
83             NA         511435.0       NA         NA               NA    511435
59             NA               NA       NA         NA               NA        NA
67             NA         475553.0   512837         NA         348773.0   2239972
7              NA               NA       NA         NA               NA        NA
87             NA               NA       NA         NA               NA   1732986
11             NA               NA       NA         NA          68636.0   1600306
19       190270.0               NA       NA         NA               NA    201336
27             NA               NA       NA   889184.0               NA    889184
47             NA               NA       NA         NA               NA     40648
43             NA               NA       NA         NA               NA    803844
55             NA               NA       NA         NA               NA    597488
39             NA               NA       NA         NA               NA    433260
3              NA               NA       NA         NA               NA    141200
23             NA               NA       NA         NA               NA        NA
15             NA               NA       NA         NA               NA    219658
115            NA               NA       NA         NA               NA        NA
123            NA               NA       NA         NA               NA        NA
    fluid_biomarkers imaging_biomarkers cog_behav_assess multimodal_markers novel_biomarkers
91           4268799         38141155.0       13253035.0           22747077        4384269.0
35           4268799         32091196.0       12952314.0           18893660        3768757.0
79                NA           507219.0               NA             686372               NA
119               NA           366397.9         456076.0             137200         337465.3
103           200000           929201.0          80000.0             600000               NA
99                NA                 NA               NA                 NA               NA
107           247482           115000.0               NA             150000               NA
75                NA                 NA               NA             641846               NA
111               NA           250533.7         230295.9            2428996               NA
31                NA          3360279.0               NA             372460               NA
71                NA                 NA         108750.0                 NA         103704.0
95                NA                 NA               NA                 NA               NA
63                NA                 NA               NA                 NA               NA
51                NA                 NA         137144.0            1050182               NA
83                NA                 NA               NA                 NA               NA
59                NA           486745.0               NA             886510         384030.0
67                NA                 NA               NA                 NA               NA
7                 NA                 NA               NA                 NA         127778.0
87                NA                 NA               NA                 NA               NA
11                NA                 NA               NA                 NA               NA
19                NA          1034435.0          54827.0             216047               NA
27                NA                 NA               NA                 NA               NA
47                NA           661281.0               NA                 NA               NA
43                NA                 NA               NA                 NA               NA
55                NA                 NA               NA                 NA               NA
39                NA                 NA               NA                 NA               NA
3                 NA                 NA               NA                 NA               NA
23                NA                 NA               NA                 NA               NA
15                NA                 NA               NA                 NA               NA
115               NA                 NA               NA                 NA               NA
123               NA                 NA               NA                 NA               NA
    novel_methodol  other     diag drug_discovery preclinical_drug_dev preclinical_proof
91         3202344 269033 86265712       12671333             11452116           1771417
35         1236889     NA 73211615        9892526             10513724            258785
79          352675     NA  1546266        2506143               938392                NA
119             NA     NA  1297139         583900                   NA                NA
103          80000     NA  1889201        3119210                   NA             80000
99              NA     NA       NA             NA                   NA                NA
107             NA     NA   512482        3096668               150000            152000
75              NA     NA   641846             NA                   NA                NA
111             NA     NA  2909826             NA                   NA                NA
31              NA     NA  3732739             NA                   NA                NA
71              NA     NA   212454         272664                   NA                NA
95              NA     NA       NA             NA                   NA                NA
63              NA     NA       NA             NA                   NA                NA
51              NA     NA  1187326             NA                   NA                NA
83              NA     NA       NA             NA                   NA                NA
59          669843     NA  2427128             NA                   NA                NA
67              NA     NA       NA             NA                   NA                NA
7               NA     NA   127778             NA                   NA           1512632
87              NA     NA       NA             NA                   NA                NA
11              NA     NA       NA             NA                   NA                NA
19              NA     NA  1305309             NA                   NA                NA
27          601513     NA   601513             NA                   NA                NA
47          341424     NA  1002705             NA                   NA                NA
43              NA     NA       NA             NA                   NA                NA
55              NA     NA       NA             NA                   NA                NA
39              NA     NA       NA             NA                   NA                NA
3               NA     NA       NA             NA                   NA                NA
23              NA 269033   269033             NA                   NA                NA
15              NA     NA       NA             NA                   NA                NA
115             NA     NA       NA             NA                   NA                NA
123             NA     NA       NA             NA                   NA                NA
    clinical_trial_design early_stage_drug_dv late_stage_drug_dv nonpharmacological
91                  54886             7653056            9653219           10958418
35                  54886             7653056            9653219           10716817
79                     NA                  NA                 NA                 NA
119                    NA                  NA                 NA            2692348
103                    NA              449966                 NA                 NA
99                     NA                  NA                 NA                 NA
107                    NA             1974300                 NA              70000
75                     NA                  NA                 NA                 NA
111                    NA                  NA                 NA                 NA
31                     NA                  NA                 NA                 NA
71                     NA                  NA                 NA                 NA
95                     NA                  NA                 NA                 NA
63                     NA                  NA                 NA                 NA
51                     NA                  NA                 NA                 NA
83                     NA                  NA                 NA                 NA
59                     NA                  NA                 NA                 NA
67                     NA                  NA                 NA                 NA
7                      NA                  NA                 NA             241601
87                     NA                  NA                 NA                 NA
11                     NA                  NA                 NA                 NA
19                     NA                  NA                 NA                 NA
27                     NA                  NA                 NA                 NA
47                     NA                  NA                 NA                 NA
43                     NA                  NA                 NA                 NA
55                     NA                  NA                 NA                 NA
39                     NA                  NA                 NA                 NA
3                      NA                  NA                 NA                 NA
23                     NA                  NA                 NA                 NA
15                     NA                  NA                 NA                 NA
115                    NA                  NA                 NA                 NA
123                    NA                  NA                 NA                 NA
    clinical_therapy_dev clinical_ethics   other2 translational_research genetic_risks
91             2942712.0          992589       NA               58149746       6653505
35             2942712.0          992589       NA               52678314       6184508
79                    NA              NA       NA                3444535        174143
119              41222.7              NA 308224.4                3625695            NA
103                   NA              NA       NA                3649176            NA
99                    NA              NA       NA                     NA            NA
107                   NA              NA       NA                5442968            NA
75                    NA              NA       NA                     NA            NA
111                   NA              NA       NA                     NA            NA
31                    NA              NA       NA                     NA            NA
71                    NA              NA       NA                 272664            NA
95                    NA              NA       NA                     NA            NA
63                    NA              NA       NA                     NA            NA
51                    NA              NA       NA                     NA        217974
83                    NA              NA       NA                     NA            NA
59                    NA              NA       NA                     NA            NA
67                    NA              NA       NA                     NA         76880
7                     NA              NA       NA                1754233            NA
87                    NA              NA       NA                     NA            NA
11                    NA              NA       NA                     NA            NA
19                    NA              NA       NA                     NA            NA
27                    NA              NA       NA                     NA            NA
47                    NA              NA       NA                     NA            NA
43                    NA              NA       NA                     NA            NA
55                    NA              NA       NA                     NA            NA
39                    NA              NA       NA                     NA            NA
3                     NA              NA       NA                     NA            NA
23                    NA              NA       NA                     NA            NA
15                    NA              NA       NA                     NA            NA
115                   NA              NA       NA                     NA            NA
123                   NA              NA       NA                     NA            NA
    cardio_factors nutrition multimodal_risk  other3 epidemiology  QoLife tech_assist_care
91         3950869   1706152        28321825 1492935     42125286 3953760               NA
35         3177473   1706152        27450971  187659     38706763 1648099               NA
79          773396        NA          725224      NA      1672763      NA               NA
119             NA        NA              NA      NA           NA   90020               NA
103          80000        NA           77422      NA       157422  840000           364040
99              NA        NA              NA  151742       151742 8724119               NA
107             NA        NA              NA      NA           NA      NA               NA
75              NA        NA              NA 1103267      1103267  596342               NA
111             NA        NA              NA      NA           NA      NA               NA
31              NA        NA              NA      NA           NA      NA               NA
71              NA        NA              NA      NA           NA      NA               NA
95              NA        NA              NA      NA           NA      NA               NA
63              NA        NA              NA      NA           NA      NA               NA
51              NA        NA              NA      NA       217974      NA               NA
83              NA        NA              NA      NA           NA 1386393               NA
59              NA        NA              NA      NA           NA  322926               NA
67              NA        NA              NA  202009       278889      NA               NA
7               NA        NA              NA      NA           NA      NA               NA
87              NA        NA              NA      NA           NA      NA               NA
11              NA        NA              NA      NA           NA      NA               NA
19              NA        NA            3039      NA         3039      NA               NA
27              NA        NA              NA      NA           NA      NA               NA
47              NA        NA              NA      NA           NA      NA               NA
43              NA        NA              NA      NA           NA      NA               NA
55              NA        NA              NA      NA           NA      NA               NA
39              NA        NA              NA      NA           NA      NA               NA
3               NA        NA          142591      NA       142591      NA               NA
23              NA        NA              NA      NA           NA      NA               NA
15              NA        NA              NA      NA           NA      NA               NA
115             NA        NA              NA      NA           NA      NA               NA
123             NA        NA              NA      NA           NA      NA               NA
    caregiver_support cult_beliefs econ_burden other4 care_total total_AD_funding
91            4716550       185000     1582722     NA   10438032        359544797
35            3503351           NA     1582722     NA    6734172        279019241
79                 NA           NA          NA     NA         NA         38711603
119            832262           NA       47159 335489    1304930         14471715
103                NA       180000          NA     NA    1384040         13159432
99                 NA           NA          NA     NA    8724119          8875861
107                NA           NA          NA     NA         NA          5955450
75                 NA           NA          NA     NA     596342          5935606
111                NA           NA          NA     NA         NA          5481051
31                 NA           NA          NA     NA         NA          4524535
71                 NA           NA          NA     NA         NA          4313270
95            4215853           NA          NA     NA    4215853          4215853
63                 NA       185000          NA     NA     185000          3565654
51                 NA           NA          NA     NA         NA          3448493
83            1213199           NA          NA     NA    2599592          3111027
59                 NA           NA          NA     NA     322926          2750054
67                 NA           NA          NA     NA         NA          2518861
7                  NA           NA          NA     NA         NA          1882011
87                 NA           NA          NA     NA         NA          1732986
11                 NA           NA          NA     NA         NA          1600306
19                 NA           NA          NA     NA         NA          1509684
27                 NA           NA          NA     NA         NA          1490697
47                 NA           NA          NA     NA         NA          1043353
43                 NA           NA          NA     NA         NA           803844
55                 NA           NA          NA     NA         NA           597488
39                 NA           NA          NA     NA         NA           433260
3                  NA           NA          NA     NA         NA           283791
23                 NA           NA          NA     NA         NA           269033
15                 NA           NA          NA     NA         NA           219658
115                NA           NA          NA     NA         NA               NA
123                NA           NA          NA     NA         NA               NA

year_11_list
                                                                          funding_org   FY
92                                                National Institutes of Health (NIH) 2011
36                                              National Institute on Aging (NIH/NIA) 2011
80                National Institute of Neurological Disorders and Stroke (NIH/NINDS) 2011
124                         United States Army Medical Research and Materiel Command  2011
104                                                           Alzheimer's Association 2011
120                                               Department of Veterans Affairs (VA) 2011
88                                                    Office of the Director (NIH/OD) 2011
108                                             Alzheimer's Drug Discovery Foundation 2011
32                              National Heart, Lung, and Blood Institute (NIH/NHLBI) 2011
64       National Institute of Diabetes and Digestive and Kidney Diseases (NIH/NIDDK) 2011
72                         National Institute of General Medical Sciences (NIH/NIGMS) 2011
112                                                           Alzheimer's Research UK 2011
76                                     National Institute of Mental Health (NIH/NIMH) 2011
52               National Institute of Child Health and Human Development (NIH/NICHD) 2011
96                                                      Administration on Aging (AoA) 2011
60       National Institute on Deafness and Other Communication Disorders (NIH/NIDCD) 2011
84                                  National Institute of Nursing Research (NIH/NINR) 2011
8              National Center for Complementary and Alternative Medicine (NIH/NCCAM) 2011
48            National Institute of Biomedical Imaging and Bioengineering (NIH/NIBIB) 2011
12                                                National Cancer Institute (NIH/NCI) 2011
40                  National Institute of Allergy and Infectious Diseases (NIH/NIAID) 2011
68                    National Institute of Environmental Health Sciences (NIH/NIEHS) 2011
28                               National Human Genome Research Institute (NIH/NHGRI) 2011
56                                        National Institute on Drug Abuse (NIH/NIDA) 2011
4                                              Fogarty International Center (NIH/FIC) 2011
44  National Institute of Arthritis and Musculoskeletal and Skin Diseases (NIH/NIAMS) 2011
100                                 Agency for Healthcare Research and Quality (AHRQ) 2011
116                                  Centers for Disease Control and Prevention (CDC) 2011
20                                  National Center for Research Resources (NIH/NCRR) 2011
16           National Institute on Minority Health and Health Disparities (NIH/NIMHD) 2011
24                                                   National Eye Institute (NIH/NEI) 2011
        amyloid     tau presenilins        ApoE brain_circuits cell_death   immunity
92  48124477.00 9768284     4322582 11726010.00    11158286.00 9586311.00 10717185.0
36  30282974.00 6352686     1862937  9529389.00     6816306.00 6296015.00  7902777.0
80   9893963.00 3070821     2459645  1153010.00     2806603.00 2669927.00  1484600.0
124          NA 2140000          NA          NA             NA         NA   333693.0
104  2097782.00  895935      400000          NA     1948504.00  497443.00   100000.0
120   847040.00  569951          NA          NA      143913.00  634200.00  1417274.0
88           NA      NA          NA          NA      777150.00         NA         NA
108          NA      NA          NA          NA             NA         NA         NA
32    248802.00      NA          NA   396250.00             NA         NA         NA
64   3018471.00      NA          NA          NA             NA         NA         NA
72   1822672.00  287452          NA   322740.00             NA  620369.00         NA
112    32072.83 1167125          NA    48297.62       47193.86   94987.15   833665.8
76    148043.00      NA          NA    41800.00             NA         NA         NA
52   1013241.00      NA          NA          NA      576352.00         NA         NA
96           NA      NA          NA          NA             NA         NA         NA
60           NA      NA          NA          NA             NA         NA         NA
84           NA      NA          NA          NA             NA         NA         NA
8            NA      NA          NA          NA             NA         NA         NA
48     25512.00      NA          NA          NA             NA         NA         NA
12    642558.00      NA          NA          NA             NA         NA   443620.0
40    470727.00      NA          NA          NA             NA         NA   423750.0
68           NA      NA          NA   282821.00             NA         NA         NA
28           NA      NA          NA          NA             NA         NA         NA
56     48750.00      NA          NA          NA      181875.00         NA   358912.0
4            NA   57325          NA          NA             NA         NA   103526.0
44    493388.00      NA          NA          NA             NA         NA         NA
100          NA      NA          NA          NA             NA         NA         NA
116          NA      NA          NA          NA             NA         NA         NA
20     15376.00      NA          NA          NA             NA         NA         NA
16           NA      NA          NA          NA             NA         NA         NA
24           NA      NA          NA          NA             NA         NA         NA
    bioenergetics vascular_factors hormones genetics other_pathogenic    total1 fluid_biomarkers
92        4144576          6834840  2150957 19588406       5702180.00 143824094          4358521
36        3422786          3617098  1827969 15407741       3927526.00  97246204          4358521
80             NA          1675418       NA  3054771       1071914.00  29340672               NA
124            NA               NA       NA   239470               NA   2713163           339424
104        100000           650000       NA   448749               NA   7138413           650000
120            NA           150000       NA   268268               NA   4030646               NA
88             NA               NA       NA       NA               NA    777150               NA
108            NA               NA       NA       NA               NA        NA               NA
32             NA               NA       NA       NA               NA    645052               NA
64             NA           743342       NA       NA        387671.00   4149484               NA
72         619904               NA       NA       NA               NA   3673137               NA
112            NA          1189325       NA       NA         47690.91   3460359               NA
76             NA               NA   322988  1125894               NA   1638725               NA
52             NA           378334       NA       NA               NA   1967927               NA
96             NA               NA       NA       NA               NA        NA               NA
60             NA               NA       NA       NA               NA        NA               NA
84             NA           420648       NA       NA               NA    420648               NA
8              NA               NA       NA       NA               NA        NA               NA
48             NA               NA       NA       NA               NA     25512               NA
12             NA               NA       NA       NA               NA   1086178               NA
40             NA               NA       NA       NA               NA    894477               NA
68             NA               NA       NA       NA        315069.00    597890               NA
28             NA               NA       NA       NA               NA        NA               NA
56             NA               NA       NA       NA               NA    589537               NA
4              NA               NA       NA       NA               NA    160851               NA
44             NA               NA       NA       NA               NA    493388               NA
100            NA               NA       NA       NA               NA        NA               NA
116            NA               NA       NA       NA               NA        NA               NA
20         101886               NA       NA       NA               NA    117262               NA
16             NA               NA       NA       NA               NA        NA               NA
24             NA               NA       NA       NA               NA        NA               NA
    imaging_biomarkers cog_behav_assess multimodal_markers novel_biomarkers novel_methodol other
92            31252552          7928004           26658022          1795919     3696863.00    NA
36            23790577          6830878           23126857          1475643     1295924.00    NA
80              777331               NA            1127686               NA      422500.00    NA
124             340434           361639            6000000               NA             NA    NA
104             499988               NA                 NA           100000             NA    NA
120             513368               NA             476498               NA             NA    NA
88             2272500               NA                 NA               NA             NA    NA
108             571400               NA                 NA               NA             NA    NA
32             4322072               NA                 NA               NA             NA    NA
64                  NA               NA                 NA               NA             NA    NA
72                  NA           107663                 NA               NA             NA    NA
112             206822               NA             142442               NA       38132.82    NA
76                  NA               NA             610982               NA             NA    NA
52                  NA           131216             923200               NA             NA    NA
96                  NA               NA                 NA               NA             NA    NA
60                  NA           493088             869297           192498      663145.00    NA
84                  NA               NA                 NA               NA             NA    NA
8                   NA               NA                 NA           127778             NA    NA
48               90072           324000                 NA               NA      718809.00    NA
12                  NA               NA                 NA               NA             NA    NA
40                  NA               NA                 NA               NA             NA    NA
68                  NA               NA                 NA               NA             NA    NA
28                  NA               NA                 NA               NA      596485.00    NA
56                  NA               NA                 NA               NA             NA    NA
4                   NA               NA                 NA               NA             NA    NA
44                  NA               NA                 NA               NA             NA    NA
100                 NA               NA                 NA               NA             NA    NA
116                 NA               NA                 NA               NA             NA    NA
20                  NA            41159                 NA               NA             NA    NA
16                  NA               NA                 NA               NA             NA    NA
24                  NA               NA                 NA               NA             NA    NA
          diag drug_discovery preclinical_drug_dev preclinical_proof clinical_trial_design
92  75689881.0       17459011           11504422.0           1546349                561235
36  60878400.0       11839512            9341823.0                NA                561235
80   2327517.0        2818494            2162599.0                NA                    NA
124  7041497.0             NA                   NA                NA                    NA
104  1249988.0        1149890                   NA                NA                    NA
120   989866.0         446500             150000.0                NA                    NA
88   2272500.0        2407500                   NA                NA                    NA
108   571400.0        3539285             100000.0                NA                    NA
32   4322072.0             NA                   NA                NA                    NA
64          NA             NA                   NA                NA                    NA
72    107663.0         275403                   NA                NA                    NA
112   387396.9             NA             159914.5                NA                    NA
76    610982.0          47750                   NA                NA                    NA
52   1054416.0             NA                   NA                NA                    NA
96          NA             NA                   NA                NA                    NA
60   2218028.0             NA                   NA                NA                    NA
84          NA             NA                   NA                NA                    NA
8     127778.0             NA                   NA           1546349                    NA
48   1132881.0             NA                   NA                NA                    NA
12          NA             NA                   NA                NA                    NA
40          NA             NA                   NA                NA                    NA
68          NA             NA                   NA                NA                    NA
28    596485.0             NA                   NA                NA                    NA
56          NA             NA                   NA                NA                    NA
4           NA          70352                   NA                NA                    NA
44          NA             NA                   NA                NA                    NA
100         NA             NA                   NA                NA                    NA
116         NA             NA                   NA                NA                    NA
20     41159.0             NA                   NA                NA                    NA
16          NA             NA                   NA                NA                    NA
24          NA             NA                   NA                NA                    NA
    early_stage_drug_dv late_stage_drug_dv nonpharmacological clinical_therapy_dev
92              5321612             115344            7898353              3383559
36              5321612             115344            7898353              3383559
80                   NA                 NA                 NA                   NA
124              360417                 NA                 NA                   NA
104                  NA                 NA             399223                   NA
120                  NA                 NA                 NA                   NA
88                   NA                 NA                 NA                   NA
108              738000                 NA                 NA                   NA
32                   NA                 NA                 NA                   NA
64                   NA                 NA                 NA                   NA
72                   NA                 NA                 NA                   NA
112                  NA                 NA                 NA                   NA
76                   NA                 NA                 NA                   NA
52                   NA                 NA                 NA                   NA
96                   NA                 NA                 NA                   NA
60                   NA                 NA                 NA                   NA
84                   NA                 NA                 NA                   NA
8                    NA                 NA                 NA                   NA
48                   NA                 NA                 NA                   NA
12                   NA                 NA                 NA                   NA
40                   NA                 NA                 NA                   NA
68                   NA                 NA                 NA                   NA
28                   NA                 NA                 NA                   NA
56                   NA                 NA                 NA                   NA
4                    NA                 NA                 NA                   NA
44                   NA                 NA                 NA                   NA
100                  NA                 NA                 NA                   NA
116                  NA                 NA                 NA                   NA
20                   NA                 NA                 NA                   NA
16                   NA                 NA                 NA                   NA
24                   NA                 NA                 NA                   NA
    clinical_ethics other2 translational_research genetic_risks cardio_factors nutrition
92               NA     NA             47789885.0       6512767        2623655   1718738
36               NA     NA             38461438.0       6067388        1664630   1718738
80               NA     NA              4981093.0        140918         648507        NA
124              NA     NA               360417.0        721423             NA        NA
104              NA     NA              1549113.0        149831          99662    100000
120              NA     NA               596500.0            NA             NA        NA
88               NA     NA              2407500.0            NA             NA        NA
108              NA 136000              4513285.0            NA             NA        NA
32               NA     NA                     NA            NA             NA        NA
64               NA     NA                     NA            NA             NA        NA
72               NA     NA               275403.0            NA             NA        NA
112              NA     NA               159914.5            NA             NA        NA
76               NA     NA                47750.0            NA             NA        NA
52               NA     NA                     NA        227241             NA        NA
96               NA     NA                     NA            NA             NA        NA
60               NA     NA                     NA            NA             NA        NA
84               NA     NA                     NA            NA             NA        NA
8                NA     NA              1546349.0            NA         266871        NA
48               NA     NA                     NA            NA             NA        NA
12               NA     NA                     NA            NA             NA        NA
40               NA     NA                     NA            NA             NA        NA
68               NA     NA                     NA         77220             NA        NA
28               NA     NA                     NA            NA             NA        NA
56               NA     NA                     NA            NA             NA        NA
4                NA     NA                70352.0            NA             NA        NA
44               NA     NA                     NA            NA             NA        NA
100              NA     NA                     NA            NA             NA        NA
116              NA     NA                     NA            NA             NA        NA
20               NA     NA                     NA            NA          43647        NA
16               NA     NA                     NA            NA             NA        NA
24               NA     NA                     NA            NA             NA        NA
    multimodal_risk  other3 epidemiology  QoLife tech_assist_care caregiver_support cult_beliefs
92         18743955 3458662     33057777 2350556           135061           3581058       183150
36         18169904 2195849     29816509 1339084           135061           2457950           NA
80           447201      NA      1236626      NA               NA                NA           NA
124          480000      NA      1201423  935646           740440                NA           NA
104          200000  199778       749271  579990           200000                NA       200000
120              NA      NA           NA      NA               NA                NA           NA
88               NA      NA           NA      NA               NA                NA           NA
108              NA      NA           NA      NA               NA                NA           NA
32               NA      NA           NA      NA               NA                NA           NA
64               NA      NA           NA      NA               NA                NA       183150
72               NA      NA           NA      NA               NA                NA           NA
112              NA      NA           NA      NA               NA                NA           NA
76               NA 1262813      1262813      NA               NA                NA           NA
52               NA      NA       227241      NA               NA                NA           NA
96               NA      NA           NA      NA               NA           3227887           NA
60               NA      NA           NA  312592               NA                NA           NA
84               NA      NA           NA  698880               NA            960938           NA
8                NA      NA       266871      NA               NA                NA           NA
48               NA      NA           NA      NA               NA                NA           NA
12               NA      NA           NA      NA               NA                NA           NA
40               NA      NA           NA      NA               NA                NA           NA
68               NA      NA        77220      NA               NA                NA           NA
28               NA      NA           NA      NA               NA                NA           NA
56               NA      NA           NA      NA               NA                NA           NA
4            126850      NA       126850      NA               NA            162170           NA
44               NA      NA           NA      NA               NA                NA           NA
100              NA  151146       151146  329495               NA                NA           NA
116              NA  240000       240000      NA               NA                NA           NA
20               NA      NA        43647      NA               NA                NA           NA
16               NA      NA           NA      NA               NA                NA           NA
24               NA      NA           NA      NA               NA                NA           NA
    econ_burden other4 care_total total_AD_funding
92       882752  41800    7174377        307536014
36       882752  41800    4856647        231259198
80           NA     NA         NA         37885908
124          NA     NA    1676086         12992586
104          NA     NA     979990         11666775
120          NA     NA         NA          5617012
88           NA     NA         NA          5457150
108          NA     NA         NA          5084685
32           NA     NA         NA          4967124
64           NA     NA     183150          4332634
72           NA     NA         NA          4056203
112          NA     NA         NA          4007670
76           NA     NA         NA          3560270
52           NA     NA         NA          3249584
96           NA     NA    3227887          3227887
60           NA     NA     312592          2530620
84           NA     NA    1659818          2080466
8            NA     NA         NA          1940998
48           NA     NA         NA          1158393
12           NA     NA         NA          1086178
40           NA     NA         NA           894477
68           NA     NA         NA           675110
28           NA     NA         NA           596485
56           NA     NA         NA           589537
4            NA     NA     162170           520223
44           NA     NA         NA           493388
100          NA     NA     329495           480641
116          NA     NA         NA           240000
20           NA     NA         NA           202068
16           NA     NA         NA               NA
24           NA     NA         NA               NA
