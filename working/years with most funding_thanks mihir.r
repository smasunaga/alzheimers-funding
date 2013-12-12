data2 <- data[,c(1,2,48)]
aggregate(data_year_ordered$total_research_funding, by = list(data_year_ordered$FY),sum)
aggregate(data_year_ordered$total_research_funding, by = list(data_year_ordered$FY),sum)
  Group.1  x
1    2008 NA
2    2009 NA
3    2010 NA
4    2011 NA
> class(data_year_ordered$total_research_funding[1])
[1] "numeric"
> class(data_year_ordered$total_research_funding)
[1] "numeric"
> is.na(data_year_ordered$total_research_funding)
  [1] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE  TRUE FALSE FALSE
 [13] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE  TRUE FALSE FALSE
 [25] FALSE FALSE FALSE FALSE FALSE  TRUE  TRUE FALSE FALSE FALSE  TRUE FALSE
 [37] FALSE FALSE FALSE FALSE  TRUE  TRUE FALSE FALSE FALSE FALSE FALSE FALSE
 [49] FALSE FALSE FALSE FALSE  TRUE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
 [61]  TRUE  TRUE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
 [73] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
 [85] FALSE FALSE FALSE FALSE FALSE FALSE  TRUE FALSE  TRUE FALSE FALSE FALSE
 [97]  TRUE FALSE  TRUE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[109] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[121] FALSE FALSE FALSE FALSE
> data_no_na <- subset(data_year_ordered, data_year_ordered$total_research_funding != NA)
> ?aggregate
> aggregate(data_year_ordered$total_research_funding, by = list(data_year_ordered$FY),sum, na.action = na.omit)
Error in FUN(X[[1L]], ...) : invalid 'type' (closure) of argument
> aggregate(data_year_ordered$total_research_funding, by = list(data_year_ordered$FY),FUN = "sum", na.action = na.omit)
Error in FUN(X[[1L]], ...) : invalid 'type' (closure) of argument
> data_no_na <- data_year_ordered[complete.cases(data_year_ordered),]
> head(data_no_na)
                                                                funding_org   FY
1                                    Fogarty International Center (NIH/FIC) 2008
5    National Center for Complementary and Alternative Medicine (NIH/NCCAM) 2008
9                                       National Cancer Institute (NIH/NCI) 2008
13 National Institute on Minority Health and Health Disparities (NIH/NIMHD) 2008
17                        National Center for Research Resources (NIH/NCRR) 2008
21                                         National Eye Institute (NIH/NEI) 2008
   total_research_funding
1                   50158
5                 4401696
9                 1433201
13                 219658
17                 177901
21                 497105
> aggregate(data_no_na$total_research_funding, by = list(data_no_na$FY), sum)
  Group.1         x
1    2008 587633964
2    2009 748034452
3    2010 771468614
4    2011 658389284

