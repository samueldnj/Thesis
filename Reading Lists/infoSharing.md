## MS stock assessment information sharing reading List

1. Klaer, N. 2010. Preliminary examination of recruitment correlations, SESSF. In The Influence of Environmental Factors on Recruitment and Availability of Fish Stocks in South-east Australia, pp. 130–134. Ed. by I. Knuckey, J. Day, M. Zhu, M. Koopman, N. Klaer, K. Ridgeway, and G. Tuck. FRDC Report, 2006/006.
2. Myers, R. A., Mertz, G., and Barrowman, N. J. 1995. Spatial scale of variability in cod recruitment in the North Atlantic. Canadian Journal of Aquatic and Fishery Sciences, 52: 1849–1862.
3. Francis, R. I. C. C., Cordue, P. L., and Haist, V. 2002. Review of the 2001 hoki stock assessment. New Zealand Fisheries Assessment Report, 2002/42.
4. Pribac, F., Punt, A. E., Walker, T. I., and Taylor, B. L. 2005. Using length, age and tagging data in a stock assessment of a length selec- tive fishery for gummy shark (Mustelus antarcticus). Journal of Northwest Atlantic Fisheries Science, 35: 267–290.
5. Punt, A. E., Pribac, F., Walker, T. I., Taylor, B. L., and Prince, J. D. 2000. Stock assessment of school shark Galeorhinus galeus based on a spatially-explicit population dynamics model. Marine and Freshwater Research, 51: 205–220.
6. Pikitch, E. K. 1987. Use of a mixed-species yield-per-recruit model to explore the consequences of various management policies for the Oregon flatfish fishery. Canadian Journal of Fisheries and Aquatic Sciences, 44 (Suppl. 2): 349–359.
7. Murawski, S. A. 1996. Factors influencing by-catch and discard rates: analyses from multispecies/multifishery sea sampling. Journal of Northwest Atlantic Fisheries Science, 19: 31–39.
8. Smith, A. D. M., and Smith, D. C. 2001. A complex quota-managed fishery: science and management in Australia’s south-east fishery. Introduction and Overview. Marine and Freshwater Research, 52: 353 – 359.
9. Tilzey, R. D. J. (Ed.) 1994. The South East Fishery: a Scientific Review with Particular Reference to Quota Management. Bureau of Rural Sciences, Canberra. 360 pp.
10. Smith, D., Punt, A., Dowling, N., Smith, A., Tuck, G., and Knuckey, I. 2009. Reconciling approaches to the assessment and management of data-poor species and fisheries with Australia’s harvest strategy policy. Marine and Coastal Fisheries: Dynamics, Management, and Ecosystem Science, 1: 244–254.


## Notes:
- The hierarchical approach we're proposing very much akin to the Punt et al "Robin Hood" approach. 
    - What's the novelty here?
        * They specifically target combinations of data-rich and data-poor stocks with spatial/fishery interactions - they don't seem to argue beyond fishery interactions. So far, I'm including non-trophic biological interactions.
        * I want to look at the morphometric differences between their example species. Length at maturity is very different - there are three main clusters.
        * The information they share is recruitment deviations, selectivity at length and exploitation rate trends. Will selectivity at length be shared despite different fish cross sections, or is the variance enough to capture this? We plan on including a linked catchability for complexes of similar fish - adding biological interactions (interspecific competition, substitutability)
        * We are testing bias and precision for multiple data-variability scenarios - a simulation test will be performed to get bias and precision.
        * Should we test having different models for each stock, sharing some parameters? Is this different to what they are doing?
    - What can we borrow (for simulation and estimation)
        + Their penalties on exploitation give a good idea for simulating linked fishing mortality. Try implementing this.
        + We can steal a little of their experimental design for the qSharing POC.
            * Eventually: deviations on r, F, q etc.
            * Links for deviations on R, links on trends for F (since it's the same effort that's driving the link)

