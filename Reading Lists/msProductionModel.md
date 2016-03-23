# Testing a fully bayesian state space multispecies production model

## Idea:
1. Construct and compare 2 fully Bayesian state space models:
    i. Single species bayesian model, priors on MSY, F_{MSY} ...
        + Marginal posteriors of MSY, F_{MSY}
        + Conditional posteriors on F_N/F_{MSY}, B_{N+1}, D_{N+1} = B_{N+1}/K, logq, sigma2, tau2...
    ii. Multi-species HBM on s species, same priors on lnMSY, lnF_{MSY} ..., additional shared prior on logq with mu.logq (and sig.logq.2?) estimated.
        + Marginal posteriors of MSY(1,s), F_{MSY}(1,s), logq(1,s), mu.logq, sig.logq
        + Conditional posteriors on F_N/F_{MSY}(1,s), B_{N+1}(1,s), D_{N+1} = B_{N+1}/K(1,s), sigma.eta.2(1,s),...
2. Test the models over >= 100 different simulations, estimating bias and precision of the approaches by computing MRE (MARE) of parameters of interest from the "true" simulated values
3. Apply the methodology for several scenarios of population parameters, including (get more ideas from Punt 2003):
    i. Everything the same among stocks except carrying capacity
    ii. Differing q values
    iii. contrasting observation error variances
    iv. contrasting productivity parameters
    v. Differing fishing mortality scenarios
        - Ft "peaking" from 0.5F_{MSY} -> 2 * F_{MSY} -> F_{MSY}
        - Ct = qEtBt, where effort is set at E_{MSY} for one of the stocks
        - Anything else Sean recommends?
4. Sean mentioned observation error on catches. Should we use the same observation error that we used for IoAs, and add this to the likelihood? Needed: Effort.

## Needs:
1. Operating Model:
    - Inputs:
        + MSY
        + F_{MSY}
        + q
        + sigma2 (obs err)
        + tau2 (proc err)
        + F ( as a multiple of F_{MSY} - vector of multipliers )
        + E? (for obs error on Ct, and for Ct = qEtBt method - multispecies fishery, though this requires a fishery dependent q (time varying for each species) - only really important for closed loop simulation )
    - Method:
        + Initialise model at equilibrium (2*MSY)
        + generate biomass Bt conditioned on catch Ct = (1 - exp(Ft))Bt using process error
        + Generate It = q*Bt*exp(eta_t)
2. Estimator:
    - Estimated Parameters:
        + lnMSY
        + lnF_{MSY}
        + delta - proc errors (RE vector?)
        + sigma2 (conditional? maybe not)
        + tau2 (conditional? maybe not)
        + MS
            + lnq
            + mu.lnq - HP
            + ln.s2.lnq - HP
    - Hyperparameters (fixed)
        + mu.lnMSY, sd.lnMSY
        + mu.lnF_MSY, sd.lnF_MSY
        + mu.sigma, sd.sigma
        + mu.tau, sd.tau
    - Biomass dynamics with proc error
    - Posterior function
        + Likelihood for IoA obs err (lnIt - ln(q*Bt))
        + Likelihood for proc err
        + priors
            * lnMSY
            * lnF_{MSY}
            * sigma2
            * tau2
            * lnq (MS - shared)
    - Posterior distributions on (for model performance)
        + MSY
        + F_MSY
        + F_{T-1}/F_MSY = FnT_bar
        + B_{T} = Bt_bar(nT)
        + B_T / B_0 = dep_bar
3. Control script: For each replicate (seed value)
    - Call operating model to produce survey CPUE, catch, "true" biomass
        + Get parameters from the control file
    - Output It, katch and nT to .dat file
    - Fit each model (check mseR process to ensure convergence)
        + Run MCMC to get posteriors for each parameter of interest
    - Compare posterior median, mode to true value, get MRE for bias estimate



### Literature:
1. Punt, 2003: Extending production models to include process error in the population dynamics. CJFAS
2. McAllister et al, 2001: Using demographic methods to construct Bayesian priors for the intrinsic rate of increase in the Schaefer model and implications for stock rebuilding, CJFAS
3. McAllister and Kirkwood, 1998: Bayesian stock assessment: a review and example application using the logistic model, ICES
4. Zhou et al, 2010
5. Punt et al, 2011


### Notes
- Punt, 2003:
    + Compared 4 estimators for a Schaefer surplus production (biomass dynamics) model incorporating observation and process error
        * Obs error
        * Total error
        * NISS (general state space model)
        * Kalman Filter
    + Tested parameters r, K, MSY, F_N/F_{MSY}, B_{N+1}, D_{N+1} = B_{N+1}/K using 100 simulation replicates for each, looking at distributions of MARE (mean absolute relative errors)
    + Found that NISS is the best performing - not a Bayesian method, however could easily be extended to one.
- McAllister, 2001:
    + Compares a Bayesian method (prior on r) to a non-Bayesian method for stock assessments on Atlantic sharks.
    + 
