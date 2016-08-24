## Gantt for Mitacs Sablefish Research Cluster##

#install.packages("DiagrammeR")
library(DiagrammeR)
m1 <- mermaid("
gantt  
dateFormat  YYYY-MM-DD
title PhD Gantt Chart
section Degree Req's
Coursework                         :crit,done,    samDR_1, 2014-09-01, 2015-12-15
Develop Thesis proposal			       :crit,active,  samDR_2, 2015-05-01, 2016-04-30
Defend Proposal/Comprehensive Exam :crit,         samDR_3, 2016-06-29, 2d
Proposal Revisions                 :crit,         samDR_4, 2016-06-30, 1w

section Research
Ch 4 - Avoidance 					         : samRE_1, after samDR_4, 16w
Prepare Ch 4 Manuscript            : samRE_2, after samRE_1, 4w
Ch 1 - Multispecies Sim-Est	       : samRE_3, after samRE_1, 16w
Prepare Ch 1 Manuscript     	     : samRE_4, after samRE_3, 4w
Ch 2 - Multistock Sim-Est			 	   : samRE_5, after samRE_3, 16w
Prepare Ch 2 Manuscript            : samRE_6, after samRE_5, 4w
Ch 3 - Closed Loop Simulation      : samRE_7, after samRE_5, 16w
Prepare Ch 3 Manuscript            : samRE_8, after samRE_7, 4w

section Thesis
Finish Writing Thesis              :crit,         samTH_1, after samRE_8, 12w 
Defend Thesis                      :crit,         samTH_2, after samTH_1, 4w
" )

