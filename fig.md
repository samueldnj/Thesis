---  
geometry: letterpaper
---

# Figures and Tables

\begin{figure}[htbp]
\centering
\includegraphics{figures/mscMSE.pdf}
\caption{A simplified fishery managment system divided into 5 discrete units. (1) Applied Population Ecology, (2) Fisheries Data Science, (3) Stock Assessment Modeling, (4) Risk Assessment, (5) Management Strategy Evaluation.}\label{fig:fishMgmt}
\end{figure}

\newpage

\begin{figure}[htbp]
\centering
\includegraphics{figures/WeakStrongDist.pdf}
\caption{A conceptual model of the distribution of stock productivities in Pacific salmon. Harvesting according to the average productivity level leads to overfishing of the weakest stocks.}\label{fig:ppHCR}
\end{figure}

\newpage

\begin{figure}[htbp]
\centering
\includegraphics{figures/ppHCR.pdf}
\caption{A harvest control rule showing how the presence of pinch-point species affects the harvesting of directed species. The solid black line is the normal harvest control rule for a high productivity directed species, set by stock assessment, while the dashed black line shows the effective harvest control rule in the presence of technical interactions with pinch-point species. For a given stock biomass $B$ the directed species quota is $Q$, but pinch-point species reduce that to an effective or utilised quota of $Q_P$. The reduction in resources caused by the pinch-point species is then $Q - Q_P$.}\label{fig:ppHCR}
\end{figure}


\newpage

\begin{figure}[htbp]
\centering
\includegraphics{figures/bocaccio.pdf}
\caption{Quota utilisation of Bocaccio rockfish in the BC integrated groundfish fishery. The black line represents the average annual total allowable catch (taken from the Pacific Region Integrated Fishery Management Plan) and the coloured polygons represent the biomass of removals in each management area.}\label{fig:bocaccio}
\end{figure}

\newpage

\begin{figure}[htbp]
\centering
\includegraphics{figures/lingcod.pdf}
\caption{Quota utilisation of lingcod in the BC integrated groundfish fishery. The black line represents the average annual total allowable catch (taken from the Pacific Region Integrated Fishery Management Plan) and the coloured polygons represent the biomass of removals in each management area.}\label{fig:lingcod}
\end{figure}


\newpage

\begin{figure}[htbp]
\centering
\includegraphics{figures/msFishery.pdf}
\caption{Three models of fishery management: (a) status quo,
single species approach; (b) hierarchical multi-species model; (c) total aggregation of species}\label{fig:3Models}
\end{figure}

\newpage

\begin{table}[htbp]
\begin{center}
\caption{Variable definitions for a simulation of a multispecies fishery with no substock structure, used in Chapter 1. The population dynamics are driven by a simple Biomass Dynamics model (Hilborn and Walters, 1992, Ch, 8). Species catch is dependent on fishing mortality for each species, which is an input to the model. The current specification can be considered to be "coastwide" in the sense that it aggregates all discrete management units of each species into a single unit.}\label{tab:OMspec}
\begin{tabular}{c|l}
\textit{Variable} & \textit{Description}  \\
\hline
& \textbf{ Index Variables} \\
\hline
$S$ & Total number of species \\
$F$ & Total number of fleets \\
$T$ & Total number of years \\
$s$ & Species index \\
$f$ & Fleet index \\
$t$ & Time index \\
\hline
& \textbf{ Biological Model} \\
\hline
$B_{s,t}$ & Biomass of species $s$ at time $t$ \\
$B_{s,0}$ & Unfished biomass of species $s$ \\
$r_{s}$ & Average intrinsic rate of growth for speces $s$ \\
\hline
& \textbf{ Observation Model} \\
\hline
$q_{s}$ & Survey catchability of species $s$ at time $t$ \\
$I_{s,t}$ & Fishery independent CPUE of species $s$ at time $t$ \\
\hline
& \textbf{ Output (catch) } \\
\hline
$F_{s,t}$ & Fishing mortality of species $s$ at time $t$ \\
$C_{s,t}$ & Total catch of species $s$ at time $t$ \\
\hline
& \textbf{ Stochastic Model} \\
$\sigma_s^2$ & Process error variance for species $s$ \\
$\epsilon_{s,t}$ & Process error for species $s$ at time $t$, $\left( \epsilon_{s,t} \sim N (0, \sigma_s^2) \right)$ \\
$\sigma^2$ & Assemblage level process error variance \\
$\epsilon_{t}$ & Assemblage level process error at time $t$, $\left( \epsilon_{t} \sim N (0, \sigma^2) \right)$ \\
$\tau_s^2$ & Observation error variance for species $s$ \\
$\delta_{s,t}$ & Observation error for species $s$ at time $t$ $\left(\epsilon_{s,t} \sim N (0, \tau_s^2) \right)$ \\
\hline
\end{tabular}
\end{center}
\end{table}

\newpage

\begin{table}[htbp]
\begin{center}
\caption{The simulation model to produce data for the estimation procedure in Chapter 1. The simulator generates time series of catch, biomass and CPUE for species $s$ with input parameters $\Theta_s$. All variables are defined in Table \ref{tab:OMspec}.}\label{tab:Ch1sim}
\begin{tabular}{cl}
\hline
& \textbf{Simulation Parameters} \\
(T2.1) & $\Theta_s = \left( B_{s,0}, r_s, q_s, 
                          \{F_{s,t}\}_{t = 1}^{T},
                          \sigma_s^2, \tau_s^2 \right)$ \\
& \\
& \textbf{ Initial States ($t = 1$) } \\
(T2.2) & $B_{s,1} = B_{s,0} \cdot e^{\epsilon_{s,t} - \sigma_s^2/2}$ \\
& \\
& \textbf{ Catch ($1 \leq t \leq T$) } \\
(T2.3) & $C_{s,t} = \left(1 - e^{F_{s,t}}\right)\cdot B_{s,t}$ \\
& \\
& \textbf{ State Dynamics ($2 \leq t \leq T$)} \\
(T2.4) & $B_{s,t} = \left ( B_{s,t-1} + r_sB_{s,t-1}\left( 1 - \frac{B_{s,t-1}}{B_{s,0}} \right) - C_{s,{t-1} } \right) \cdot e^{\epsilon_{s,t} - \sigma_s^2/2}$ \\
& \\
& \textbf{ Observations ($1 \leq t \leq T$)} \\
(T2.5) & $I_{s,t} = q_s \cdot B_{s,t} \cdot e^{\delta_{s,t} - \tau_s^2/2}$ \\
\hline
\end{tabular}
\end{center}
\end{table}

\newpage

\begin{table}[htbp]
\caption{A truncated version of the hierarchical stock assessment model used as the estimation procedure Chapter 1. The hierarchical model in this version shares a prior distribution on process error deviations $\epsilon_{s,t}$, representing correlations in environmental variation due to species with shared habitat. All variables used here are defined in Table \ref{tab:OMspec} except $\sigma^2$, which is the assemblage level variance for the shared prior on process error terms.}\label{tab:Ch2est}
\begin{center}
\begin{tabular}{cl}
\hline
& \textbf{Assessment Parameters} \\
(T3.1) & $\Theta_s = \left\{ B_{s,0}, r_s, q_s, 
                            \tau_s^2, m_{B,s}, v_{B,s}^2,
                            \left\{ I_{s,t} \right\}_{t = 1}^T,
                            \left\{ C_{s,t} \right\}_{t = 1}^T \right\}$ \\
(T3.2) & $\Theta = \left\{ \left\{\Theta_s) \right\}_{s = 1}^S, \sigma^2, m_q, v_q^2 \right\}$ \\
& \\
& \textbf{ Population Dynamics Model } \\
(T3.3) & $B_{s,1} = B_{s,0} \cdot e^{\epsilon_t - \sigma^2/2}$ \\
(T3.4) & $B_{s,t} = \left ( B_{s,t-1} + r_sB_{s,t-1}\left( 1 - \frac{B_{s,t-1}}{B_{s,0}} \right) - C_{s,{t-1} } \right) \cdot e^{\epsilon_{t} - \sigma^2/2}$, $2 \leq t \leq T$, \\
& \\
& \textbf{ Observational Model ($1 \leq t \leq T$)} \\
(T3.5) & $\bar{I}_{s,t} = q_s \cdot B_{s,t} \cdot e^{\delta_{s,t} - \tau_s^2/2}$ \\
& \\
& \textbf{ Statistical Model } \\
& \textit{ Data Likelihood } \\
(T3.6) &  $\mathcal{L}_s \left( \left\{ I_{s,t} \right\}_{t = 1}^T ~|~
                                \Theta_s \right) =
                         \left(\frac{1}{\sqrt{2\pi \tau_s^2}}\right)^T \cdot
                         \prod_{t = 1}^T e^{ - \frac{\left(\bar{I}_{s,t}/I_{s,t} \right)^2 }{2\tau_s^2} }$ \\
& \textit{ Shared Assemblage Priors } \\
(T3.7) &  $p ( \epsilon_{s,t} ~|~ \sigma^2 ) = 
                        \left(\frac{1}{\sqrt{2\pi \sigma^2}}\right)^ST \cdot
                         \prod_{s = 1}^S\prod_{t = 1}^T e^ { - \frac{\epsilon_{s,t}^2 }{2\sigma^2} }$\\
(T3.8) & $p ( \log q_s ~|~ m_q, v_q^2 ) = \frac{1}{\sqrt{2\pi v_q^2}} \cdot e^{- \frac{(\log q - m_q)^2}{2v_q^2}}$ \\
& \textit{ Species Priors } \\
(T3.9) & $p ( \log B_{0,s} ~|~ m_{B,s}, v_{B,s}^2 ) = \frac{1}{\sqrt{2\pi v_{B,s}^2}} \cdot e^{- \frac{(\log B_{0,s} - m_{B,s})^2}{2v_{B,s}^2}} $ \\
& \textit{ Posterior Density } \\
(T3.9) &  $\mathcal{P} \left( \Theta ~|~ 
                              \left\{ I_{s,t} \right\}_{(s,t) = (1,1)}^{(S,T)}
                       \right) = 
                             \prod_{s = 1}^S \left[
                                \mathcal{L}_s\left( \left\{ I_{s,t} \right\}_{t = 1}^T ~|~ \Theta_s \right) \cdot p ( \epsilon_{s,t} ~|~ \sigma^2 ) \cdot p ( \log q ~|~ m_q, v_q^2)
                            \cdot  p ( \log B_{0,s} ~|~ m_{B,s}, v_{B,s}^2 ) 
                            \right]  $ \\
\hline
\end{tabular}
\end{center}
\end{table}

\newpage

\begin{figure}[htbp]
\centering
\includegraphics{figures/HBMClarkCh1.pdf}
\caption{A conceptual diagram of the hierarchical model used for estimation in Chapter 1.  Part (a) shows the individual species process and observation models, with species specific parameters and hyperparameters. Part (b) compresses the time series into bold italicised variables, and shows the hierarchically arranged multispecies assemblage with shared multispecies parameters and hyperparameters.}\label{fig:HBMCh1}
\end{figure}


\newpage

\begin{table}[htbp]
\begin{center}
\caption{Variable definitions for a simulation of multispecies fishery used in Chapter 2, where each species has multiple stocks. The population dynamics are driven by a simple Biomass Dynamics model (Hilborn and Walters, 1992, Ch, 8), with immigration and emigration between stocks of a species summarised by a migration rate $\phi_{s,i,j}$. Catch is driven by fishing mortality for individual stocks, which is an input to the model.}\label{tab:OMspec}
\begin{tabular}{c|c}
\textit{Variable} & \textit{Description}  \\
\hline
& \textbf{ Index Variables} \\
\hline
$s$ & Species index \\
$j$ & Stock index \\
$f$ & Fleet index \\
$t$ & Time index \\
$S$ & Total number of species \\
$J_s$ & Total number of stocks of species s \\
$F$ & Total number of fleets \\
$T$ & Total number of years \\
\hline
& \textbf{ Biological Model} \\
\hline
$B_{s,j,t}$ & Biomass of stock $j$ of species $s$ at time $t$ \\
$B_{s,j,0}$ & Unfished biomass of stock $j$ of species $s$ \\
$r_{s,j}$ & Intrinsic rate of growth for stock $j$ of speces $s$ \\
$\phi_{s,j,i}$ &  Net migration rate between stocks $j$ and $i$ of species $s$ \\
\hline
& \textbf{ Observation Model} \\
\hline
$q_{s,j}$ & Survey catchability of stock $j$ of species $s$ at time $t$ \\
$I_{s,j,t}$ & Fishery independent CPUE of stock $j$ of species $s$ at time $t$ \\
\hline
& \textbf{ Catch} \\
\hline
$F_{s,j,t}$ & Fishing mortality of stock $j$ of species $s$ at time $t$ \\
$C_{s,j,t}$ & Total catch of stock $j$ of species $S$ at time $t$ \\
\hline
& \textbf{ Stochastic Model } \\
$\sigma_{s,j}^2$ & Process error variance for stock $j$ of species $s$ \\
$\epsilon_{s,j,t}$ & Process error deviation for stock $j$ of species $s$ at time $t$, $\left( \epsilon_{s,j,t} \sim N (0, \sigma_{s,j}^2) \right)$ \\
$\sigma_{s}^2$ & Process error variance for species $s$ \\
$\epsilon_{s,t}$ & Process error deviation for species $s$ at time $t$, $\left( \epsilon_{s,t} \sim N (0, \sigma_s^2) \right)$ \\
$\sigma^2$ & Assemblage level process error variance  \\
$\epsilon_{t}$ & Assemblage level process error deviations at time $t$, $\left( \epsilon_{t} \sim N (0, \sigma^2) \right)$ \\
$\tau_s^2$ & Observation error variance for species $s$ \\
$\delta_{s,j,t}$ & Observation error for stock $j$ of species $s$ at time $t$ $\left(\epsilon_{s,j,t} \sim N (0, \tau_s^2) \right)$ \\
\hline
\end{tabular}
\end{center}
\end{table}

\newpage

\begin{table}[htbp]
\begin{center}
\caption{The simulation model to produce data for the estimation procedure in Chapter 2. The model generates time series of catch, biomass and CPUE for stock $j$ of species $s$ with input parameters $\Theta_s$. All variables are defined in Table \ref{tab:OMspec}.}\label{tab:Ch2sim}
\begin{tabular}{cl}
\hline
& \textbf{Parameters} \\
(T5.1) & $\Theta_{s,j} = \left( B_{s,j,0}, r_{s,j}, q_{s,j}, 
                          \{ \phi_{s,j,i} \}_{i \neq j},
                          \{F_{s,j,t}\}_{t = 1}^{T},
                          \sigma_{s,j}^2, \tau_{s,j}^2, T \right)$ \\
& \\
& \textbf{ Initial States ($t = 1$) } \\
(T5.2) & $B_{s,j,1} = B_{s,j,0} \cdot e^{\epsilon_{s,j,t} - \sigma_{s,j}^2/2}$ \\
& \\
& \textbf{ Catch ($1 \leq t \leq T$) } \\
(T5.3) & $C_{s,j,t} = \left(1 - e^{F_{s,j,t}}\right)\cdot B_{s,j,t}$ \\
& \\
& \textbf{ State Dynamics ($2 \leq t \leq T$)} \\
(T5.4) & $B_{s,j,t} = \left ( B_{s,j,t-1} + r_{s,j}B_{s,j,t-1}\left( 1 - \frac{B_{s,j,t-1}}{B_{s,0}} \right) + \sum_{i \neq j} \phi_{s,j,i} \cdot B_{s,i,t-1} - C_{s,j,{t-1} } \right) \cdot e^{\epsilon_{s,j,t} - \sigma_{s,j}^2/2}$ \\
& \\
& \textbf{ Observations ($1 \leq t \leq T$)} \\
(T5.5) & $I_{s,j,t} = q_{s,j} \cdot B_{s,j,t} \cdot e^{\delta_{s,j,t} - \tau_{s,j}^2/2}$ \\
\hline
\end{tabular}
\end{center}

\end{table}

\newpage

\begin{table}[htbp]
\begin{center}
\caption{A truncated version of the hierarchical stock assessment model used as the estimation procedure Chapter 2. The hierarchical model in this version shares a prior distribution on process error deviations $\epsilon_{s,t}$, representing correlations in environmental variation due to species with shared habitat. All variables used here are defined in Table \ref{tab:OMspec}.}\label{tab:Ch2est}
\begin{tabular}{cl}
\hline
& \textbf{Assessment Input Parameters} \\
(T6.1) & $\Theta_{s,j} = \left( B_{s,j,0}, r_{s,j}, q_{s,j}, 
                            \{\phi_{s,j,i}\}_{ i \neq j}, \tau_{s,j}^2, \
                            \left\{ I_{s,j,t} \right\}_{t = 1}^T,
                            \left\{ C_{s,j,t} \right\}_{t = 1}^T \right)$ \\
(T6.2) & $\Theta_s = \left( \left\{\Theta_{s,j}) \right\}_{j = 1}^{J_s}, \sigma_s^2 \right)$ \\
& \\
& \textbf{ Population Dynamics Model } \\
(T6.3) & $B_{s,j,1} = B_{s,j,0}$ \\
(T6.4) & $B_{s,j,t} = \left ( B_{s,j,t-1} + r_{s,j}B_{s,j,t-1}\left( 1 - \frac{B_{s,j,t-1}}{B_{s,j,0}} \right) + \sum_{i \neq j} \phi_{s,j,i} \cdot B_{s,i,t-1} - C_{s,j,{t-1} } \right) \cdot e^{\epsilon_{s,t}}$, $2 \leq t \leq T$, \\
& \\
& \textbf{ Observational Model ($1 \leq t \leq T$)} \\
(T6.5) & $\bar{I}_{s,j,t} = q_{s,j} \cdot B_{s,j,t} \cdot e^{\delta_{s,j,t}}$ \\
& \\
& \textbf{ Statistical Model } \\
& \textit{ Data Likelihood } \\
(T6.6) &  $\mathcal{L}_{s,j} \left( \left\{ I_{s,t} \right\}_{t = 1}^T ~|~
                                \Theta_s \right) =
                         \left(\frac{1}{\sqrt{2\pi \tau_s^2}}\right)^T \cdot
                         \prod_{t = 1}^T e^{ - \frac{\left(\bar{I}_{s,t}/I_{s,t} \right)^2 }{2\tau_s^2} }$ \\
& \textit{ Stock Specific Priors } \\

& \textit{ Shared Species Priors } \\
(T6.7) &  $p ( \epsilon_{s,t} ~|~ \sigma^2 ) = 
                        \left(\frac{1}{\sqrt{2\pi \sigma^2}}\right)^ST \cdot
                         \prod_{s = 1}^S\prod_{t = 1}^T e^ { - \frac{\epsilon_{s,t}^2 }{2\sigma^2} }$\\
& \textit{ Shared Assemblage Priors } \\
& \textit{ Posterior Density } \\
(T6.8) &  $\mathcal{P} \left( \Theta ~|~ 
                              \left\{ I_{s,t} \right\}_{(s,t) = (1,1)}^{(S,T)}
                       \right) = 
                            \left[ \prod_{s = 1}^S 
                                \mathcal{L}_s\left( \left\{ I_{s,t} \right\}_{t = 1}^T ~|~ \Theta_s \right) 
                            \right] \cdot p ( \epsilon_{s,t} ~|~ \sigma^2 )$ \\
\hline
\end{tabular}
\end{center}
\end{table}

\newpage

\begin{figure}[htbp]
\centering
\includegraphics[scale = 0.4]{figures/HBMClarkCh2.pdf}
\caption{A conceptual diagram of the hierarchical model used for estimation in Chapter 2. Part (b) shows the hierarchically arranged species meta-population with species parameters and hyperparameters, where the time series in part (a) are compressed into bold, italicised symbols. Part (c) shows the hierarchically arranged multispecies assemblage, with shared multispecies parameters and hyperparameters.}\label{fig:HBMCh2}
\end{figure}

\newpage

\begin{table}[htbp]
\begin{center}
\caption{Variable definitions for the operating model simulation catch, effort, population dynamics and scientific observations in Chapter 3. The population dynamics are driven by a simple Biomass Dynamics model (Hilborn and Walters, 1992, Ch, 8), with immigration and emigration between stocks of a species summarised by a migration rate $\phi_{s,i,j}$. Catch is based on effort dynamics simulating targeting behaviour of harvesters.}\label{tab:OMspec}
\begin{tabular}{c|c}
\textit{Variable} & \textit{Description}  \\
\hline
& \textbf{ Index Variables} \\
\hline
$s$ & Species index \\
$j$ & Stock index \\
$f$ & Fleet index \\
$t$ & Time index \\
$S$ & Total number of species \\
$J_s$ & Total number of stocks of species $s$ \\
$F$ & Total number of fleets \\
$T$ & Total number of years \\
\hline
& \textbf{ Biological Model} \\
\hline
$B_{s,j,t}$ & Biomass of stock $j$ of species $s$ at time $t$ \\
$B_{s,j,0}$ & Unfished biomass of stock $j$ of species $s$ \\
$r_{s,j}$ & Intrinsic rate of growth for stock $j$ of speces $s$ \\
$\phi_{s,j,i}$ &  Net migration rate between stocks $j$ and $i$ of species $s$ \\
\hline
& \textbf{ Observation Model} \\
\hline
$q_{s,j}$ & Survey catchability of stock $j$ of species $s$ at time $t$ \\
$I_{s,j,t}$ & Fishery independent CPUE of stock $j$ of species $s$ at time $t$ \\
\hline
& \textbf{ Catch} \\
\hline
$E_{s,j,t,f}$ & Fishing effort expended by fleet $f$ to catch stock $j$ of species $s$ at time $t$ \\
$C_{s,j,t,f}$ & Total catch of stock $j$ of species $S$ at time $t$ by fleet $f$ \\
$C_{s,j,t}$ & Total catch of stock $j$ of species $S$ at time $t$ \\
$F_{s,j,t}$ & Fishing mortality of stock $j$ of species $s$ at time $t$ \\
\hline
& \textbf{ Stochastic Model } \\
$\sigma_{s,j}^2$ & Process error variance for stock $j$ of species $s$ \\
$\epsilon_{s,j,t}$ & Process error deviation for stock $j$ of species $s$ at time $t$, $\left( \epsilon_{s,j,t} \sim N (0, \sigma_{s,j}^2) \right)$ \\
$\sigma_{s}^2$ & Process error variance for species $s$ \\
$\epsilon_{s,t}$ & Process error deviation for species $s$ at time $t$, $\left( \epsilon_{s,t} \sim N (0, \sigma_s^2) \right)$ \\
$\sigma^2$ & Assemblage level process error variance  \\
$\epsilon_{t}$ & Assemblage level process error deviations at time $t$, $\left( \epsilon_{t} \sim N (0, \sigma^2) \right)$ \\
$\tau_s^2$ & Observation error variance for species $s$ \\
$\delta_{s,j,t}$ & Observation error for stock $j$ of species $s$ at time $t$ $\left(\epsilon_{s,j,t} \sim N (0, \tau_s^2) \right)$ \\
\hline
\end{tabular}
\end{center}
\end{table}

\newpage

<!-- \begin{table}[htbp]
\begin{center}
\caption{The simulation model to produce data for the operating model in Chapter 3. The model produces time series of catch, biomass and CPUE for stock $j$ of species $s$ with input parameters $\Theta_s$. All variables are defined in Table \ref{tab:OMspec}.}\label{tab:Ch2sim}
\begin{tabular}{cl}
\hline
& \textbf{Parameters} \\
(T8.1) & $\Theta_{s,j} = \left( B_{s,j,0}, r_{s,j}, q_{s,j}, 
                          \{ \phi_{s,j,i} \}_{i \neq j},
                          \{C_{s,j,t}\}_{t = 1}^{T},
                          \sigma_{s,j}^2, \tau_{s,j}^2, T \right)$ \\
& \\
& \textbf{ Initial States ($t = 1$) } \\
(T8.2) & $B_{s,j,1} = B_{s,j,0} \cdot e ^$ \\
& \\
& \textbf{ Catch ($1 \leq t \leq T$) } \\
(T8.3) & $C_{s,j,t} = \left(1 - e^{F_{s,j,t}}\right)\cdot B_{s,j,t}$ \\
& \\
& \textbf{ State Dynamics ($2 \leq t \leq T$)} \\
(T8.4) & $B_{s,j,t} = \left ( B_{s,j,t-1} + r_{s,j}B_{s,j,t-1}\left( 1 - \frac{B_{s,j,t-1}}{B_{s,0}} \right) + \sum_{i \neq j} \phi_{s,j,i} \cdot B_{s,i,t-1} - C_{s,j,{t-1} } \right) \cdot e^{\epsilon_{s,j,t} - \sigma_{s,j}^2/2}$ \\
& \\
& \textbf{ Observations ($1 \leq t \leq T$)} \\
(T8.5) & $I_{s,j,t} = q_{s,j} \cdot B_{s,j,t} \cdot e^{\delta_{s,j,t} - \tau_{s,j}^2/2}$ \\
\hline
\end{tabular}
\end{center}
\end{table}

\newpage

\begin{table}[htbp]
\begin{center}
\caption{A truncated version of the hierarchical stock assessment model used as the estimation procedure in Chapter 3. The hierarchical model in this version shares a prior distribution on process error deviations $\epsilon_{s,t}$, representing correlations in environmental variation due to species with shared habitat. All variables used here are defined in Table \ref{tab:OMspec}.}\label{tab:Ch2est}
\begin{tabular}{cl}
\hline
& \textbf{Assessment Input Parameters} \\
(T6.1) & $\Theta_{s,j} = \left( B_{s,j,0}, r_{s,j}, q_{s,j}, 
                            \{\phi_{s,j,i}\}_{ i \neq j}, \tau_{s,j}^2, \
                            \left\{ I_{s,j,t} \right\}_{t = 1}^T,
                            \left\{ C_{s,j,t} \right\}_{t = 1}^T \right)$ \\
(T6.2) & $\Theta_s = \left( \left\{\Theta_{s,j}) \right\}_{j = 1}^{J_s}, \sigma_s^2 \right)$ \\
& \\
& \textbf{ Population Dynamics Model } \\
(T6.3) & $B_{s,j,1} = B_{s,j,0}$ \\
(T6.4) & $B_{s,j,t} = \left ( B_{s,j,t-1} + r_{s,j}B_{s,j,t-1}\left( 1 - \frac{B_{s,j,t-1}}{B_{s,j,0}} \right) + \sum_{i \neq j} \phi_{s,j,i} \cdot B_{s,i,t-1} - C_{s,j,{t-1} } \right) \cdot e^{\epsilon_{s,t}}$, $2 \leq t \leq T$, \\
& \\
& \textbf{ Observational Model ($1 \leq t \leq T$)} \\
(T6.5) & $\bar{I}_{s,j,t} = q_{s,j} \cdot B_{s,j,t} \cdot e^{\delta_{s,j,t}}$ \\
& \\
& \textbf{ Statistical Model } \\
& \textit{ Data Likelihood } \\
(T6.6) &  $\mathcal{L}_{s,j} \left( \left\{ I_{s,t} \right\}_{t = 1}^T ~|~
                                \Theta_s \right) =
                         \left(\frac{1}{\sqrt{2\pi \tau_s^2}}\right)^T \cdot
                         \prod_{t = 1}^T e^{ - \frac{\left(\bar{I}_{s,t}/I_{s,t} \right)^2 }{2\tau_s^2} }$ \\
& \textit{ Stock Specific Priors } \\
(T6.7) &  $p ( \epsilon_{s,t} ~|~ \sigma^2 ) = 
                        \left(\frac{1}{\sqrt{2\pi \sigma^2}}\right)^ST \cdot
                         \prod_{s = 1}^S\prod_{t = 1}^T e^ { - \frac{\epsilon_{s,t}^2 }{2\sigma^2} }$\\
& \textit{ Shared Species Priors } \\
& \textit{ Shared Assemblage Priors } \\
& \textit{ Posterior Density } \\
(T6.8) &  $\mathcal{P} \left( \Theta ~|~ 
                              \left\{ I_{s,t} \right\}_{(s,t) = (1,1)}^{(S,T)}
                       \right) = 
                            \left[ \prod_{s = 1}^S 
                                \mathcal{L}_s\left( \left\{ I_{s,t} \right\}_{t = 1}^T ~|~ \Theta_s \right) 
                            \right] \cdot p ( \epsilon_{s,t} ~|~ \sigma^2 )$ \\
\hline
\end{tabular}
\end{center}
\end{table} -->

<!-- \newpage -->


<!-- \begin{figure}[htbp]
\centering
\includegraphics{figures/assemblage.pdf}
\caption{A conceptual hierarchical model of a multi-species assemblage, where each species is made up of several distinct stocks.}\label{fig:Assemblage}
\end{figure}
 -->

<!-- \newpage -->

\begin{figure}[htbp]
\centering
\includegraphics{figures/MSE.pdf}
\caption{A multi-species closed loop conceptual model. The operating model is oulined by the dashed line, which simulates three species with no sub-stock structure. Data generated by scientific observations and fishery exploitation at time step $t$ is provided to the assessment model. Assessment model output is passed through a decision rule, which provides catch advice for time step $t+1$. Fishing effort is then expended according to the catch advice, closing the loop and generating new data for the assessment model.}\label{fig:MSMSE}
\end{figure}
\newpage

\begin{figure}[htbp]
\centering
\includegraphics{figures/stableRiskRegions.pdf}
\caption{An example of stable risk regions for each model in Figure \ref{fig:3Models}. The lines at $d_1$ and $d_2$ represent recommended data-requirement policy for each method. Green regions denote the least risky regions, with risk increasing across yellow into red. Green regions have an upper bound due to social factors, such as employment security.}\label{fig:MSMSE}
\end{figure}

\newpage

\begin{figure}[htbp]
\centering
\includegraphics{figures/gantt.pdf}
\caption{A Gantt chart outlining the timeline of degree requirements, research, publications and thesis writing. Estimated time of completion is July 2018.}\label{fig:gantt}
\end{figure}


<!-- # Appendix: Tables

## Model Parameters 

\label{tab:modelPars}

|   Parameter   |   Symbol      |

| Unfished Biomass |  $B_{0,s}$   |
| Intrinsic Rate of Growth | $r_s$ |
| Catchability | $q_{s}$ |
| Observation Error Variance | $\sigma_s^2$ |
| Mean of $\log~q$ Prior | $m_{\log~q}$ |
| Variance of $\log~q$ Prior | $s^2_{\log~q}$ |
| Process Error Variance | $\eta_s^2$ |
| Maximum Sustainable Yield  |  $MSY_s = \frac{r_sB_{0,s}}{4}$ |
| Fishing mortality at MSY | $F_{MSY,s} = \frac{r_s}{2}$ |
| Biomass at MSY   | $B_{MSY,s} = \frac{B_{0,s}}2$ |
| Final Year Fishing Mortality | $F_{T,s} = \frac{C_{T,s}}{B_{T,s}}$ |
| Projected Depletion | $\frac{B_{T+1,s}}{B_{0,s}}$ |
| Projected Biomass | $B_{T+1,s}$ |


## Complete Model Specification

Here is where the Schnute style model specification table(s) \label{tab:modelSpec} will go.

 -->