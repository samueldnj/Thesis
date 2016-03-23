## Gantt for Mitacs Sablefish Research Cluster##

#install.packages("DiagrammeR")
library(DiagrammeR)
m1 <- mermaid("
gantt  
dateFormat  YYYY-MM-DD
title PhD Gantt Chart
section Degree Req's
Coursework                         :crit,done,    samDR_1, 2014-09-01, 2015-04-30
Develop Thesis proposal			       :crit,active,  samDR_2, 2015-05-01, 2015-10-30
Defend Proposal/Comprehensive Exam :crit,         samDR_3, 2015-11-15, 2d
Proposal Revisions                 :crit,         samDR_4, 2015-11-16, 2w

section Research
Ch 1 - Bias and Precision          : samRE_1, 2016-01-01, 2016-03-31
Prepare Ch 1 Manuscript            : samRE_2, 2016-04-01, 2016-04-30
Ch 2 - MSE (economics)             : samRE_3, 2016-05-01, 2016-10-31
Prepare Ch 2 Manuscripts           : samRE_4, 2016-11-01, 2016-12-31
Ch 3 - Risk Analysis (policy)      : samRE_5, 2017-01-01, 2017-04-30
Prepare Ch 4 Manuscript            : samRE_6, 2017-05-01, 2017-06-30
Ch 4 - Application                 : samRE_7, 2017-07-01, 2018-04-30
Prepare Ch 4 Manuscript            : samRE_8, 2018-05-01, 2018-06-15

section Thesis
Finish Writing Thesis              :crit,         samTH_1, after samRE_7, 12w 
Defend Thesis                      :crit,         samTH_2, after samTH_1, 4w
" )

