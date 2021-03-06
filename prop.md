---  
title: "Assessment and Avoidance Management Tools for Multispecies Fisheries Constrained by Technical Interactions"
subtitle: Thesis Proposal
author: Samuel D N Johnson
date: \today
bibliography: /Users/sdnjohnson/Dropbox/Library/library.bib
geometry: letterpaper
toc: true
fontsize: 12pt
lineno: true
abstract: The nature of commercial fishing gear makes it difficult to avoid species with restrictive annual quotas while targeting highly productive profitable species in multispecies fisheries. Exploitation of the high productivity species is then constrained by the low quota species, creating a pinch-point effect on fishery profitability. This thesis proposes 2 management tools for improving profitability in the presence of pinch-point effects. First, quota may be low because of uncertainty about stock status owing to data limitations precluding up-to-date assessments. Hierarchical multispecies assessment models that explicitly acknowledge interactions among species may be used to extend assessments to data-limited species and lift constraints. Second, if assessments are unable to lift restrictive species quota improved avoidance tools may alleviate pinch-point effects. By using machine learning algorithms on commercial monitoring data it may be possible to redirect harvester targeting to avoid restrictive species.
---

# Introduction

## Background

Sustainable management of any renewable resource requires an understanding of system dynamics in response to exploitation. In a multispecies fisheries context, the system is a collection of semi-discrete self-sustaining fish populations or *stocks* [@begg1999stock] and the exploitation involves removing individuals by fishing. Fishing effort impacts target species, non-target species and fish habitat, and therefore a major challenge of multispecies fishery management is to balance fishing yield with broader sustainability goals.

Sustainable and scientifically defensible fishery management is built on a foundation of fisheries stock assessment [@hilborn1992quantitative]. Quantitative stock assessment methods combine elements of data science, applied population ecology, risk assessment and resource management (Figure 1). Analysts use data from multiple sources including scientific surveys and commercial fishery monitoring to infer biological and fishery dynamics and to characterise uncertainties and risks based on these assessments. These inferences include estimates of species abundance and productivity that are used to inform management decisions.

Stock assessments are lacking in most Canadian fisheries [@hutchings2012canada], especially for non-target species. One reason is that non-target species are typically of lower commercial importance, so there is limited interest in assessments. More commonly, data limitations preclude the assessment of certain species, known as data-limited species. Surveys designed for data-moderate target species are often unsuitable for non-target species and leave managers with the choice of conducting a flawed assessment, or no assessment at all.

A lack of assessments for some species within a multispecies fishery threatens sustainable management of the whole fishery in two ways. First, a lack of assessments creates conservation risks by weakening the link between management decisions and stock status, as the dynamic nature of a fishery leads to more uncertainty about stock status as time passes. Second, eco-certifiers typically require up-to-date stock assessments for all species captured, regardless of whether those stocks are targeted or not. A lack of eco-certification reduces market share of a fishery both internationally and domestically, as buyers prefer eco-certified products [@Pelc201556].


## Assessments Acknowledging Technical Interactions

Stock assessments are traditionally performed for a single species at a time, even though this approach may lead to sub-optimal outcomes for multispecies fisheries [@sugihara1984ecosystems; @gulland1984observed]. Sub-optimal outcomes may arise from not accounting for the effects of interactions between species. In multispecies fisheries interactions are one of two types: ecological or technical. Ecological interactions are either non-trophic, such as competition, or trophic, between predator and prey. Ecological interactions affect natural mortality of fish and may bias estimates of species productivity when not taken into account [@mueter2006using]. Technical interactions are caused by non-selective fishing gear, and occur when multiple species are caught simultaneously.

Within the single-species management paradigm, a species typically comprises several distinct but interacting sub-stocks [@walters2004fisheries; @benson2015evaluating]. For example multiple ecologically and technically interacting populations (i.e., stocks) of Pacific salmon (*Onchorynchus spp.*) species Chinook (*O. tshawtcha*), Chum (*O. keta*), Coho (*O. kisutch*), Pink (*O. gorbausch*), Sockeye (*O. nerka*) and Steelhead (*O. mykiss*) occur along Canada's Pacific coast [@simon1972stock]. Each species is made up of genetically distinct subpopulations, defined mainly by discrete spawning habitats and run timing that establish quasi-isolated reproductive populations connected by low straying rates [@ricker1972hereditary]. 

Managing hundreds of distinct fisheries is impractical [@walters2004fisheries] so salmon stocks are often grouped together into stock complexes for management and assessment. For instance, in the Fraser River, sub-populations of Chinook and Sockeye are grouped into aggregate stock complexes called runs based on similarity in life history, geographical locations of spawning habitat and arrival timing to fisheries [@english2011fraser; @DFO1999Fraser-River-Ch]. Managing Pacific salmon in runs has both advantages and disadvantages. Aggregation leads to increased management efficiency and brings statistical benefits from data pooling. However, to avoid overfishing of some stocks complexes must be managed according to the weakest stock's productivity (Figure 2) [@ricker1958maximum; @ricker1973two; @parkinson2004linking], as exemplified by the Cultus lake stock of Late run Fraser river Sockeye salmon. Cultus lake Sockeye have had historic abundances of up to 700,000 spawners but in 2004 fewer than 100 spawners returned from the marine life phase, caused in part by previous over-harvesting at average productivity for the Late run complex [@team2009national]. To avoid continued over-harvesting, the entire Late run is now fished according to the productivity of Cultus lake Sockeye.

The aggregate management schema used for Pacific salmon could be modified and adopted in other multispecies fisheries. For example, groundfish fisheries on the west coast of North America exploit stocks of sablefish, Pacific halibut (*Hippoglossus stenolopis*), several species of rockfish (*Sebastes spp.*), Pacific cod (*Gadus macrocephalus*), Dover sole (*Microstomus pacificus*) and other demersal species [@PRIFMP2015]. Different groundfish genera and species have their own unique life histories and reproductive strategies that respond differently to fishing pressure [@jennings1999structural]. Different life histories and reproductive strategies among groundfish imply different productivity levels, similar to  mixed-stock Pacific salmon fisheries.

Multiple interacting species with different productivity levels create profitability constraints in multispecies fisheries managed through quota systems [@hilborn2004beyond; @baudron2015adverse]. Constraints are caused by weaker, low productivity species that cannot be avoided when targeting stronger, high productivity species. Weaker species' quota is filled faster, so stronger species are under-exploited in order to reduce the fishing pressure on the weakest species, also known as pinch-point or choke species (Figure 3) [@hilborn2004beyond]. An example of a pinch-point species is Boccacio rockfish (*S. paucispinis*) in the British Columbia groundfish fishery, which are difficult to avoid when targeting lingcod (*Ophiodon elongatus*). Bocaccio rockfish are listed as Endangered by COSEWIC and have a very low annual quota of around 110 metric tonnes (mt)[^1], while lingcod are highly productive with annual quota of around 3600mt. Avoidance of Bocaccio by lingcod harvesters led to less than 33% of Bocaccio quota to be utilised between 2006 and 2014 (Figure 4). Technical interactions between Bocaccio and lingcod means that this avoidance behaviour resulted in a maximum of 25% of lingcod quota being utilised in that same time period (Figure 5). This underutilisation of quota translates into a reduction of around $10,000[^2] of gross annual revenue to the fishery between 2006 and 2014.

[^1]: Committee on the Status of Endangered Wildlife in Canada.
[^2]: Price per pound taken from California *Status of the Fisheries Report*, 2008, assuming a parity conversion on average over the time period.

<!-- Although integration acknowledges technical interactions in multispecies groundfish fisheries through TAC distribution, challenges remain in managing integrated fisheries optimally. I focus on two challenges related to integration and technical interactions between high and low productivity stocks. First, integration requires setting a TAC for every stock encountered by the fishery. TAC must be scaled to stock status and productivity (@FAO1995), estimation of which is subject to difficulty without sufficient data. Second, integration can cause a constraining effect on fishing profitability when weaker low productivity stocks interact with stronger high productivity stocks. Weaker stocks have lower TACs that are filled faster, constraining fishing of strong stocks with higher TACs and leading to an under-exploitation of high value stocks in integrated fisheries. Lower productivity fishes that constrain profitability due to technical interactions with higher productivity fishes are known colloquially as *pinch-point* species, shown in Figure (**FIGURE**). -->

## Assess and Avoid

Profitability constraints caused by technical interactions may be alleviated by conducting stock assessments of data-limited species and avoiding pinch-point species. Species that lack up-to-date assessments often have their quota set to a low level for conservation reasons, creating artificial pinch-points. After assessment the quota of a data-limited species can be scaled to a better estimate of stock-status [@FAO1995], which may have two effects. Either the decrease in uncertainty about the stock status allows removal of the pinch-point, or the pinch-point remains. In the case where assessments show that the pinch-point cannot be removed then an avoidance strategy is required.

One option for overcoming data limitations to assessments is by explicitly acknowledging technical interactions in assessment models [@mueter2006using; @punt2011among; @zhou2010modified]. Technical interactions can be acknowledged by aggregating multiple species into the same assessment complex based on co-occurence in fishing events, similar to Pacific salmon runs [@beverton1984dynamics; @walters2004fisheries]. Statistical benefits of aggregation may allow previously unassessed species to be assessed, and increase the profitability of the fishery by relieving constraints and enabling eco-certification. While more complicated than the single specie paradigm, the benefit of assessing previously unassessed species may outweigh the costs.

Figure 6 shows three possible models of fishery operation and management. Models (a) and (b) are the current options for assessment in multispecies fisheries. Model (a) is the status quo approach of single species stock assessment, where every stock is treated as a separate population [@hilborn1992quantitative]. Model (b) is the total aggregation approach used for Pacific salmon [@english2011fraser], where several species or stocks have their data combined and are then assessed and managed as a single unit [@sugihara1984ecosystems; @gulland1984observed; @gaichas2012assembly]. 

The total aggregation approach used by Pacific salmon may not be suitable for assessing assemblages of multiple species with distinct life histories and reproductive strategies. Model (c) in Figure 6 addresses this by keeping the data separate as in model (a), but performs assessments for groups of stocks using statistical models that link the data during estimation [@zhou2010modified; @punt2011among; @mueter2006using].

In Chapters 1, 2 and 3 I will conduct a simulation study of hierarchical stock assessment models that share data between species as Figure 6(c) [@jiao2009hierarchical; @zhou2010modified; @punt2011among]. The statistical model assumes a hierarchical structure of multispecies fisheries as shown in Figure 7, allowing for an an intermediate level of between models shown in Figures 6(a) and 6(b). Shared parameters in the hierarchical assessment model provide some of the benefits of aggregation, but the separation of data streams allows for species specific estimates of abundance and productivity [@jiao2009hierarchical].

The focus of Chapter 1 is to create a simulation-estimation procedure to study hierarchical assessment models for multi-species assemblages with no sub-stock structure. Data generated by a process error population dynamics model and observation model are provided to hierarchical estimators [@zhou2010modified; @punt2011among]. The statistical performance of the estimators is then quantified by comparing the true values of parameters to estimated values.

In Chapter 2, the simulation-estimation procedure of Chapter 1 is extended to include a spatial sub-stock structure for each species (Figure 9). Including multiple sub-stocks increases the resolution of the data and allows for multiple stock specific life history parameter values within each species [@su2004spatial], however challenges may arise from disaggregation of species data across multiple spatial strata. Bias and precision are estimated and compared to coastwide model bias and precision, to analyse the benefits and costs of including increased structure in the model.

In Chapter 3, a closed loop feedback simulation framework is used to evaluate management procedures using spatially structured multistock and multispecies hierarchical models (Figure 10). This requires an operating model that simulates population dynamics of multiple interacting fish species, uncertain observations made by scientific surveys and effort dynamics of multiple fishing fleets with different gear types exploiting each population [@hilborn1987general; @walters1999multispecies; @jones2009operating; @clark2010mathematical]. Uncertain data provided by the operating model react with the management procedure to produce complex emergent properties. Closed loop simulation offers a low-stakes option for analysing those properties and the associated risks.

In Chapter 4, I will investigate a data-based approach to avoiding non-target species and estimate its economic value. Reliable, spatially explicit commercial data is becoming more abundant with increasing observer coverage in modern fisheries. Concurrent with this, statistical learning methods are emerging that allow for analysis of data that isn't collected under strict experimental designs [@lennert2007statistical; @hastie2009elements], such as commercial fishing data.

## Study System

British Columbia's Groundfish Fishery [@PRIFMP2015] is a group of 7 fisheries that spatially and temporally overlap on the BC coast. The overlapping fisheries are managed across 8 statistical areas (Figure 11) by one integrated individual transferrable quota system, allowing temporary and permanent transfers of quota allocations between licenses in different fleets. All catch and discards are deducted from quota allocations, and are therefore monitored on 100% of vessels by at sea observer or electronic monitoring systems. Skippers who exceed their quota share must either obtain more from other harvesters, or stop fishing for the season.

Integrated management of the British Columbia groundfish fishery creates pinch-points on quota utilisation, caused by technical interactions between high value target species and data limited non-target species. Many species lack up-to-date assessments creating, to varying degrees, pinch-point effects that may be alleviated by assessing and avoiding those species [@Driscoll2014Groundfish-comp].

In Chapters 1, 2 and 3 the simulation study will use a multispecies complex composed of all flatfish except halibut in the British Columbia groundfish fishery as the biological component of the operating model. The complex is made up of **D**over sole (*Microstomus pacificus*), **E**nglish sole (*Parophrys vetulus*),  **R**ock sole (*Lepidopsetta bilineata*), **P**etrale sole and **A**rrowtooth flounder (*Atheresthes stomias*) [@PRIFMP2015], and called the **DERPA** complex for brevity. All members of DERPA are from the family *Pleuronectidae* of right-eyed flounders, making DERPA suitable for a hierarchical approach due to similar but distinct life and evolutionary histories. Furthermore, Dover sole, Petrale sole and Arrowtooth flounder are subject to technical interactions, as they often co-occur in fishing gear that encounters Sablefish (Figure 12). Halibut are excluded as they are managed by a separate trans-boundary authority.

The amount of data available for DERPA flatfish species varies, and so does the timing of stock status assessments. Rock sole was assessed in 2016 [@holt2016stock-asse] and 2014 [@dfo2014stock-asse], and Arrowtooth flounder in 2015 [@dfo2015arrowtooth], but before that both species were not assessed for close to a decade [@fargo2000stock-asse; @fargo2001turbot-sto] [^3]. English and Petrale sole were last assessed in 2009 [@starr2009english-so; @starr2009petrale-so]. Dover sole was last assessed in 1999 and has never been assessed using a model based assessment [@fargo1999flatfish-s].

[^3]: Rock sole were assessed in 2005 in an unpublished working paper, see @holt2016stock-asse.

In a departure from the study system in Chapters 1, 2 and 3, in Chapter 4 I will use computational methods to forecast the presence of sub-legal sized sablefish in fishing events. Sablefish are at historic low abundances and are subject to a rebuilding strategy [@cox2009evaluation], and the reduction of discard induced mortality has been identified as a means to increase sablefish spawning stock biomass without necessarily reducing quota [@cox2011management]. Discarding of legal-sized sablefish (>55cm, good condition) is disincentivised by a quota deduction adjusted for discard induced mortality, but no incentive structure exists for unmarketable sablefish (<55cm, poor condition). This incentive structure is evident in the distribution of sablefish discarding, with an average of 70% of sablefish discards in the trawl sector between 1997 and 2006 made up by sub-legal sized fish[^4]. 

[^4]: From the PacHarvTrawl database housed at the Fisheries and Oceans, Canada, Pacific Biological Station, Nanaimo.

# Chapter 1: Estimating Coastwide Abundance and Productivity in a Multispecies Groundfish Fishery via a Hierarchical Stock Assessment Model 

## Background

Quantitative stock assessment models incorporate population dynamics processes (Figure 1.1), observational data (Figure 1.2) into a statistical model (Figure 1.3) [@hilborn1992quantitative]. Model inputs are candidate parameter values that are compated to data in the statistical model to produce posterior density or likelihood function values as outputs. Statistical model output is then optimised or integrated over the input parameters to extend inferences about stock productivity and status in the form of distributional estimates.

Hierarchical statistical models are becoming increasingly popular for analysing complex fisheries data. In Pacific salmon stock and recruitment analyses, both Bayesian and frequentist (mixed effects) hierarchical models are used in meta-analyses of multistock populations [@su2004spatial; @malick2015linking]. More related to this thesis, stock assessment models that use hierarchical statistical models are sometimes used to assess multispecies complexes where data limitations are an issue for single species management, such as technical interactions between data-limited species [@punt2011among] or difficulties in species identification [@jiao2009hierarchical].

In this chapter, I will use a simulation-estimation procedure to study hierarchical Bayesian [@zhou2010modified] and frequentist [@punt2011among] state space multispecies assessment models. The multispecies models are used to simultaneously assess a simulated version of the DERPA complex of flatfish. In a comparison between single species and hierarchical models applied multispecies groups including data-limited species, it has been shown that the hierarchical models induce a change in parameter estimates for data-limited species [@punt2011among; @kell2012robin]. However, it is unknown if that change is an increase or decrease in bias. As a result, for this paper I address the following research question.


**QUESTION:** How do estimates of unfished biomass $B_0$, growth $r$ and catchability $q$ made by hierarchical multispecies models compare to estimates from single species models?

Simulated scientific and commercial data are used to test hierarchical assessment models. True parameter values used for simulation can be compared to estimated parameters in Monte-Carlo trials to understand bias and precision of both estimators. Estimators are then tested across a range of scenarios representing implications of technical interactions between species, and contrasts in data availability.

## Methods

Each species in the DERPA complex will be simulated using the model defined in Table 2. Population dynamics are simulated by a simple biomass dynamics process error-model (Figure 1.1, Table 2 equations T2.2, T2.4), fishery dependent catch is generated using fishing mortality as an input (Eq T2.3) and fishery independent observations of catch per unit effort (CPUE) are generated by the observation model (Figure 1.2, Eq T2.5).

Multispecies data produced by the simulation model will be supplied to both a Bayesian and frequentist version of a hierarchical state-space assessment model (Figure 7). Both assessment models are specified in the same way, shown in Table 3. The difference between the models is in how the inferences are extended. For the Bayesian state space model the posterior density (Table 3, Eq T3.8) is integrated over all parameters included in $\Theta$ (Eq T3.2) to produce marginal distributions for each parameter [@gelman2014bayesian]. For the frequentist state space model, also known as a random effects model, the posterior density is integrated over random effects (process errors) and prior distributions to produce a marginal "true" likelihood, which is then maximised as in traditional likelihood methods [@de2002fitting].

Both models require an integration method to produce marginal distributions or likelihoods [@de2002fitting; @gelman2014bayesian, @maunder2015use]. Integration generally requires numerical methods like Markov-Chain Monte Carlo (MCMC) algorithms for distribution sampling of complex non-linear, non-Gaussian statistical models. To this end, the Bayesian model is coded using the Automatic Differentiation Model Builder (ADMB) suite [@fournier2012ad] and the random effects model using Template Model Builder [@kristensen2015tmb]. Both software packages provide fast numerical integration to produce marginal distributions, with TMB being developed specifically for models utilising a large number of random effects.

Model testing proceeds through four experimental scenarios that modify simulation input parameters representing multispecies interactions and data limitations. Parameter estimates from each trial are then compared to their true values generated by the simulator to estimate bias and precision of the models in each scenario.

The first two scenarios investigate model assumptions about process error deviations $\epsilon_{t}, \zeta_t$ and species catchability coefficients $q_s$. Both parameters are representive of interactions between species in the complex. For example, species that share the same habitat will encounter the same environmental variation, reflected in coastwide process error deviations $\epsilon_t$ [@punt2011among]. Moreover, interactions between each of the species may cause correlations in their species speficic process errors $\zeta_t$, reflected in the covariane matrix $\Sigma$. Similarly, species that are fished by the same gear may have similar interactions with fishing gear leading to correlations in catchability $q_s$.

Shared priors are defined for process error deviations (Eqs T3.7, T3.8) and catchability parameters (Eq T3.9). Bias and precision are measured for a range of fixed values of the prior variance ($\sigma^2, \kappa^2 \in (0,\infty)$) [@gelman2014bayesian, Ch 5.5] and multiple configurations of the covariance matrix $\Sigma$.

The remaining two scenarios contrast information available from survey observations and resource responses to exploitation pressure. Observation error is a direct measurement of the quality of data obtained by scientific surveys, so contrasts in observation error variance $\tau_s^2$ simulate differing levels of data availability between species in an assemblage. Fishery development histories, characterised by fishing mortality $F_{s,t}$ trajectories (Figure 8), are a source of information based on the way a fish population responds to changes in fishing pressure [@hilborn1992quantitative, Ch 2].

## Expected Results

I expect this chapter to result in a working knowledge of how hierarchical stock assessment models change the estimates of abundance and productivity when applied to multispecies assemblages. Estimates of model bias and precision as functions of correlation strengths, observation error variance and historical fishing are produced. Results are to be published in a paper about the statistical properties of 2 hierarchical multispecies assessment models.

Assumptions about the strength of correlations in shared parameters are likely to introduce bias through shrinkage towards a mean [@mueter2002opposite]. The extent of the shrinkage introduced can be understood by producing bias and precision estimates under a range of fixed values of shared prior variance.

The extent to which limitations on data and species specific information can be overcome [@punt2011among], if at all, can be quantified through bias and precision estimates resulting from scenarios contrasting data-availability and fishing histories. This is especially helpful for fisheries in which there are limited historical fishing and scientific data available, or limited resources for improving existing scientific surveys.


# Chapter 2: Adding Spatial Multistock Structure to Multispecies Hierarchical Stock Assessment Models

## Background

A high degree of spatial variation in genetics, morphology, life-history and behaviour is apparent in many exploited fish populations [@hilborn2003biocomplexity; @schindler2010population]. Management of exploited fishes without acknowledgement of this variation risks eroding biodiversity and increasing species vulnerability to environmental variation [@hilborn2003biocomplexity; @cope2011reconciling; @benson2015evaluating].

Aggregation of sub-stocks into a single management unit over large spatial scales relies on migration to mitigate localised depletion of discrete substocks. The assumption is that despite spatial disaggregation of the stock, sub-stocks are connected by migration creating a rescue effect [@dulvy2003extinction]. Rescue effects are then believed to reduce the risks of managing spatially complex species in a single aggregate [@cope2011reconciling]. However, this rescue effect is highly dependent on dispersal and recruitment patterns in the meta-population and individual natural mortality rates of sub-stocks [@benson2015evaluating].

When stock structure is easily identified, as with Pacific salmon, there are advantages to managing a species at the level of individual stocks. For example, by estimating productivity levels for 43 individual stocks of Pink salmon the effects of local variation in sea surface temperature could be discovered [@su2004spatial]. Furthermore, estimating individual productivity levels within a management complex reduces the risk of overfishing weak stocks whose productivity is less than the aggregate's (Figure 2).

Managing multistock populations also has its challenges. When the exact nature and connectedness of the spatial stock structure is unknown, it is unclear whether or not aggregation is the more precautionary management approach [@benson2015evaluating]. Furthermore, for a data-limited species further disaggregation of the data will only deplete the quantity of data available in each strata at the finer resolution, raising further barriers to assessment.

A hierarchical stock assessment model may overcome data limitations from disaggregation when managing for multiple stocks in a multispecies fishery [@punt2011among]. Life histories within species are likely to be similar, allowing for prior distributions on life history parameters that are shared between stocks. Similarly, sub-stocks of multiple species share habitat and experience the same environmental variation, allowing for a local spatial effect on process error [@kallianiotis2004fish]. To investigate these effects I ask the following research question. 

**QUESTION:**  How do  estimates of abundance and productivity in a multistock, multispecies hierarchical model compare to those of a coastwide multispecies hierarchical model?

To answer this question in a simulation study I use the DERPA complex, which exhibits evidence of sub-stock structure. For example, the species population of English sole on the British Columbia coast is managed as two segregated major stocks with limited migration [@hart1973pacific]. Simulated data from a multi-stock model of the DERPA complex is provided to both a coastwide and multistock hierarchical multispecies model. Both models produce parameter estimates, and bias and precision are compared.

## Methods

The DERPA complex will be simulated as individual stocks $p$ of each species $s$, with stocks corresponding to the discrete populations identified in stock previous stock assessments [@fargo1999flatfish-s; @starr2009petrale-so; @starr2009english-so; @dfo2015arrowtooth; @holt2016stock-asse]  (Figure 11). The model used for each stock, defined in table 5, is a process error surplus production model with a term representing migration between substocks of the same species. Migration from substock $p$ to substock $p'$ within species $s$ is possible with net migration rate $\phi_{s,p,p'}$, making stock population dynamics interdependent (Tabl 5, Eq T5.4).

Population dynamics are affected by environmental process errors with three components. The first component $\epsilon_t$ affects all populations identically. The second component $\zeta_t$ affects stocks within species identically, and between species according to the covariance matrix $\Sigma^{(S)}$. Finally, the third component $\xi_t$ is stock specific, with draws correlated according to the covarance matrix $\Sigma^{(P)}$. The stock specific component is meant to capture spatial covariation between stocks of different species that share the same habitat.

The multistock estimation procedure will use three layers of hierarchical structure to include multiple species, each containing multiple stocks (Table 6, Figure 9). The multiple stocks within each species share prior distributions on growth $r$ and catchability $q$ parameters at the species level (Figure 9(b); Eqs T6.7, T6.8). The multistock prior mean catchabilities at the species level then share a multispecies prior (Figure 9(c); Eq T6.10). Additionally, the process error components are shared at the appropriate level (Eqs T6.9, T6.11, T6.12).

Five experimental scenarios are proposed to evaluate bias and precision of the multistock estimator as functions of data quality contrasts, fishery development history and covariation due to shared environment. Four scenarios are extended from Chapter 1 to account for increased depth in the assemblage structure, including covaration between species in $\Sigma^{(S)}$ and covariation between stocks in $\Sigma^{(P)}$. The additional scenario models increased data-limitation introduced by disaggregating an already data-limited species into multiple stocks. Disaggregation could lead to increased observation error variance or entirely missing observations for some stocks. 

Finally, the multistock estimator will be compared to the coastwide estimator in Table 3. The coastwide model uses aggregated data from the multistock simulator, and the 5 scenarios of the previous paragraph are repeated. Bias and precision will be recorded and compared between estimators.

## Expected Results

I expect this chapter to deepen understanding of hierarchical estimators and their application in a multistock context. Adding stock structure involves increased model complexity and reduced data availability due to disaggregation, introducing a tradeoff. This tradeoff is then evaluated by varying data availability and model complexity and examining how model bias and precision change for the coastwide and multistock models. A publication detailing the tradeoffs between bias and precision under different model structures is expected to result from this analysis.


# Chapter 3: Management Performance of Hierarchical Multispecies Assessment Models

## Background

Fisheries management procedures extend beyond the stock assessment model in practice (Figure 1). Stock assessment output (Figure 1.3) informs a decision rule (Figure 1.4) that determines the amount of fishing effort expended to collect the harvest quota (Figure 1.5). This effort dynamically influences fish populations and their habitat (Figure 1.1), providing feedback in the form of new data (Figure 1.2) that is used for assessment.

An important test for an assessment model is how it performs as part of a feedback management procedure. Management procedures include harvest strategies, which are limits on catch or effort in the fishery, and decision rules that scale controls to the health of the stock, such as a harvest rate [@hilborn1992quantitative, Ch. 15]. Management procedures made up of decision rules, harvest strategies and assessment models represent a season in the management of a fishery.

In this chapter, I will use closed loop simulation to evaluate management procedures based on hierarchical multispecies stock assessment models. Closed loop simulation modeling explicitly quantifies feedback in a dynamic system [@de-la-Mare1998Tidier-fisherie; @sainsbury2000design]. In a fisheries management context, the closed loop includes the management procedure, fish stocks and commercial and scientific data in a feedback loop (Figure 9). The fishery, population dynamics and scientific survey are part an operating model [@jones2009operating] that provides data to the assessment model and harvest control rule as part of a management procedure. Management procedure evaluation then proceeds by experimentally adjusting operating model and assessment model parameters and observing the emergent behaviour. In this way, potential risks of management can be quantified under a given set of assumptions.

Realistic predictions about management procedure performance require a complex operating model that can accurately reflect fishery history. Historical exploitation patterns are dependent on the spatial distribution of fishing effort, induced by the targeting behaviour of harvesters [@hilborn1987general; @walters1999multispecies; @walters2004fisheries Ch. 9.3]. Targeting behaviour is dependent on several factors, including catch composition and expected financial reward, and can be simulated by including a fishing effort dynamics model for multiple fishing fleets (gear types) in the operating model. Effort dynamics are based on fishery dependent catchability parameters $q_{f,s,t}$ (Table 7), which can be empirically estimated from commercial data or parametrically simulated. Using this framework, I address the following research question.

**QUESTION:** How do multispecies hierarchical assessment models perform when simulaneously managing multiple target and non-target species?

I will answer this question by running closed loop simulations of the DERPA complex under different management and ecological scenarios. A validated operating model that makes use of historical fishery effort and observed population dynamics is used to simulate management procedures forward in time and assess risks of future management decisions. Risks of assessment model errors, harvest control rules and effort dynamics can be tested across multiple experimental operating model scenarios and management. Experiments include contrasts in data-quality between species, spatial aggregation of multistock structure, covariation due to environmental forcing [@dichmont2006management2], and changes in effort dynamics driven by economic forces..

## Methods

The closed loop simulator of the DERPA complex requires an operating model that includes effort dynamics [Table 7; @jones2009operating]. At each time step $t$, the current state of each fish stock or species is estimated by the assessment model. Asessment models then forecast abundance at time $t+1$, which is passed through a harvest control rule (HCR) to generate a total allowable catch (TAC) for each species. The TAC for each species is then supplied to the operating model, which distributes fishing effort across the space in order to maximise some objective, such as profit, subject to the constraints of the TAC.

Four classes of model are available for simulating short term distribution of fishing effort [@walters2004fisheries, Ch. 9.3]. From least to most complex the four classes are: (i) gravity models [@walters1999multispecies], (ii) ideal free distribution (IFD) models [@benson2015evaluating], (iii) sequential effort allocation models [@hilborn1987general] and (iv) individual based models.

For spatial allocation of fishing effort I use a simplified IFD model [@walters1999multispecies] with a numerical effort response model for fish vulnerability [@cox2002modeling]. The IFD model is chosen because of the large spatial scale of discrete stocks in the DERPA complex (Figure 11), allowing for the more complex IFD model over the simplified gravity model more suited to finer resolution. The numerical effort response model allows for the transition of individuals to and from a vulnerable state, reflecting the reality that not all habitat can be fished by all gear.

External economic forces are included in the effort dynamics model. The IFD model ranks the quality of each fishing site by the profitability $pr_i$ of fishing at site $i$. Profitability is a function of fixed and variable fishing costs, ex-vessel sale price of catch and the cost to acquire the necessary quota for bycatch. Quota prices are subject to market forces, such as scarcity, meaning bycatch quota for pinch-point species can at times exceed the ex-vessel sale price of that species, decreasing the expected profitability of a given site and affecting harvester behaviour.

The closed loop simulation tests future performance of management procedures using single species, coastwide multispecies and multistock multispecies models in experimental scenarios. Experiments test a range of observation error variances, process error variances, fishery development history and correlations in catchability $q_{s,j,t}$. Each simulation measures quota utilisation, species depletion, probability of exceeding optimal instantaneous fishing mortality and annual average variation. Simulation output is then used to compare between scenarios and management procedures, quantifying performance and risks of each procedure.


## Expected Results

This chapter is expected to result in an understanding of how hierarchical management procedures perform in multispecies fisheries. Performance of both coastwide and multistock models is compared in closed loop simulation against the status quo management of the DERPA complex, which involves intermittent assessments at best. Furthermore, simulations of the DERPA complex that model status quo management may uncover risks not considered in the current management system.

Results will be published in two articles in the primary literature. The first article will be detail the model linking complex  market forces to IFD effort dynamics simulator. The second article will publish the operating model and the pinch-point dynamics that are expected to emerge from the closed loop simulation.

# Chapter 4: Avoiding non-target species.

## Introduction

Quota on target species in the British Columbia groundfish fishery is increasingly constrained by not only restrictive quotas on pinch-point species, but size limits on target species. For example, an average of 160 tonnes per year of Sablefish below 55cm in length were discarded due to size regulations by trap and trawl fishing vessels between 2007 and 2015 in the fishery[^5]. These undersized individuals represent potential growth and recruitment overfishing of the sablefish resource, constraining future TACs by lowering species productivity [@cox2011management].

[^5]: From the Groundfish Fishery Operating System (GFFOS), Pacific Biological Station, Nanaimo.

There is general agreement in the literature that incidental catch and discarding should be reduced as much as possible or practical [@saila1983fishery; @crowder1998fisheries; @safina2008study; @Pelc201556]. Mortality of immature individuals caused by unregulated or regulated (i.e. size, quota, trip limits) discarding contributes to both recruitment and growth overfishing of fish stocks [@crowder1998fisheries]. Furthermore, bycatch has an impact on the ecosystem containing the target resource, including all non-resource species and habitats that interact with the fishing gear [@safina2008study].

In this chapter I will test the feasibility of using a model-based approach to predicting fishing events that encounter and discard juvenile sablefish by analysing commercial fishing data for the purposes of avoiding regulatory discarding. Data generated by commercial fishing is not randomly sampled, so traditional statistical models that rely on the central limit theorem are unsuitable. Instead, novel statistical learning models that may sidestep these restrictions are used to search for correlations in commercial data [@bishop2006pattern; @hastie2009elements].

Statistical learning models are trained and optimised on commercial data from the British Columbia groundfish fishery to classify presence and absence of juvenile sablefish for a given fishing event. Event predictions from all models are then combined into a multi-model, or ensemble, classifier [@rokach2010ensemble; @vrbik2015fractionally]. Ensemble classifiers use weighted model averaging techniques to overcome potential overfitting to the training data. A set of quarantined data is then used to test the performance of the classifiers using multiple metrics [@freeman2008comparison].

The feasibility of a tool to avoid regulatory discarding requires an economic benefit to harvesters. Because juvenile Sablefish are discarded under size regulations, no discard induced mortality is deducted from harvester quota [@PRIFMP2015]. No reduction in quota implies a lack of economic incentive for harvesters to avoid conditions that lead to the catch of juvenile fish. 

**QUESTION:** What is the benefit of using a machine learning approach for predicting the presence and absence of juvenile sablefish in commercial fishing events, compared to the status quo?

Economic benefit of the ensemble classifier is measured by estimating the value of information provided by the classifier [@mantyniemi2009value]. Classifier performance is combined with empirical estimates of the probability of encounter in a decision analysis, with utility provided by a dollar value based on the costs and benefits of successful and unsuccessful avoidance.

## Methods

Predictive capacity of ensemble classifiers to detect juvenile Sablefish is tested on 4 sets of commercial fishing data from the British Columbia groundfish fishery. The fishery data is contained in the Groundfish Fishery Operating System (GFFOS) data base that contains spatially and temporally explicit data for every fishing event in the fishery since 2005. The 4 data sets are split by gear type, with data sets containing events using (i) trawl only, (ii) longline trap only, (iii) longline hook only and (iv) all gear types.

For each data set, two types of classifiers are developed. First, a finite mixture model will be tested [@fruhwirth2006finite]. Finite mixture models are weighted combinations of single statistical models, allowing for highly irregular data to be modeled using mixtures of parametric distributions or explanatory or descriptive models. Second, an ensemble classifier using modern machine learning, or big data, techniques will be developed using Random Forest [@breiman2001random], Naive Bayes [@meyer2015e1071] and Artificial Neural Network [@venables2002modern] classifiers. 

Component model configurations for both types are chosen based on average performance over Monte-Carlo trials of a validation procedure [@hastie2009elements, Ch 7.2]. Performance of classifiers is measured using multiple metrics including percentage correctly classified, area under receiver operating characteristic curves, precision and recall [@freeman2008comparison]. Component classifiers that perform the best are then combined, with the configurations depending on the type. 

Finite mixture models are combined in a prescribed way with weights estimated from the data, but machine learning classifiers have some more flexibility.  Methods range from simple weighted model stacking to Bayesian Model combination [@rokach2010ensemble]. Ensemble classifiers are then tested on a reserved portion of the data to estimate the classification error rate of the ensemble.

A formal decision analysis is performed to estimate the value of information provided by using each classifier on each data set [@mantyniemi2009value; @peterman1999decision; @pestes2008bayesian]. Classifiers are included in the analysis as a form of expert opinion, adjusting the probability of encountering juvenile Sablefish, based querying the expert prior to a fishing event. The value of information is then the difference in the expected utility of fishing with the classifier's help and the expected utility of fishing without it. The utility is dependent on the costs setting gear, sorting discards from the catch, as well as the value of landed catch.
    
## Expected Results

It is expected that statistical learning will be economically feasible for the avoidance of non-target species. However, the net benefit is will likely depend on the nature of the species being avoided. For example, pinch-point species with restrictive quota that is costly to acquire, such as Yelloweye rockfish, may result in a greater net benefit, while regulatory discards of juvenile individuals with no quota penalty may result in a lesser net benefit. This could be overcome by including the avoidance technology in larger closed loop simulations of the management system, and seeking predictions of a long term benefit in the form of higher TACs of mature sablefish.

Challenges in this chapter include acquiring spatially and temporally explicit data for bycatch of juvenile sablefish, and estimating the costs and benefits for the decision analysis. For data acquisition, the privacy act creates a limit on the resolution of commercial data, requiring creativity an perspiration in choosing an aggregation scale. Estimates of the costs and benefits of fishing may exist in the literature for other fisheries, but this may be best informed by asking skippers directly.


# Conclusion

This thesis is a study of assessment and avoidance tools that may improve management of integrated multispecies fisheries, in which technical interactions cause constraints on fishery profitability. Profitability is constrained when the effort targeting directed, high value species encounters non-target species with restrictive quota. Restrictive species quota may be caused by data limitations precluding regular assessments, or conservation concerns requiring rebuilding strategies. In either case, those species become pinch-points on the efficient management of the fishery. 

Hierarchical assessment models studied in Chapters 1, 2 and 3  may overcome data limitations and allow assessments to be extended to species that were previously unassessed. Extending assessments to previously unassessed species may or may not relieve pinch points by reducing uncertainty about stock status, but will always increase scientific defensibilty. Indeed, up-to-date and regular assessments of non-target species allows for improved ratings by eco-certification bodies [@Driscoll2014Groundfish-comp]. Improved eco-certification can create benefits by improving access to foreign and domestic markets.

Closed loop simulations of hierarchical assessment models studied in Chapter 3 may have further benefits in multispecies fishery management, specifically in improving the allocation of scientific resources. By assessing groups of multiple species with similar life and evolutionary histories, it may be possible to take biological samples more efficiently. For example, age and length sampling may occur only for higher value species in a group, with lower value species sampled for length only. Then length and age can be related through a shared multispecies prior defined in the hierarchical assessment model. If model stability is an issue, low frequency age sampling of the lower value species may be necessary. Closed loop simulation can assess the potential risks associated with these and other survey design modifications.

Avoidance techniques are necessary when assessment methods are unable to relieve pinch-point effects of low quota species. The statistical learning methods to be studied in Chapter 4 are a novel approach to the avoidance problem, combining technological and fleet communication approaches. A centralised communication system can use reported observer data to provide near-real-time information to harvesters, detailing the probability of non-target species encounter under given conditions. The system is not unique to juvenile Sablefish and could be extended to any non-target species encountered, which would change the expected net economic benefit of the product.

<!-- # Chapter 1: Bias and Precision in Nottingham Forest.

**Guiding question:**

**1. What are the bias and precision in estimates of stock assessment parameters of interest (depletion, unfished biomass, fishing mortality, catchability, etc.) from the estimator in model (b)?**

## Background

Model (b) of Figure 1 is quantitatively distinct from models (a) and (c). Specifically, models (a) and (c) are able to use the same quantitative models and differ only in how the data is prepared and how the TAC is set. In contrast, model (b) requires a distinct statistical model in order to link the data of multiple species without aggregation.

Two options exist for allowing multiple species' data to statistically affect each other through the statistical model in a stock assessment (@punt2011among), and both involve penalties applied to the likelihood function. The first involves separately estimating penalties for parameters believed to be shared between species and fitting each model separately with those penalties. However, this approach doesn't directly link the data and is essentially a single species model with some extra homework. The second approach differs from the first by fitting all species in a single hierarchical statistical model, where prior estimates are shared directly between stocks (@gelman2014bayesian Ch 5; @punt2011among).

An estimator where data for multiple species are linked through an hierarchical model has been called the Robin Hood (RH) approach, due to its application in data-variable fisheries (@smith2009reconciling; @punt2011among; @zhou2010modified; @kell2012robin). In the RH approach, an hierarchy is established for parameters which represent or are thought to be affected by biological and technical interactions between species, which we shall call *interaction parameters* (Figure 3). If those species have varying data qualities, the hierarchical approach theoretically allows data rich species to stabilise estimates of interaction parameters in the data-poor species. Indeed, it has been shown that when the RH approach is applied to a data-variable fishery the assessments for the data-rich stocks remain similar while those for data-poor stocks are qualitatively different (@punt2011among; @kell2012robin). The nature of the difference remains unclear, as only one simulation study has been performed for a limited range of interaction parameters. In this chapter I plan to estimate the bias and precision of both Bayesian (@zhou2010modified) and frequentist (@punt2011among) state space implementations of the RH estimator through simulation modeling.

## Method

Hierarchical estimators will have data supplied by an operating model (OM) that simulates a small multispecies assemblage under exploitation. Interactions between fishes in the assemblage are simulated within the OM as parameters which represent interactions, such as similarities in survey catchability ($q$) or correlated environmental effects on the growth rate ($r$). By using an OM we are able to know the true nature of the data being supplied to an estimator, and therefore are able to assess the estimator's performance. 

There are four main steps to this chapter, outlined below.

1. Code an operating model to produce survey and fishery data.
2. Code estimators to apply to data:
    a. Fully Bayesian State Space (FBSS) model;
    b. Numerically Integrated State Space (NISS) model.
3. Design experimental scenarios which vary parameters representing interactions. 
4. Record MC estimates of bias and precision of each estimator in each scenario to discover boundary conditions for the application of the RH method.

In choosing the structure of the operating model I have two main considerations. The first consideration is how many systems (species and fleets) to include, and the second is the underlying population dynamics. While the ecology, data availability and fishing practices for given systems will determine these two points in practice, in the simulation stage both decisions represent a trade-off of increased model complexity for an increase in information. For example, using a simple biomass dynamics model provides three potential parameters to represent interactions: correlations in growth rate ($r$) due to environment factors; deviations in carrying capacity ($B_0$) from competitive interactions; and catchability ($q$) representing technical interactions. The reduced dimension of the parameter space reduces the breadth of potential sources of interactions in the operating model, but it also increases the possible depth to which the effect of the parameters can be explored.


: while the ecology of a multispecies assemblage will be the major determinant in defining membership in practice, increasing the number of species during simulation may increase model complexity but provide a small marginal benefit in information. The marginal benefit of increasing model complexity will need be an important part of this consideration. 

Second, I will need to decide which population dynamics model to use. The choice of population model will determine sources of interactions and contribute to model complexity (parsimony), again placing a value on information. For example, using a simple biomass dynamics model provides three parameters to represent interactions: growth rate ($r$) correlations due to shared habitat, deviations in carrying capacity ($B_0$) from competitive interactions and catchability ($q$) representing technical interactions. The reduced dimension of the parameter space reduces the breadth of potential sources of interactions in the operating model, but it also increases the possible depth to which the interactions can be explored.


Two estimators will be tested on the data produced by the operating model, a Bayesian approach (FBSS) and a frequentist approach (NISS). Both estimators will share the same stucture as the OM to avoid confounding structural uncertainty with precision of the estimators. Both estimators are state space models that account for process error in the population dynamics and observation error in the survey indices (@punt2003extending; @de2002fitting). Mathematically both models are specified in the same way: as a penalised likelihood function, with penalties in the Bayesian setting being referred to as prior belief distributions. An example of a penalised likelihood for an assemblage containing $S$ species and penalising deviations of catchability $q$ is
$$
P ( \Theta ~|~ \vec{I_1},\vec{I_2},...,\vec{I_T} ) = \mathcal{L}(\vec{I_1},\vec{I_2},...,\vec{I_T} ~|~ \Theta ) \prod_{s = 1}^S p ( \log~q_s ~|~ M_q, S_q^2 ),~~~~~~~~~~~~~~~~~~~~~ (1)
$$
where $\Theta$ is a vector of parameters, $\vec{I_t}$ are observations (data) for all species at time $t$, $\mathcal{L}$ is the likelihood of the data given some value of the parameters and $p$ is the penalty on log-catchability $\log q_s$ for each species $s \in 1,...,S$, with mean $M_q$ and variance $\S_q^2$. The statistical model in (1) corresponds to an assemblage like the one shown in Figure 2, and is shown as a hierarchical surplus production model in Figure 3.

Both FBSS and NISS models require integration to produce marginal distributions for parameters and likelihoods (@de2002fitting; @gelman2014bayesian; @maunder2015use). Integration generally requires numerical methods due to the non-linear and often non-Gaussian nature of the models, like Markov-Chain Monte Carlo (MCMC) algorithms for distribution sampling. Several options for out of the box MCMC methods exist (ADMB, STAN, JAGS etc **refs**), but depending on the complexity of the model I may require a customised approach for dealing with a high number of latent variables in the model.

The model testing will proceed through Monte Carlo trials of experimental scenarios. Parameter estimates from each scenario will be compared to their true values in the OM for estimates of bias and precision. For sensitivity analyses, scenarios will be designed to explore the changes bias and precision caused by changing interactions between species. Possible experiments include time-varying carrying capacity to represent competitive interactions between species (*refs*), testing the limits of data quality and parameter contrast between interacting species, and viewing bias and precision as a function of interaction parameter strengths by varying penalty variances (@gelman2014bayesian, Ch 5.4).


<!-- The main difference between the FBSS and NISS estimators is in how inferences are made (@maunder2015use). Inferences for both are extended from marginal and conditional distributions produced by integrating over nuisance parameters. In the NISS model the likelihood function is integrated over the process error noise and penalties to produce a marginal likelihood (@de2002fitting; @punt2003extending), which is then used to infer maximum likelihood estimates and standard errors of leading parameters. In the Bayesian model integration is over the full parameter space (@gelman2014bayesian) and marginal and conditional distributions for all leading and derived parameters are produced, which are themselves inferences of the FBSS model. 
 -->
<!-- 
* challenges of each
    - numerics
    - MCMC - will this require an out of the box method, or something more customised given the hierarchical nature of the problem (many parameters - some with little covariance - large jumping distributions)
 -->


<!-- + Fix variance hyperparameters on shared priors/penalties on REs and vary in $(0,\infty)$, varying the allowed strength of the linkage between member species. This can produce plots of bias/precision of parameters which possibly vary with the linkage strength. (@gelman2014bayesian Ch 5)
    + Some experimental design will be needed to find most efficient path through the parameter space

    

- Partially follow @gelman2014bayesian Chapter 5 for parts of the analysis.


## Expected Results

The main product of this chapter will be distributional estimates of bias and precision for leading parameters produced by the RH given an underlying configuration of population dynamics and multispecies community. This will improve understanding of the RH method for stock assessment, and the limits to the application of such a tool. Results will then be published in an article in a peer reviewed scientific journal.



# Chapter 2: Management Strategy Evaluation: How Much can Robin Hood Take From the Rich?

## Background

**Guiding question:** 

**2. What are the benefits and trade-offs for harvesters and managers associated with using the Robin Hood approach for stock assessment?**

Biased stock assessment models are commonplace in fisheries management. For example, errors-in-variables models are well known to be asymptotically biased (@de2005state) but are still applied in fisheries stock assessment (@punt2003extending). Sometimes, bias can be explicitly corrected for by the manager, or implicitly by a harvest control rule which implements a harvest strategy (*refs?*). *Harvest strategies* are the way in which managers control the output (harvest) of the fishery, and could be either controls on effort (input controls) or controls on catch (output controls) (@hilborn1992quantitative, Ch. 15). Testing of harvest strategies in conjunction with assessment methods is done via closed loop simulation in a Management Strategy Evaluation (MSE) (@de-la-Mare1998Tidier-fisherie; @sainsbury2000design). Figure 4 shows a conceptual model of the MSE framework for a multispecies fishery.

In this chapter I will run a MSE on the Robin Hood approach to stock assessment. Because the goal of the RH method is to supply scientifically defensible TACs for data-variable multispecies fisheries, I intend to test output control harvest strategies in the form of feedback Harvest Control Rules (HCRs). Further to the HCR there are three multispecies specific management strategies I wish to evaluate in this chapter, outlined below:

1. Allocation of survey effort: For example, is it possible to exploit species interactions and focus full scientific sampling on one, low variance (commercially important) species in an assemblage, and only sample the other lower importance species for length, say? Does the RH method change the value of information gained from surveying a species?
2. Distribution of fishing effort: In a multispecies fishery, market prices will affect targeting of fishing effort between interacting species (@clark2010mathematical, Ch. 3). How robust is the RH method to changing effort allocation between species based on market forces?
3. multispecies management: Managing for different species productivity levels when fishes interact can be tricky (@dichmont2006management2) and lead to overfishing of one or more species in an assemblage. The RH method may be able to help identify these situations, allowing managers to plan input controls to mitigate effects.

## Methods

The methods for this chapter follow the following 4 steps:

1. Expand OM to include feedback from an estimator.
2. Experimental design of management strategies and OM changes for each:
    i.   Allocation of survey effort in a data-variable fishery.
    ii.  Economically driven fishing effort.
    iii. multispecies management.
3. Run MSE for each scenario to assess limits, trade-offs and applications of the RH model of stock assessment.

Step 1 will expand the operating model and estimator into a MSE framework by defining a decision rule which implements a harvest strategy (@hilborn1992quantitative, Ch. 15). As a starting point, the harvest strategy will be based on the guidelines given by DFO (@DFO2006A-Harvest-Strat). When the stock assessment model provides an abundance estimate, the harvest strategy will inform the operating model of TAC for the following year. This will provide a general closed loop simulator able to test several management scenarios.

In step 2, management scenario experiments will be designed to test the guiding question, uncovering benefits and trade-offs for harvesters and managers. Testing different scenarios will require the modification of the OM and the estimator structure to change how catch, effort and surveys are simulated. Strategy i. differs survey designs across species in an assemblage, which may imply a different population dynamics model for each species in the estimator. In strategy ii. havesters will change their targeting behaviour towards the resource that provides the highest profit, requiring calculation of optimal control rules based on fishing costs and market prices in the operating model. Finally, strategy iii. will require a way to fish multiple resources with a single effort, possibly through a time-varying fishery dependent catchability $q$ for each species. 

Finally, many replications of each strategy under a range of scenarios (parameter values) will be tested under closed loop simulation (Figure 4). Furthermore, using the same framework it would be possible to test combinations of strategies i - iii to see how they interact, such as shifting market prices driving survey effort.

<!-- - Experimental design of scenarios to test problems/applications in background
    + Different HCRs and how to implement them (strategies and tactics (@hilborn1992quantitative))
        * bycatch requirements
        * size limits
        * gear controls
    + Value of information (@walters1978ecological; @walters1986adaptive)
        + Tests of Adaptive management scenarios for implementing data-variable management?
    + Different ways to simulate catch
        * Single effort, different fishery dependent $q$ (how do we vary $q$?)
        * Economically driven effort (fake market forces), outlined further below
        * Parametrically
        * based on historical data
- Economically defined effort based on market forces (@clark2010mathematical Ch2; further refs)
    + requires data on market forces (probably simulated for fake stocks - if only two stocks are used, then a just change between them along a gradient, add noise)
    + This will change targeting behaviour: 
        * is it best to do this through a single effort E_t and time varying q?
        * or have a total effort for all species, with a share for each defined by the optimal control?
    + *Dynamic optimisation*
    + *Ideal free distributions* pushing harvesters between resources (species), instead of between spatial patches (a la Okamoto et al)

## Expected Results

I expect to quantify the performance of the RH method of assessment as a management tool for setting TACs under a range of conditions. In strategy i. the limits to how much the RH method can "steal" from the rich species to enable assessments of poor species will be determined. In strategy ii. I expect to discover the robustness of the RH method to shifting targeting behaviour based on dynamic economic conditions. Finally, in strategy iii. I expect to discover applications of the RH approach in simultaneously managing multiple resources under financial limitations. I expect to report these results in 2 publications, one for multispecies management (i. & iii.) and one for the effects of economic changes on targeting in a data-variable fishery.


# Chapter 3: A Risk Analysis of multispecies Stock Assessment Policy.

**Guiding Question:**

**3. What are the risks of using assemblage-based stock assessment methods for data-variable assemblages compared to single species methods, using: a) more detailed data; or b) the data available?**

***This chapter needs more references. SJ to ask MR and mine Marine Policy journal***

## Background

Management of renewable resources in the presence of uncertainty inherently involves risk. One prominent issue for fisheries is overfishing, the risk of which increases as data quality decreases (ref). Ideally, catch advice provided by assessment methods should become more conservative as data quality decreases (@hilborn2001precautionary; @DFO2006A-Harvest-Strat), in order to stabilise the biological risk of overfishing in the absence of good data. Indeed, data-limited single species methods for stock assessment and management are currently being developed and tested for their ability to detect and avoid overfishing (@maccall2009depletion; @ICES2013Report-of-the-W; @Carruthers2014Evaluating).

In this chapter, I view single species (SS), Robin Hood (RH) and total aggregation (TA) methods (Figure 1) as lying along a gradient of data-quality for a data-variable fishery (Figure 5). The aim of this chapter is to quantify the range of data-quality and harvest control rules required for each method to perform within an acceptable level of risk. These ranges I will call *stable risk regions* for each method. A conceptual model of stable risk regions for the three models is shown in Figure 5.

I will test both biological risks of overfishing and social risks of fishery closures (@hilborn2001precautionary), attempting to find a balance between social needs and resource conservation. It is my hope that these stable risk regions can be used to inform and propose a fictional tiered stock assessment policy prescribing data-requirements for the application of the three methods within a data-variable fishery.

## Methods

I will use an MSE approach to quantify the boundaries of stable-risk regions for each method. The stable risk regions will then inform a fictional policy about conditions in which to use each method in a data-variable fishery. This would require an inclusion of the interests of human-capital reliant on the resource, such as harvesters and processors, and identification of trade-offs between intergenerational equity and present income for those sectors (@hilborn2001precautionary), tested under a range of conditions. This chapter will involve the following 4 steps:

1. Identify the gradient (path) through data availability and HCR conservatism for a data-variable fishery.
2. Include human-based capital needs, extending the economic driver OM from the previous chapter.
3. Identify limit reference points (LRPs) and human-biological trade-off decision rules.
3. At a "grid" of data-availabilities and HCRs, apply a MSE for each method and record biological and social risks - probability of dropping below LRPs with a consequence of lost welfare to industry reliant on the resource.


<!-- - Identify a gradient of data-availabilty to be followed for the experiments
    - based on the contrast between stocks and availability of sampling data
    - Might have to restrict scope to avoid combinatorial explosions
        + Gradient through biomass data (dropping resolution in age/length data etc)
        + Gradient through contrasts between species (obs error contrasts, differences in sampling resolution (some age vs all age))
- For each point along the gradient, apply all three methods of assessment and record the probability of dipping below $0.2 \cdot B_0$ for each stock 
    - this will require some way of combining the probabilities
        + Just the overall probability of *some stock* being overfished
        + Or a more sophisticated weighting system, based on importance
    - Will require determining HCRs for each method
- Based on these results, find the points along the gradient at which we should switch assessment methods can be estimated
- Analysis will be MSE style approach (extension of previous chapter)
- Inform a policy based on these points.
- Should we add further tiers?
    + Empirical methods
    + accounting for bad experimental design?

## Expected Results

I expect to quantify stable risk regions of data-quality and catch conservatism for each method, balancing the biological risk to the resource and social risk to industry. This will help produce a recommended tiered stock assessment policy prescribing the application of the SS, RH and TA methods. The recommended policy and stable risk regions will be published in a peer reviewed journal, such as Marine Policy.

# Chapter 4: An Extension to Real Fisheries Data.

**Guiding Questions:**

**4. What multispecies assemblages exist on the BC coast that can be defined based on biological and technical interactions using literature, data and local knowledge?**

**5. How do results of stock assessments using methods (a), (b) and (c) differ when applied to an assemblage defined by question 4?**

## Background

There are few applications of the RH method in the literature (@smith2009reconciling; @zhou2010modified; @punt2011among; @kell2012robin). Those which do exist provide limited justification for the assemblages they use. Because the RH method could provide a benefit to data-variable fishery management, definition of assemblages for the application of the RH method should account for biological and technical interactions reflected in the hierarchical estimator. 

In this chapter, I will develop a method which uses scientific literature on the ecology of species, local knowledge of species interactions and fishery and scientific data to identify assemblages which are good candidates for the RH approach. I will then apply the RH method to produce estimates of leading stock assessment parameters and a recommendation on TAC for at least one of these assemblages.


### Methods

My study system will be the British Columbia Integrated Groundfish Fishery (British Columbia's groundfish fishery) (@PRIFMP2015). The British Columbia's groundfish fishery is a data-variable fishery that sets quota for 55 different stocks (defined as species-area combinations). Of those 55 stocks, 41 received the a red or yellow rating on impacts to the target stock by Seafood Watch (@Driscoll2014Groundfish-comp), quoting that a lack of up-to-date information was available. The RH approach to stock assessment could be used for assessing those stocks in the British Columbia's groundfish fishery which lack assessments under the SS approach.

Some methods of assemblage identification are put forward in the literature (@bryan2010assemblages; @gaichas2012assembly), with varying degrees of success at dividing the community into cliques of species. According to @gaichas2012assembly the membership of an assemblage largely depends on objectives, which is very similar to the observations of @secor2013unit in the definition of a unit stock. My objectives are to define an assemblage based on technical and biological interactions, specifically those represented by shared priors in the RH method of stock assessment. Essentially, I'm attempting to extend the concept of stock to a multispecies assemblage.

By reviewing scientific literature and drawing on local knowledge I plan to scope the space of possibilities for assemblages of interacting species in the British Columbia's groundfish fishery. This will require:

1. Fully articulated objectives for the assemblage, such as data-availability for each species, and level of shared or evolutionary life history;
2. Identification of interactions important to the definition, and if and how these interactions are represented in data, scientific literature or through local knowlege of resource users.

Once the space of possibilities is scoped I will apply unsupervised clustering techniques (@bryan2010assemblages; @olden2008machine) to cluster species based on interactions represented in catch and survey data, producing candidates for multispecies assemblages. These assemblages will then form the management unit for the RH method of assessment. Unit-assemblages will then be assessed using all three methods of Figure 1. For the RH method, I expect the model to include three layers of hierarchy:

1. Single stock-area combination likelihood functions;
2. Multiple stock-area combinations sharing priors within a species;
3. Multiple species sharing hyper-priors within an assemblage.

The results of each method will then be compared to gain insight into the effects of model structure on assessment of the same data.

<!-- 
- Few applications of the RH method in practice (@punt2011among; @zhou2010modified; @kell2012robin; @smith2009reconciling)
- It remains to be seen 
    - how the method as analysed up tile now stands up in a real setting 
    - whether we can identify suitable assemblages for application of RH method (or the other 2 - total aggregation requires some assumptions on shared LH)
- Some methods of identifying assemblages have been used in the past (@gaichas2012assembly; @bryan2010assemblages), with varying degrees of success.
    + Need to fully articulate objectives to reduce the space of possible assemblages: this may require a bound on the size of assemblage, or smart reduction on candidate members.
    + what interactions are important, how are they represented in the data?
    + Are there interactions/assemblages that are known about (local knowledge, literature) that do not appear in the commercial/survey data?
    + Can we extend the stock concept to a multispecies assemblage, and under what conditions can we do so?
- Given an assemblage defined by biological and technical interactions, constructed by reviewing DLLK (Data, Literature and Local Knowledge) perform a stock assessment. -->

<!-- ## Methods

- Choose a study system (probably the British Columbia's groundfish fishery)
- Review literature, collect local knowledge, narrow down possibilities based on ecology.
- Use data-based methods (ML) to cluster species based on interactions (technical)
    + commercial data, 
    + survey data or 
    + both
- Combine narrowed field from LLK with clustered data to (hopefully) produce assemblages
- Assess using RH approach
    + Hierarchically assess multiple species, each with multiple stocks (determined by statistical area)


## Expected Results
The definition of multispecies assemblages depends largely on objectives. Because of this, I don't expect to produce an infallible tool for identifying assemblages of interacting species, but instead a procedure to follow. The procedure will include literature review, scoping of alternatives according to objectives and cluster analysis of data. Unfortunately, some subjectivity and convenience is probably inherent in the process. Assessments performed in candidate assemblages will provide scientifically defensible TACs, recommended to the British Columbia's groundfish fishery. I expect this will result in 2 publications: 1 for assemblage identification, and one for the comparison of assessment results.

 -->


<!-- Uncertainty in assessments can arise from the data collection process, with sources including the mis-reporting of fishery-dependent removals, inappropriate experimental design and incorrect survey data standardisation. Moreover, survey data time series are ideally sufficiently long to capture contrast in the abundance trends of a stock (@ICES2012Report-on-the-C). However, most stocks exhibit one-way-trips from high to low abundance (@hilborn1992quantitative) or suffer from low commercial importance and lack appropriately designed surveys.



Catch data and indices of abundance are subject to two sources of uncertainty: quality of data and security of the data-stream. The quality of the data could be jeopardised by misreporting of catch and other fishery dependent mortality and inappropriate experimental design of surveys. The security of the data stream is affected by the resources required to collect and store survey and fishery dependent data required for assessments.
 -->
<!-- - Challenges in setting TACs for individual species
    + TACs require:
        * estimates of abundance
        * estimates of productivity ($r$ in a SPM)
        * harvest rate/limit reference points
        * harvest strategy
    + Estimates of abundance, productivity and limit reference points require assessments
    + Assessments require data
        + data-limited/data-poor stocks
        + (inappropriate) survey design -  standardised indices of abundance
        + (long) time series of data - doesn't always exist
    - @hilborn1992quantitative: errors in the reliability of TACs can arise from each element involved.
- How many assessments are typically needed?
    + long time series of data points for making stronger inferences
    + enough time to be sure of contrast in the time series of IoA data - preferably including points above and below MSY and a period of increasing abundance. Typically, the data available are "one way trips"
    + NERC (http://www3.imperial.ac.uk/cpb/databases/gpdd/data) recommends time series covering ten generations - not always possible. In practice, the more the better, so start collecting data now.
- Scientific and resource needs for doing each assessment?
    + index of abundance data
        * surveys (boats, manpower)
        * experimental design (science advice)
    + catch data
        * unbiased reporting (ASOP/EM)
        * many sources to check - what about discard mortality and ghost fishing?
- Consequences of not doing assessments?
    + Stocks can become overfished without knowledge of their state in response to fishing efforts, leading to (economic) extinction
    + Example: Yelloweye -->

<!-- 
In order for harvesters to retain the catch, quota must be distributed to harvesters or made available for purchase. Quota requires that a Total Allowable Catch (TAC) is set for each stock, and setting a scientifically defensible TAC requires some form of stock assessment. 
-->

<!-- 
This leads to our motivating research question: **How do we perform annual stock assessments for every species in a multispecies fishery?**

One answer to the above question is to design new surveys to collect enough data over several years that can then be used in the existing single species stock assessment approach for every stock. In a realm of unlimited scientific funding and support this approach might be possible, but resources are typically limited and competition for them is a zero-sum game. I prefer to think in reverse of this and loosely follow the example of Pacific salmon, by simultaneously assessing aggregate groups of stocks we call *assemblages*. Where we stray from the example of salmon is in the composition of assemblages: I consider assemblages that include multiple species based on technical and fishery interactions between and among stocks. This brings up the question of how to define such an assemblage, which starts with the stock concept (@cadrin2013stock).

As outlined above, a typical fishery is usually managed from a single species perspective where species are assumed to be composed of one or more `unit stocks'. The *unit stock* is a concept that varies based on management objectives, and arose from the need to define discrete groups of fish as the subjects of population dynamics models (@secor2013unit), and can be traced as far back as the observations of @hjort1914fluctuations on herring migrations. The discretisation of fish populatios arose from an effort to understand how fishing and other external forces influence the internal dynamics of groups of fish. The origin of the concept has led to the unit stock having several distinct but overlapping definitions (@begg1999stock; @booke1981conundrum; @booke1999stock; @larkin1972stock), all of which are practically synonymous with a biological population and often characterised by reproductive isolation and shared life history parameters (@secor2013unit).

Some authors recommend the Evolutionarily Significant Unit (ESU) as the fundamental unit, as managing for this will preserve genetic diversity inherent in locally adapted sub-populations (*Reference Sinclair 1988*). However, defining ESUs is often impossible to do directly, as assessing genetic fitness is a difficult task. Instead, several proxies are often used in a holistic way to define stocks (@dizon1992rethinking; @begg1999stock). Recently, it has been argued that demographic independence is in fact more important than genetic independence (@benson2011evaluation) allowing for a small level of reproductive exchange between stocks (around 5 - 10%). In practice the unit stock is often operationally defined: @secor2013unit argues that due to the external forcing of fishing "... that stocks cannot be conceived exclusively as biological populations."

**What is the `fundamental management unit' in a multispecies fishery?**

Single stock management in a multistock context has been shown to lead to suboptimal yields and sometimes the extermination of weaker stocks (@ricker1958maximum; @ricker1973two). Similarly, the single species approach to management in multispecies fisheries may also lead to suboptimal conditions (@sugihara1984ecosystems; @gulland1984observed). @walters2005possible argue that "... widespread application of single species Maximum Sustained Yield (MSY) policies would in general cause severe deterioration in ecosystem structure..." due to adverse effects of fishing on food web dynamics. Furthermore, @mueter2006using cautions against using a sum of single species MSYs as a proxy for the MSY of a multispecies complex because of ecological interactions and fishery impacts.

As fisheries rationalise and move from multi-single-target fisheries (many separate fleets fishing targeted stocks) to single-multi-target fisheries (single multi-purpose fleet fishing several stocks) (@gulland1984observed), single species management becomes less appropriate because human disturbances are not applied to a single species. @secor2013unit describes the concept of a stock being flexible, sometimes ranging from a species to a brood. I ask the question of whether this can be extended to assemblages of species under the right conditions.

In extending the management unit of a fishery to assemblages, there must be a common element to bring the species together. In Chapter 1, we consider defining this common element as technical and fishery interactions and manage species in groups, similar to @pauly1979theory or the aggregate management approach suggested by @sugihara1984ecosystems or warned against by @paine1984some. My enquiry differs from these examples in two ways. First, I include fishery interactions as part of the definition of the groupings. Second, I will not be aggregating the biomass of groups and averaging parameters across species, one of the main complaints of @paine1984some; my alternative method is discussed below. 

**How do we perform assemblage-based stock assessments in a multispecies fishery?**

We propose the development of multispecies stock assessment methods that share information between species in the same assemblage by taking biological and fishery interactions into account. Such methods could be invaluable in multispecies fisheries where some stocks have too little data to support conventional stock assessments. Stocks for which conventional assessments are not possible with existing data-streams are termed *data-limited* (@ices2012implementation) and typically correspond to lower value or bycatch species in data-variable multispecies fisheries; we call a multispecies fishery *data-variable* when it harvests stocks that are data-limited and stocks that are not. An example of a *data-variable* fishery is the British Columbia Integrated Groundfish Fishery (British Columbia's groundfish fishery) that operates multiple gear types within 55 stock-area combinations across 9 management units (@PRIFMP2015). High value species in the British Columbia's groundfish fishery (halibut, sablefish) have dedicated surveys and regular stock assessments to set TAC annually, while lower value and bycatch species (yelloweye rockfish) are fished under quota limits set either using out of date assessments or assessments informed by dubious data.



**What models allow the sharing of information between stocks for assemblage-based stock assessments?**

Two main options have been developed for allowing data from multiple stocks to influence the stock assessments of one another (@punt2011among), both as ways to implement the statistical model. First by using prior/penalty distributions on parameters and fitting models one at a time (**refs!!**), or second by fitting models for each stock simultaneously in a single estimator (**refs!!**). The first method amounts to fitting multiple separate single species assessments so we choose not to take that approach. The second method can be considered as a Hierarchical Bayesian Model (HBM) (@gelman2014bayesian), where prior distributions on some parameters are shared among stocks (@punt2011among; @zhou2010modified). This approach has only recently been extended from subpopulations of single stocks (@zhou2010modified) to multiple species (@punt2011among) for the purposes of sharing information in a data-variable multispecies fishery.
 -->
<!-- We investigate the application of a hierarchical bayesian model

For subpopulations of the same species life history parameters can be shared through a hierarchical approach (**refs**), but for different species this is obviously not a scientifically sound approach. **I'm starting to get away from literature based exposition here (and in the prev paragraph), so I'm going to leave this until I read more on the RH approach. Notes for this paragraph are below:**

- Technical and fishery interactions may have effects on:
    + Fishing mortality trends in an area (@punt2011among)
    + selectivity at length (@punt2011among)
    + Catchability (@zhou2010modified)
    + length-at-age (depending on the complex)
    + recruitment deviations due to environmental effects (@punt2011among)
so these are all possible points where information could be shared. ***Really depends on the groupings we're running stock assessments on.***
- ~~Could we consider running different models simultaneously, a surplus production model for a data-poor stock fit in a hierarchy with SCA models for data-rich stocks?~~ -->

<!-- To overcome inherent uncertainty stock assessments require long time series of data which satisfy strong assumptions about how that data is collected. This requirement of rigour in the data collection process makes stock assessment a complex task, even for the most well managed fisheries.

Eco-certification groups such as the Marine Stewardship Council, Sea Choice and Seafood Watch *footnotes for each of these* allow consumers to place direct market pressure on fisheries (@Pelc201556). Fisheries that don't perform regular stock assessments either remain uncertified or receive poor sustainability ratings (@Driscoll2014Groundfish-comp). Seafood products and fisheries are rated based on three main criteria: (i) sustainability of target stock exploitation; (ii) impacts of fishing on the ecosystem, including other species; and (iii) effective fishery management. Criteria (i) and (iii) are dependent on regular assessments of stock abundance in any fishery. Criterion (ii) is dependent on regular stock assessments in a multispecies fishery where several species are caught in the same fishing event.
 -->




<!-- **What stock assemblages exist in a multispecies fishery?**



**How can information be shared between stocks in the same complex for stock assessments?**

The method of information sharing we will investigate is a hierarchical Bayesian state space method of stock assessment (@zhou2010modified). Where we differ from the method used by @zhou2010modified is the detail level in the population dynamics model: they use a surplus production model which is appropriate for their short-lived study system; we intend to test statistical catch at age and catch at length models, which reflects more accurately the nature of our motivating system. Furthermore, a more detailed model may provide more opportunities for a transfer of information between species and extend the efficacy of the approach. For example, catchability and selectivity may be related through fishery dynamics in the complex and steepness may be able to be shared between biological complexes; estimates of length-age distributions might also benefit from such an approach, increasing confidence in catch-at-length stock assessment methods. --> 


<!-- Because the proposed complex-based stock assessment method is a data-limited approach, it is important to perform a risk assessment of the method. To balance the chance of increased bias in stock estimates from lower resolution data, management decisions must necessarily become more conservative as the detail level of data decreases. Conservative management decisions in simulation amount to harvest control rules which set lower TACs for data limited stocks. Conservative harvest control rules in combination with data-limited methods have been tested in previous studies (@Carruthers2014Evaluating; @ices2012implementation) and have been found to increase risk in some cases where the stock is already overfished.

Management strategy evaluation is the standard method for testing stock assessment models (@smith1999implementing) and will be used to test any candidate multispecies models that are developed. MSE works by running closed loop simulations of population dynamics with process error in an operating model. The operating model provides observations with error to a stock assessment process, the results of which inform the decisions of a simulated manager who implements a harvest control rule and in turn affects the next time step of the simulation. Operating models are designed to test the robustness of a stock assessment by varying key simulation parameters and the structure of the dynamics. Stock assessment model fits and estimates of management parameters such as depletion and unfished abundance are then compared to the simulated values as a way of measuring performance.

In a multispecies context the MSE would test our complex based models in the same way as for single species models, as well as by varying the parameters representing interactions and contrasts between stocks in the complex. Scenarios simulated by an operating model include changing effort dynamics, bycatch requirements, gear dynamics and time-area closures. Scenarios can be simulated based on raw data from at sea observer programmes or from parametric distributions. Different scenarios will help test the limits of the stock assessment method, identify tradeoffs between management objectives and quantify the risks associated with using the proposed stock assessment method. -->
 
<!-- 
Chapter 1 draft methods:
- A simulation model of a small (flatfish) complex, three species made up of several stocks (corresponding to management areas) with similar life histories:
    - One high value, well studied stock
        + length, age, selectivity info
        + fishery indep catch, effort, low variance indices
        + good estimates on q
    - one intermediate value stock
        + some age data, good length data
        + fishery indep catch/effort, med var indices
        + estimates on q
    - one low value stock, mostly bycatch
        + no age data
        + some length
        + med var fishery indep indices of abundance
- Two parts: 
    + Operating model simulates
        * Biomass (proc error)
        * survey CPUE (obs error)
        * Catch (as a proportion of biomass) (development - overexploitation - F_MSY)
    + Estimator: HBM schaeffer model (fully Bayesian state space model)
        - Likelihood on obs error
        - priors:
            + proc error var (separate prior for each stock - fixed parameters)
            + proc error devs (separate prior for each stock - fixed parameters)
            + obs error var (separate prior for each stock - fixed parameters)
            + growth rate (separate prior for each stock - fixed parameters)
            + MSY (separate prior for each stock - fixed parameters)
            + lnq ( shared prior, estimated hyper-parameters )
            + hyper-priors on hyper-parameters for lnq prior (fixed parameters)
- What is the bias and precision on key management parameters of each stock in a Hierarchical fully Bayesian Schaeffer model, sharing a prior on catchability?
    + (>=)100 replicates of each scenario
        * varying contrasts in productivity (rate of growth), obs error variance, catchability
        * test a "continuum" of values for the variance on the lnq parameter (a l\'{a} @gelman2014bayesian Ch 5) to get a smooth curve of error rates for different testing parameters
        * Compare posterior median and mode values to "real" simulated values and generate distributions of errors to estimate bias and precision in the method.


- **A simulation test of the model's bias and precision has not yet been performed, so we propose one here**
- Follow the formulation and analysis in @gelman2014bayesian Chapter 5 on Hierarchical models (8 schools) - though we go for 3 stocks
- Bayesian methods (@gelman2014bayesian)
    + works on probabilities as degrees of belief rather than as a limiting frequency of events
    + Incorporates inherent subjectivity through the use of prior distributions - sometimes informative and developed through expert inference, sometimes vague/uninformative
    + Useful for providing distributions of parameter estimates, rather than maximum likelihood estimates often produced by likelihood methods
    + requires integration over the parameter space to provide marginal/conditional densities - in practice for non-linear models this is often numerical.

Guiding question:
**What are the bias and precision in estimates of stock assessment parameters of interest (depletion, unfished biomass, fishing mortality) from an assemblage-based  hierarchical bayesian stock assessment method (compared to single-species approaches)?**






### Operating model

**NOTE: Missing table and equation references: These are set up for Latex compilation, which initial drafts skip for ease of editing.**

The operating model for our simulation test is outlined below. The operating model simulates biomass for each stock according to a Schaeffer population dynamics model (ref) with log-normal process error, from which catch is computed. Survey Catch Per Unit Effort (CPUE) for each stock is then generated from the biomass time series in an observation model where log-normal observation error is applied. Time series for biomass, catch and CPUE are then saved, with catch and CPUE passed to an estimator for model testing.

#### Population Dynamics Model

For $s \in \{1,2,3\}$ and $t \in \{1,...,T\}$, the population of stock $s$ grows according to the Schaefer model
$$
B_{t+1,s} = \left(B_{t,s} + r_s \cdot B_{t,s} \cdot \left(1 - \frac{B_{t,s}}{B_{0,s}}\right) - C_{t,s}\right) \cdot e^{\delta_{t,s}}, \label{eq:bioModel}
$$
where $B_{t,s}$ is the biomass of stock $s$ present at the beginning of year $t$, $r_s$ is the intrinsic rate of growth of stock $s$, $B_{0,s}$ is the unfished biomass of stock $s$ and $C_{t,s}$ is the total caught weight of stock $s$ in year $t$. The catch is computed as $C_{t,s} = \left(1 - e^{-F_{t,s}}\right) \cdot B_{t,s}$, where $F_{t,s}$ is the instantaneous fishing mortality for stock $s$ in year $t$. The factor $e^{\delta_{t,s}}$ is the log-normally distributed process error deviation from the mean biomass produced by the Schaefer model.


#### Observation Model

Survey CPUE is simulated as
$$
I_{t,s} = q_s \cdot B_{t,s} \cdot e^{\epsilon_{t,s}}, \label{eq:obsModOper}
$$
where $q_s$ is the catchability coefficient for stock $s$, $B_{t,s}$ is as above and the factor $e^{\epsilon_{t,s}}$ is the log-normally distributed observation error deviation from true CPUE.

### Estimator

We pass the catch and CPUE data generated by the operating model to an estimator consisting of a population dynamics model, an observation model and a statistical model. The estimator numerically integrates the statistical model over the parameter space to produce a posterior density function, marginal densities of any leading parameters and conditional densities of any derived variables produced by the estimator, listed in Table \ref{tab:modelPars} and grouped together as the vector $\Theta$.

#### Population dynamics

The population dynamics model for the estimator is implemented identically to Eq \ref{eq:bioModel}, where now $\bar{B}_{t,s}$ is the estimated biomass at time $t$ for stock $s$.

#### Observation Model

The expected CPUE is estimated as
$$
\bar{I_{t,s}} = \bar{q}_s \cdot \bar{B}_{t,s},
$$
to be passed to the statistical model for calculation of the observation error likelihood.

#### Statistical model

The statistical model is a hierarchical Bayesian model incorporating a likelihood on the observation error and priors on leading parameters $\theta \in \Theta$ and process error deviations. The statistical model written as a the formula for the posterior density $P$ for parameters $\Theta$ is given by Bayes' Theorem (*REFS*) as
$$
P \left( \Theta ~|~ \vec{C}, \vec{I} ~ \right) 
    = \frac { \mathcal{L} \left( \Theta ~|~ \vec{C}, \vec{I} ~ \right)
              \prod_{\theta \in \Theta} p_{\theta} ( \theta ) }
            { \int_{\Theta} \mathcal{L} \left( \Theta ~|~ \vec{C}, \vec{I} ~\right) \prod_{\theta \in \Theta} p_{\theta} ( \theta ) }. 
        \label{eq:postFull}
$$
Here, the priors $p_\theta(\theta)$ on all leading parameters except for catchability are separated by stock and have fixed hyper-parameters, each taking the form of a probability density function. The prior density on catchability is applied to the logarithm $\log q_s$, and has estimated hyperparameters $m_{\log q}$ and $s^2_{\log q}$ that are included in $\Theta$. Finally, the hyperparameters of $p_q$ have their own priors with fixed parameters. All likelihoods and prior densities are completeley specified in Table \ref{tab:modTable}.

### Parameter Estimation and Comparison

The estimator, specified in Table \ref{tab:modelSpec} is coded in ``ADMB`` *(refs)* to integrate marginal and conditional posterior densities for the leading parameters and derived variables listed in Table \ref{tab:modelPars}. Numerical integration is performed by the Metropolis-Hastings Markov-Chain Monte-Carlo (MCMC) algorithm in ``ADMB``. For 100 simulation replicates, posterior medians and modes for each parameter are compared to "real" values from the operating model. Each replicate contributes error values to a distribution of errors for each parameter, from which bias and precision are estimated.

Elaborations:
- Gelman-Rubin chain diagnostics for convergence to stationary distribution
- combinatorial design of scenarios
 -->