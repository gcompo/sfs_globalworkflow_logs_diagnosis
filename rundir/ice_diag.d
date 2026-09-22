 --------------------------------
    (input_data)
   CICE model diagnostic output  
 --------------------------------
  
 (input_data)NOTE: runtype=continue, setting restart=.true.
  
 (input_data) WARNING: ktherm = 2 and tfrz_option = linear_salt
 (input_data) WARNING:   For consistency, set tfrz_option = mushy
 (input_data) WARNING: atmbndy = default is deprecated
 (input_data) WARNING:   setting atmbndy = similarity
  Overview of model configuration with relevant parameters
 =========================================================
 For details, compare namelist output below with the
 Case Settings section in the model documentation.
  
  Calendar
 --------------------------------
 days_per_year    =            365  : number of days in a model year
 use_leap_years   =              T  : leap days are included
 dt               =         600.00  : model time step
  
  Grid, Discretization
 --------------------------------
 grid_format      =         pop_nc
 grid_type        =        tripole  : grid file with northern hemisphere zipper
 grid_ice         =              B
   grid_ice_thrm  =              T
   grid_ice_dynu  =              U
   grid_ice_dynv  =              U
 grid_atm         =              A
   grid_atm_thrm  =              T
   grid_atm_dynu  =              T
   grid_atm_dynv  =              T
 grid_ocn         =              A
   grid_ocn_thrm  =              T
   grid_ocn_dynu  =              T
   grid_ocn_dynv  =              T
 kmt_type         =           file
 use_bathymetry   =              F  : bathymetric input data is not used
 bathymetry_format=        default
 nilyr            =              7  : number of ice layers (equal thickness)
 nslyr            =              1  : number of snow layers (equal thickness)
 nblyr            =              1  : number of bio layers (equal thickness)
 dEdd interior and sfc scattering layers are used in both ice, snow (unequal)
 ncat             =              5  : number of ice categories
 kcatbound        =              0  : original ITD category bounds
 kitd             =              1  : linear remapping ITD approx
 tr_fsd           =              F  : floe size distribution is disabled
 nfsd             =              1  : number of floe size categories
  
  Horizontal Dynamics
 --------------------------------
 kdyn             =              1  : elastic-viscous-plastic dynamics
 dyn_area_min     =     0.1000E-02  : min ice area concentration to activate dynamics
 dyn_mass_min     =     0.1000E-01  : min ice mass to activate dynamics (kg/m2)
 revised_evp      =              F  : revised EVP formulation not used
 evp_algorithm    =  standard_2d : standard 2d EVP solver
 ndtd             =              1  : number of dynamics/advection/ridging/steps per thermo timestep
 ndte             =            240  : number of EVP or EAP subcycles
 yield_curve      =        ellipse  : yield curve
 e_yieldcurve     =           2.00  : aspect ratio of yield curve
 e_plasticpot     =           2.00  : aspect ratio of plastic potential
     deltamin     =     0.1000E-10  : minimum delta for viscosities
     capping_meth =            max  : capping method for viscosities
     elasticDamp  =           0.36  : coefficient for calculating the parameter E
 coriolis         =       latitude  : latitude-dependent Coriolis parameter
 ssh_stress       =        coupled  : from coupled sea surface height gradients
 advection        =          remap  : linear remapping advection
 seabed_stress    =              F  : no seabed stress parameterization
 Ktens            =           0.00  : tensile strength factor
  
  Mechanical Deformation (Ridging) and Ice Strength
 --------------------------------------------------
 tr_lvl           =              T  : ridging related tracers
 kridge           =              1  : ridging enabled
 krdg_partic      =              1  : new participation function
 mu_rdg           =           3.00  : e-folding scale of ridged ice
 krdg_redist      =              1  : new redistribution function
 kstrength        =              1  : Rothrock (1975)
 Cf               =          17.00  : ratio of ridging work to PE change
  
  Thermodynamics
 --------------------------------
 ktherm           =              2  : mushy-layer thermo
 dt               =         600.00  : thermodynamic time step
 ksno             =           0.30  : snow thermal conductivity
 a_rapid_mode     =           0.00  : brine channel diameter
 Rac_rapid_mode   =          10.00  : critical Rayleigh number
 aspect_rapid_mode=           1.00  : brine convection aspect ratio
 dSdt_slow_mode   =  -0.500000D-07  : drainage strength parameter
 phi_c_slow_mode  =           0.05  : critical liquid fraction
 phi_i_mushy      =           0.85  : solid fraction at lower boundary
 Tliquidus_max    =           0.00  : max mush liquidus temperature
 hfrazilmin       =           0.05  : minimum new frazil ice thickness
  
  Radiation
 --------------------------------
 shortwave        =           dEdd  : delta-Eddington multiple-scattering method
 R_ice            =           2.80  : tuning parameter for sea ice albedo
 R_pnd            =           2.80  : tuning parameter for ponded sea ice albedo
 R_snw            =           2.80  : tuning parameter for snow broadband albedo
 dT_mlt           =           1.50  : change in temperature per change in snow grain radius
 rsnw_mlt         =        1500.00  : maximum melting snow grain radius
 kalg             =           0.00  : absorption coefficient for algae
 emissivity       =       0.980000  : emissivity of snow and ice
 sw_redist        =              T  : redistribute internal shortwave to surface
 sw_frac          =           0.90  : fraction redistributed
 sw_dtemp         =           0.02  : temperature difference from freezing to redistribute
  
  Atmospheric Forcing / Coupling
 --------------------------------
 calc_Tsfc        =              T  : calculate surface temperature as part of thermo
 calc_strair      =              T  : calculate wind stress and speed
 rotate_wind      =              T  : rotate wind/stress to computational grid
 formdrag         =              F  : use form drag parameterization
 iceruf           =       0.000500  : ice surface roughness at atmosphere interface (m)
 semi_implicit_Tsfc              F  : surface temperature coupling option based on d(hf)/dTs
 vapor_flux_correcti             F  : mass/enthalpy correction for evaporation/sublimation
 highfreq         =              F  : high-frequency atmospheric coupling
 natmiter         =              5  : number of atmo boundary layer iterations
 atmiter_conv     =           0.00  : convergence criterion for ustar
 atmbndy          =     similarity  : stability-based boundary layer
  
  Oceanic Forcing / Coupling
 --------------------------------
 oceanmixed_ice   =              F  : ocean mixed layer calculation (SST) disabled
 saltflux_option  =       constant
 ice_ref_salinity =           4.00
 tfrz_option      =    linear_salt  : linear function of salinity (use with ktherm=1)
 congel_freeze    =       two-step
 update_ocn_f     =              T  : frazil water/salt fluxes included in ocean fluxes
 cpl_frazil       = fresh_ice_corr
 l_mpond_fresh    =              F  : pond water not retained on ice (virtual only)
 fbot_xfer_type   =          mushy  : unknown value
 ustar_min        =       0.000500  : minimum value of ocean friction velocity
 hi_min           =       0.010000  : minimum ice thickness allowed (m)
    calc_dragio   =              F  : dragio hard-coded
  
  Age related tracers
 --------------------------------
 tr_iage          =              T  : chronological ice age
 tr_FY            =              F  : first-year ice area
  
  Melt ponds
 --------------------------------
 tr_pond_topo     =              T  : topo pond formulation
      WARNING: dpnd history fields are turned off for topo ponds
 hp1              =           0.01  : critical ice lid thickness for topo ponds
 hs0              =           0.00  : snow depth of transition to bare sea ice
 rfracmin         =           0.10  : minimum fraction of melt water added to ponds
 rfracmax         =           0.60  : maximum fraction of melt water added to ponds
  
  Snow redistribution/metamorphism tracers
 -----------------------------------------
 tr_snow          =              T  : advanced snow physics
 snwredist        =         ITDrdg  : Using ridging based snow redistribution scheme
 rhosnew          =         100.00  : new snow density (kg/m^3)
 rhosmin          =         100.00  : minimum snow density (kg/m^3)
 rhosmax          =         450.00  : maximum snow density (kg/m^3)
 windmin          =          10.00  : minimum wind speed to compact snow (m/s)
 drhosdwind       =          27.30  : wind compaction factor (kg s/m^4)
 snwlvlfac        =           0.30  : fractional increase in snow depth for redistribution on ridges
 snwgrain         =              T  : Using snow metamorphosis scheme
 rsnw_tmax        =        1500.00  : maximum snow radius (10^-6 m)
 rsnw_fall        =         100.00  : radius of new snow (10^-6 m)
 use_smliq_pnd    =              F  : NOT using liquid water in snow for melt ponds
 snw_aging_table  =           test  : Using 5x5x1 test matrix of internallly defined snow aging parameters
  
  Primary state variables, tracers
    (excluding biogeochemistry)
 ---------------------------------
 Conserved properties (all tracers are conserved):
 ice concentration, volume and enthalpy
 snow volume and enthalpy
        ice salinity
 tr_lvl           =              T  : ridging related tracers
 tr_pond_topo     =              T  : topo pond formulation
 tr_snow          =              T  : advanced snow physics
 tr_iage          =              T  : chronological ice age
 Non-conserved properties:
 ice surface temperature
 ice velocity components and internal stress
  
  Other ice_in namelist parameters:
 ===================================== 
 version_name     =  CICE_6.0.2
 runtype          =  continue
 year_init        =    2023
 month_init       =       1
 day_init         =      16
 sec_init         =   21600
 istep0           =       0
 npt_unit         =  1
 npt              =      90
 diagfreq         =     144
 print_global     =       T
 print_points     =       T
 debug_model      =       F
 debug_model_step =             0
 debug_model_i    =      -1
 debug_model_i    =      -1
 debug_model_iblk =      -1
 debug_model_task =      -1
 timer_stats      =       F
 memory_stats     =       F
 bfbflag          =  off
 numin            =      21
 numax            =      89
 grid_outfile     =       F
 histfreq         =      m     d     h     1     x 
 histfreq_n       =       0     0     3     0     1
 histfreq_base    =  zero  zero  zero  zero  zero  
 hist_avg         =    F  F  F  F  F
 hist_suffix      =  x     x     x     x     x     
 history_dir      =  ./CICE_OUTPUT/
 history_file     =  iceh
 history_precision=       4
 history_format   =  pnetcdf2
 history_rearranger  box
 history_iotasks  =     -99
 history_root     =     -99
 history_stride   =     -99
 hist_time_axis   =  end
 history_deflate  =       0
 history_chunksize=       0     0
 Initial condition will be written in  ./CICE_OUTPUT/
 dumpfreq         =      y     x     x     x     x 
 dumpfreq_n       =   10000     1     1     1     1
 dumpfreq_base    =  init  init  init  init  init  
 dump_last        =       F
 restart          =       T
 restart_dir      =  ./CICE_RESTART/
 restart_ext      =       F
 restart_mod      =  none
 restart_coszen   =       T
 restart_format   =  pnetcdf2
 restart_deflate  =       0
 restart_chunksize=       0     0
 restart_rearranger  box
 restart_iotasks  =     -99
 restart_root     =     -99
 restart_stride   =     -99
 restart_file     =  cice_model.res
 pointer_file     =  ./ice.restart_file
 use_restart_time =       T
 ice_ic           =  cice_model.res.nc
 grid_file        =  grid_cice_NEMS_mx025.nc
 gridcpl_file     =  unknown_gridcpl_file
 bathymetry_file  =  unknown_bathymetry_file
 kmt_file         =  kmtu_cice_NEMS_mx025.nc
 conserv_check    =       F
 fyear_init       =    1900
 ycycle           =       1
 atm_data_type    =  default
 atm_data_version =  _undef
 default_season   =  winter
 BGC coupling is switched OFF
 bgc_data_type    =  default
 fe_data_type     =  default
 ice_data_type    =  latsst
 ice_data_conc    =  parabolic
 ice_data_dist    =  uniform
 bgc_data_dir     =  unknown_bgc_data_dir
 ocn_data_type    =  default
 restore_ice      =       F
  
 Diagnostic point 1: lat, lon =   90.00    0.00
 Diagnostic point 2: lat, lon =  -65.00  -45.00
  
 restart_age      =       F
 restart_FY       =       F
 restart_lvl      =       F
 restart_pond_lvl =       F
 restart_pond_sealvl      F
 restart_pond_topo=       T
 restart_snow     =       F
 restart_iso      =       F
 restart_aero     =       F
 restart_fsd      =       F
 n_iso            =       0
 n_aero           =       0
 n_zaero          =       0
 n_algae          =       0
 n_doc            =       0
 n_dic            =       0
 n_don            =       0
 n_fed            =       0
 n_fep            =       0
  
 (input_zbgc) Reading zbgc_nml
  tr_brine                  =        F
  skl_bgc                   =        F
  restart_bgc               =        F
  tr_bgc_N                  =        F
  tr_bgc_C                  =        F
  tr_bgc_chl                =        F
  tr_bgc_Nit                =        F
  tr_bgc_Am                 =        F
  tr_bgc_Sil                =        F
  tr_bgc_hum                =        F
  tr_bgc_DMS                =        F
  tr_bgc_PON                =        F
  tr_bgc_DON                =        F
  tr_bgc_Fe                 =        F
  n_aero                    =        0
  n_zaero                   =        0
  n_algae                   =        0
  n_doc                     =        0
  n_dic                     =        0
  n_don                     =        0
  n_fed                     =        0
  n_fep                     =        0
  
  ntrcr                     =       27
  nbtrcr                    =        0
  nbtrcr_sw                 =        0
  
  nt_sice                   =       10
  nt_qice                   =        2
  nt_qsno                   =        9
  
 (icepack_write_tracer_flags):
   tr_iage =  T
   tr_FY   =  F
   tr_lvl  =  T
   tr_pond =  T
   tr_pond_lvl  =  F
   tr_pond_topo =  T
   tr_pond_sealvl =  F
   tr_snow    =  T
   tr_fsd     =  F
   tr_iso     =  F
   tr_aero    =  F
   tr_brine   =  F
   tr_zaero   =  F
   tr_bgc_Nit =  F
   tr_bgc_N   =  F
   tr_bgc_DON =  F
   tr_bgc_C   =  F
   tr_bgc_chl =  F
   tr_bgc_Am  =  F
   tr_bgc_Sil =  F
   tr_bgc_DMS =  F
   tr_bgc_Fe  =  F
   tr_bgc_hum =  F
   tr_bgc_PON =  F
 (icepack_write_tracer_sizes):
   fixed parameters: 
   max_algae_out =           3
   max_dic_out   =           1
   max_doc_out   =           3
   max_don_out   =           1
   max_fe_out    =           2
   nmodal1_out   =          10
   nmodal2_out   =           8
   max_iso_out   =           3
   max_aero_out  =           6
   max_nbtrcr_out=          29
   model defined parameters: 
   ncat      =            5
   nilyr     =            7
   nslyr     =            1
   nblyr     =            1
   nfsd      =            1
   n_algae   =            0
   n_DOC     =            0
   n_DON     =            0
   n_DIC     =            0
   n_fed     =            0
   n_fep     =            0
   n_zaero   =            0
   n_aero    =            0
   n_iso     =            0
   ntrcr     =           27
   ntrcr_o   =           26
   nbtrcr    =            0
   nbtrcr_sw =            0
 (icepack_write_tracer_indices):
   nt_Tsfc =            1
   nt_qice =            2
   nt_qsno =            9
   nt_sice =           10
   nt_fbri =           27
   nt_iage =           17
   nt_FY   =           27
   nt_alvl =           18
   nt_vlvl =           19
   nt_apnd =           20
   nt_hpnd =           21
   nt_ipnd =           22
   nt_fsd  =           27
   nt_smice      =           23
   nt_smliq      =           24
   nt_rhos       =           25
   nt_rsnw       =           26
   nt_isosno     =           27
   nt_isoice     =           27
   nt_aero       =           27
   nt_bgc_Nit    =            0
   nt_bgc_Am     =            0
   nt_bgc_Sil    =            0
   nt_bgc_DMSPp  =            0
   nt_bgc_DMSPd  =            0
   nt_bgc_DMS    =            0
   nt_bgc_hum    =            0
   nt_bgc_PON    =            0
   nlt_bgc_Nit   =            0
   nlt_bgc_Am    =            0
   nlt_bgc_Sil   =            0
   nlt_bgc_DMSPp =            0
   nlt_bgc_DMSPd =            0
   nlt_bgc_DMS   =            0
   nlt_bgc_hum   =            0
   nlt_bgc_PON   =            0
   nlt_chl_sw    =            0
   nt_zbgc_frac  =            0
   max_nbtrcr =           29
   bio_index_o(k) =            1           0
   bio_index(k)   =            1           0
   bio_index_o(k) =            2           0
   bio_index(k)   =            2           0
   bio_index_o(k) =            3           0
   bio_index(k)   =            3           0
   bio_index_o(k) =            4           0
   bio_index(k)   =            4           0
   bio_index_o(k) =            5           0
   bio_index(k)   =            5           0
   bio_index_o(k) =            6           0
   bio_index(k)   =            6           0
   bio_index_o(k) =            7           0
   bio_index(k)   =            7           0
   bio_index_o(k) =            8           0
   bio_index(k)   =            8           0
   bio_index_o(k) =            9           0
   bio_index(k)   =            9           0
   bio_index_o(k) =           10           0
   bio_index(k)   =           10           0
   bio_index_o(k) =           11           0
   bio_index(k)   =           11           0
   bio_index_o(k) =           12           0
   bio_index(k)   =           12           0
   bio_index_o(k) =           13           0
   bio_index(k)   =           13           0
   bio_index_o(k) =           14           0
   bio_index(k)   =           14           0
   bio_index_o(k) =           15           0
   bio_index(k)   =           15           0
   bio_index_o(k) =           16           0
   bio_index(k)   =           16           0
   bio_index_o(k) =           17           0
   bio_index(k)   =           17           0
   bio_index_o(k) =           18           0
   bio_index(k)   =           18           0
   bio_index_o(k) =           19           0
   bio_index(k)   =           19           0
   bio_index_o(k) =           20           0
   bio_index(k)   =           20           0
   bio_index_o(k) =           21           0
   bio_index(k)   =           21           0
   bio_index_o(k) =           22           0
   bio_index(k)   =           22           0
   bio_index_o(k) =           23           0
   bio_index(k)   =           23           0
   bio_index_o(k) =           24           0
   bio_index(k)   =           24           0
   bio_index_o(k) =           25           0
   bio_index(k)   =           25           0
   bio_index_o(k) =           26           0
   bio_index(k)   =           26           0
   bio_index_o(k) =           27           0
   bio_index(k)   =           27           0
   bio_index_o(k) =           28           0
   bio_index(k)   =           28           0
   bio_index_o(k) =           29           0
   bio_index(k)   =           29           0
   max_algae =            3
   nt_bgc_N(k)  =            1           0
   nlt_bgc_N(k) =            1           0
   nt_bgc_C(k)  =            1           0
   nlt_bgc_C(k) =            1           0
   nt_bgc_chl(k)  =            1           0
   nlt_bgc_chl(k) =            1           0
   nt_bgc_N(k)  =            2           0
   nlt_bgc_N(k) =            2           0
   nt_bgc_C(k)  =            2           0
   nlt_bgc_C(k) =            2           0
   nt_bgc_chl(k)  =            2           0
   nlt_bgc_chl(k) =            2           0
   nt_bgc_N(k)  =            3           0
   nlt_bgc_N(k) =            3           0
   nt_bgc_C(k)  =            3           0
   nlt_bgc_C(k) =            3           0
   nt_bgc_chl(k)  =            3           0
   nlt_bgc_chl(k) =            3           0
   max_DOC =            3
   nt_bgc_DOC(k)  =            1           0
   nlt_bgc_DOC(k) =            1           0
   nt_bgc_DOC(k)  =            2           0
   nlt_bgc_DOC(k) =            2           0
   nt_bgc_DOC(k)  =            3           0
   nlt_bgc_DOC(k) =            3           0
   max_DON =            1
   nt_bgc_DON(k)  =            1           0
   nlt_bgc_DON(k) =            1           0
   max_DIC =            1
   nt_bgc_DIC(k)  =            1           0
   nlt_bgc_DIC(k) =            1           0
   max_fe =            2
   nt_bgc_Fed(k)  =            1           0
   nlt_bgc_Fed(k) =            1           0
   nt_bgc_Fep(k)  =            1           0
   nlt_bgc_Fep(k) =            1           0
   nt_bgc_Fed(k)  =            2           0
   nlt_bgc_Fed(k) =            2           0
   nt_bgc_Fep(k)  =            2           0
   nlt_bgc_Fep(k) =            2           0
   max_aero =            6
   nt_zaero(k)     =            1           0
   nlt_zaero(k)    =            1           0
   nlt_zaero_sw(k) =            1           0
   nt_zaero(k)     =            2           0
   nlt_zaero(k)    =            2           0
   nlt_zaero_sw(k) =            2           0
   nt_zaero(k)     =            3           0
   nlt_zaero(k)    =            3           0
   nlt_zaero_sw(k) =            3           0
   nt_zaero(k)     =            4           0
   nlt_zaero(k)    =            4           0
   nlt_zaero_sw(k) =            4           0
   nt_zaero(k)     =            5           0
   nlt_zaero(k)    =            5           0
   nlt_zaero_sw(k) =            5           0
   nt_zaero(k)     =            6           0
   nlt_zaero(k)    =            6           0
   nlt_zaero_sw(k) =            6           0
 (init_domain_blocks) Reading domain_nml

Domain Information

  Horizontal domain: nx =   1440
                     ny =   1080
  No. of categories: nc =      5
  No. of ice layers: ni =      7
  No. of snow layers:ns =      1
  Processors:  total    =     40
  Processor shape       = slenderX2
  Distribution type     = cartesian
  Distribution weight   = latitude
  Distribution wght file= unknown
  ew_boundary_type      = cyclic
  ns_boundary_type      = tripole
  maskhalo_dyn          =      F
  maskhalo_remap        =      F
  maskhalo_bound        =      F
  add_mpi_barriers      =      F
  debug_blocks          =      F
  block_size_x,_y       =     72   540
  max_blocks            =     -1
  Number of ghost cells =      1

 (ice_read_global_nc) min, max, sum =   -1.42322859037840     
   1.57079632679490        132723.030019179      ulat
 (ice_read_global_nc) min, max, sum =   0.000000000000000E+000
   1.00000000000000        969446.000000000      kmt
(init_domain_distribution) work_unit      =    187977       10
(init_domain_distribution) nocn           =    134553  1879767 44849412
(init_domain_distribution) work_per_block =         2       11      298
(proc_decomposition)  Processors (X x Y) =   20 x    2
(init_domain_distribution) total number of blocks is      40
 
(init_grid1) Block size:
(init_grid1)   nx_block        =       74
(init_grid1)   ny_block        =      542
(init_grid1)   min(max_blocks) =        1
(init_grid1)   max(max_blocks) =        1
 send_i2x_per_cat =  F
 flds_wiso =  F
 flds_wave =  F
 mesh file for cice domain is mesh.mx025.nc
 mask file for cice domain is mesh.mx025.nc
 (ice_read_global_nc) min, max, sum =   -1.42322859037840     
   1.57079632679490        132723.030019179      ulat
 (ice_read_global_nc) min, max, sum =   -5.23598775598299     
   1.04984580845903       -3253810.34317646      ulon
 (ice_read_global_nc) min, max, sum =   -1.56670638652119     
   1.56670638652119       -169.680790279611      angle
 (popgrid_nc) CICE will calculate angleT, TLON and TLAT
 (ice_read_global_nc) min, max, sum =    416220.698768626     
   2782920.86944159        2581845714571.44      htn
 (ice_read_global_nc) min, max, sum =    5260.08336407852     
   2782925.28468218        2607661151474.74      hte
(ice_read_nc_xy) fid=    65536, lnrec =        1, varname = kmt
 (ice_read_nc_xy) min, max, sum =   1.00000000000000     
   1.00000000000000        969446.000000000      kmt
 (init_grid2) OpenMP runtime thread schedule:
 (init_grid2)  omp schedule =            1           0
 (init_grid2) block, thread =            1           0
 (Tlatlon) called
 (NElatlon) called
  
 (NElatlon) min/max ULON:  -300.000000000000        60.0000000000000     
 (NElatlon) min/max ULAT:  -78.5420143145011        90.0000000000000     
 (NElatlon) min/max TLON:  -179.999403485639        179.999337254904     
 (NElatlon) min/max TLAT:  -78.7040157266072        89.9387656265948     
  
 (NElatlon) min/max NLON:  -179.998232236267        179.993367805473     
 (NElatlon) min/max NLAT:  -78.6502084140879        89.9712091678946     
 (NElatlon) min/max ELON:  -180.000000000000        179.998036827028     
 (NElatlon) min/max ELAT:  -78.5958965208209        89.9459561661058     
  
istep1:         0    idate:  20230116    sec:     21600
 (init_hist) Reading icefields_nml
 (init_hist_mechred_2D) Reading icefields_mechred_nml
 (init_hist_pond_2D) Reading icefields_pond_nml
 (init_hist_bgc_2D) Reading icefields_bgc_nml
 (init_hist_drag_2D) Reading icefields_drag_nml
 (init_hist_snow_2D) Reading icefields_snow_nml
  
 total number of history fields =          243
 max number of history fields   =          800
 The following variables will be written to the history tape: 
          description                     units             variable  frequency   x
 grid cell mean ice thickness              m                 hi_h         h       3
 grid cell mean snow thickness             m                 hs_h         h       3
 snow/ice surface temperature              C                 Tsfc_h       h       3
 ice area  (aggregate)                     1                 aice_h       h       3
 ice velocity (x)                          m/s               uvel_h       h       3
 ice velocity (y)                          m/s               vvel_h       h       3
 atm velocity (x)                          m/s               uatm_h       h       3
 atm velocity (y)                          m/s               vatm_h       h       3
 bulk ice salinity                         ppt               sice_h       h       3
 down solar flux                           W/m^2             fswdn_h      h       3
 down longwave flux                        W/m^2             flwdn_h      h       3
 snowfall rate                             cm/day            snow_ai_h    h       3
 rainfall rate                             cm/day            rain_ai_h    h       3
 sea surface temperature                   C                 sst_h        h       3
 sea surface salinity                      ppt               sss_h        h       3
 ocean current (x)                         m/s               uocn_h       h       3
 ocean current (y)                         m/s               vocn_h       h       3
 freeze/melt potential                     W/m^2             frzmlt_h     h       3
 shortwave scaling factor                  1                 scale_factor h       3
 shortwave absorbed in ice interior        W/m^2             fswint_ai_h  h       3
 snow/ice/ocn absorbed solar flux          W/m^2             fswabs_ai_h  h       3
 snow/ice broad band albedo                %                 albsni_h     h       3
 visible direct albedo                     %                 alvdr_h      h       3
 near IR direct albedo                     %                 alidr_h      h       3
 visible diffuse albedo                    %                 alvdf_h      h       3
 near IR diffuse albedo                    %                 alidf_h      h       3
 latent heat flux                          W/m^2             flat_ai_h    h       3
 sensible heat flux                        W/m^2             fsens_ai_h   h       3
 upward longwave flux                      W/m^2             flwup_ai_h   h       3
 air temperature                           C                 Tair_h       h       3
 2m reference temperature                  C                 Tref_h       h       3
 2m reference specific humidity            g/kg              Qref_h       h       3
 congelation ice growth                    cm/day            congel_h     h       3
 frazil ice growth                         cm/day            frazil_h     h       3
 snow-ice formation                        cm/day            snoice_h     h       3
 snow formation                            cm/day            dsnow_h      h       3
 top ice melt                              cm/day            meltt_h      h       3
 top snow melt                             cm/day            melts_h      h       3
 basal ice melt                            cm/day            meltb_h      h       3
 lateral ice melt                          cm/day            meltl_h      h       3
 freshwtr flx ice to ocn                   cm/day            fresh_ai_h   h       3
 salt flux ice to ocean                    kg/m^2/s          fsalt_ai_h   h       3
 heat flux ice to ocean (fbot)             W/m^2             fbot_h       h       3
 heat flux ice to ocean (fhocn_ai)         W/m^2             fhocn_ai_h   h       3
 SW flux thru ice to ocean                 W/m^2             fswthru_ai_h h       3
 atm/ice stress (x)                        N/m^2             strairx_h    h       3
 atm/ice stress (y)                        N/m^2             strairy_h    h       3
 ocean/ice stress (x)                      N/m^2             strocnx_h    h       3
 ocean/ice stress (y)                      N/m^2             strocny_h    h       3
 strain rate (divergence)                  %/day             divu_h       h       3
 strain rate (shear)                       %/day             shear_h      h       3
 net surface heat flux                     W/m^2             fsurf_ai_h   h       3
 melt pond fraction of grid cell           1                 apond_ai_h   h       3
 ice mass per unit area in snow            kg/m^2            smassice_h   h       3
 liquid mass per unit area in snow         kg/m^2            smassliq_h   h       3
 average snow grain radius                 10^-6 m           rsnw_h       h       3
 ice mass per unit area in snow, category  kg/m^2            smassicen_h  h       3
 liquid mass per unit area in snow, categ  kg/m^2            smassliqn_h  h       3
 average snow grain radius, category       10^-6 m           rsnwn_h      h       3
  
 arlx, arlxi, brlx, denom1   172.800000000000       5.787037037037038E-003
   240.000000000000       0.994246260069045     
 dt  =    600.000000000000     
 dt_subcyle =    2.50000000000000     
 tdamp =   216.000000000000     
 halo_dynbundle = F
 
  (icepack_init_itd_hist)
  hin_max(n-1) < Cat n < hin_max(n)
   0.000000000000000E+000  < Cat            1  <   0.644507216819426
   0.644507216819426       < Cat            2  <    1.39143349757630
    1.39143349757630       < Cat            3  <    2.47017938195989
    2.47017938195989       < Cat            4  <    4.56728791885049
    4.56728791885049       < Cat            5  <    999.900000000000
 
  
istep1:         0    idate:  20230116    sec:     21600
 tracer          index  depend  type has_dependents
 hi                 1       0     1       T
 hs                 2       0     1       T
 nt_Tsfc            3       0     1       F
 nt_qice            4       1     2       F
 nt_qsno           11       2     2       F
 nt_sice           12       1     2       F
 nt_iage           19       1     2       F
 nt_alvl           20       0     1       F
 nt_vlvl           21       1     2       F
 nt_apnd           22       0     1       T
 nt_hpnd           23      22     2       F
 nt_ipnd           24      22     2       F
 nt_smice          25       2     2       F
 nt_smliq          26       2     2       F
 nt_rhos           27       2     2       F
 nt_rsnw           28       2     2       F
 nt_fbri           29       0     1       F
 nt_FY             29       0     1       F
 nt_fsd            29       0     1       F
 nt_isosno         29       0     1       F
 nt_isoice         29       0     1       F
  
 Read ./ice.restart_file
 Using restart dump=
 /gpfs/f6/ira-da/world-shared/Baiding.Liu/RUNDIRS/sfs2023/gdas.2023011606/gdasfc
 st.2023011606/fcst.2752138/cice_model.res.nc
 (ice_pio_init) nprocs     =           40
 (ice_pio_init) pio_iotype =            1
 (ice_pio_init) iotasks    =           10
 (ice_pio_init) baseroot   =            1
 (ice_pio_init) stride     =            4
 (ice_pio_init) nmode      =          512
 (ice_pio_init) opening file for reading /gpfs/f6/ira-da/world-shared/Baiding.Li
 u/RUNDIRS/sfs2023/gdas.2023011606/gdasfcst.2023011606/fcst.2752138/cice_model.r
 es.nc
Restart read at istep=    2178    2023-01-16-10800
  min/max area, vol ice, vol snow, Tsfc
 Parallel restart file read: aicen
  min, max, sum =  0.000000000000000E+000   1.00000000000000     
   41922.3297354011      aicen
  min, max, sum =  0.000000000000000E+000  0.993973495666617     
   74410.9272744658      aicen
  min, max, sum =  0.000000000000000E+000  0.928006544600072     
   35625.4803577669      aicen
  min, max, sum =  0.000000000000000E+000  0.892424751705570     
   8147.87669842396      aicen
  min, max, sum =  0.000000000000000E+000  0.999712288378783     
   7733.93659866938      aicen
 Parallel restart file read: vicen
  min, max, sum =  0.000000000000000E+000  0.491075413260463     
   14845.1821387063      vicen
  min, max, sum =  0.000000000000000E+000   1.24676984114140     
   73146.0716438389      vicen
  min, max, sum =  0.000000000000000E+000   2.03328063002032     
   62978.6165739185      vicen
  min, max, sum =  0.000000000000000E+000   3.15550646145770     
   26512.7321488574      vicen
  min, max, sum =  0.000000000000000E+000   999.543361948186     
   184112.128468491      vicen
 Parallel restart file read: vsnon
  min, max, sum =  0.000000000000000E+000  9.877732087792829E-002
   1540.77926828174      vsnon
  min, max, sum =  0.000000000000000E+000  0.247442304217702     
   5034.17292359144      vsnon
  min, max, sum =  0.000000000000000E+000  0.320859293158521     
   3073.60899778339      vsnon
  min, max, sum =  0.000000000000000E+000  0.238324242161359     
   599.544611995070      vsnon
  min, max, sum =  0.000000000000000E+000  0.264069886891121     
   599.997452459326      vsnon
 Parallel restart file read: Tsfcn
  min, max, sum =  -51.8560196282075       0.000000000000000E+000
  -4129916.19773818      Tsfcn
  min, max, sum =  -54.3963987093931       0.000000000000000E+000
  -4767974.72668083      Tsfcn
  min, max, sum =  -54.9979815644418       0.000000000000000E+000
  -5063804.42998410      Tsfcn
  min, max, sum =  -55.6579353259465       0.000000000000000E+000
  -5258650.55053443      Tsfcn
  min, max, sum =  -55.7587390126925       0.000000000000000E+000
  -5334036.11436240      Tsfcn
 min/max sice for each layer
 Parallel restart file read: sice001
  min, max, sum =  0.000000000000000E+000   32.4585216504425     
   2236009.17475323      sice001
  min, max, sum =  0.000000000000000E+000   31.4156840077002     
   1962124.66601839      sice001
  min, max, sum =  0.000000000000000E+000   31.4390425529043     
   1906090.68984620      sice001
  min, max, sum =  0.000000000000000E+000   30.7881438250231     
   1976813.45124650      sice001
  min, max, sum =  0.000000000000000E+000   27.4405381142513     
   1531966.82534324      sice001
 Parallel restart file read: sice002
  min, max, sum =  0.000000000000000E+000   32.4495593866048     
   2090143.51151290      sice002
  min, max, sum =  0.000000000000000E+000   31.4355265713812     
   1829446.90813054      sice002
  min, max, sum =  0.000000000000000E+000   31.4586610252625     
   1810721.48421349      sice002
  min, max, sum =  0.000000000000000E+000   30.8315644426917     
   1919754.85379708      sice002
  min, max, sum =  0.000000000000000E+000   27.6241424620216     
   1545562.64996094      sice002
 Parallel restart file read: sice003
  min, max, sum =  0.000000000000000E+000   32.4069831859429     
   2015077.75913418      sice003
  min, max, sum =  0.000000000000000E+000   31.4692253266806     
   1762712.32348209      sice003
  min, max, sum =  0.000000000000000E+000   31.4921300114734     
   1746830.81793952      sice003
  min, max, sum =  0.000000000000000E+000   30.8724087105281     
   1860580.95335516      sice003
  min, max, sum =  0.000000000000000E+000   27.7418913590450     
   1593869.31697501      sice003
 Parallel restart file read: sice004
  min, max, sum =  0.000000000000000E+000   32.6373463304880     
   1995712.92236970      sice004
  min, max, sum =  0.000000000000000E+000   31.5337157468409     
   1759807.39745940      sice004
  min, max, sum =  0.000000000000000E+000   31.5525300307156     
   1708821.08677530      sice004
  min, max, sum =  0.000000000000000E+000   30.8524271239713     
   1804027.36674139      sice004
  min, max, sum =  0.000000000000000E+000   28.3506185001902     
   1648237.86803974      sice004
 Parallel restart file read: sice005
  min, max, sum =  0.000000000000000E+000   33.1263502078839     
   2092856.37586415      sice005
  min, max, sum =  0.000000000000000E+000   31.6812094941977     
   1840354.13390127      sice005
  min, max, sum =  0.000000000000000E+000   31.6926911635481     
   1712667.04904302      sice005
  min, max, sum =  0.000000000000000E+000   30.8788298302115     
   1760857.37125619      sice005
  min, max, sum =  0.000000000000000E+000   29.5574448475727     
   1742202.17030230      sice005
 Parallel restart file read: sice006
  min, max, sum =  0.000000000000000E+000   33.9222792013550     
   2438223.37946740      sice006
  min, max, sum =  0.000000000000000E+000   32.0252639713787     
   2080799.55253689      sice006
  min, max, sum =  0.000000000000000E+000   32.0287050361938     
   1817463.25051020      sice006
  min, max, sum =  0.000000000000000E+000   31.7915711317771     
   1820583.16025850      sice006
  min, max, sum =  0.000000000000000E+000   31.5695718241595     
   1948180.56384766      sice006
 Parallel restart file read: sice007
  min, max, sum =  0.000000000000000E+000   36.3233370898181     
   3377687.29764299      sice007
  min, max, sum =  0.000000000000000E+000   34.3764900827448     
   2896116.74187211      sice007
  min, max, sum =  0.000000000000000E+000   34.7300138052237     
   2391301.90747412      sice007
  min, max, sum =  0.000000000000000E+000   34.9518315121597     
   2265929.18062690      sice007
  min, max, sum =  0.000000000000000E+000   34.8473626402497     
   2482257.65929306      sice007
 min/max qice for each layer
 Parallel restart file read: qice001
  min, max, sum =  -403754161.402511       0.000000000000000E+000
  -67558586665408.2      qice001
  min, max, sum =  -409314494.498144       0.000000000000000E+000
  -68846845031288.6      qice001
  min, max, sum =  -410508185.947609       0.000000000000000E+000
  -70129626586793.9      qice001
  min, max, sum =  -412352186.948443       0.000000000000000E+000
  -71432304782168.4      qice001
  min, max, sum =  -415721449.123080       0.000000000000000E+000
  -75302203480373.2      qice001
 Parallel restart file read: qice002
  min, max, sum =  -362320792.611356       0.000000000000000E+000
  -61528581806000.3      qice002
  min, max, sum =  -379459870.616507       0.000000000000000E+000
  -65029250428394.0      qice002
  min, max, sum =  -382116380.940206       0.000000000000000E+000
  -65561693041458.7      qice002
  min, max, sum =  -380189735.427267       0.000000000000000E+000
  -64085625398085.8      qice002
  min, max, sum =  -368157744.155216       0.000000000000000E+000
  -56248465896139.9      qice002
 Parallel restart file read: qice003
  min, max, sum =  -350045588.149368       0.000000000000000E+000
  -60283828615388.1      qice003
  min, max, sum =  -362623781.271847       0.000000000000000E+000
  -62230552216124.6      qice003
  min, max, sum =  -362143478.253093       0.000000000000000E+000
  -60718629650052.6      qice003
  min, max, sum =  -360387711.853308       0.000000000000000E+000
  -58392103208146.7      qice003
  min, max, sum =  -345328140.518447       0.000000000000000E+000
  -53080946209803.7      qice003
 Parallel restart file read: qice004
  min, max, sum =  -334719812.990637       0.000000000000000E+000
  -58697513706508.4      qice004
  min, max, sum =  -344468184.418614       0.000000000000000E+000
  -59023809940526.1      qice004
  min, max, sum =  -349093589.190795       0.000000000000000E+000
  -57234757095670.6      qice004
  min, max, sum =  -344005909.211411       0.000000000000000E+000
  -55255207033443.3      qice004
  min, max, sum =  -330086896.970884       0.000000000000000E+000
  -51650238985280.9      qice004
 Parallel restart file read: qice005
  min, max, sum =  -322453582.585322       0.000000000000000E+000
  -56453445592747.4      qice005
  min, max, sum =  -329100213.396493       0.000000000000000E+000
  -55862485609540.6      qice005
  min, max, sum =  -335202043.871445       0.000000000000000E+000
  -54488347248795.6      qice005
  min, max, sum =  -329288159.025742       0.000000000000000E+000
  -52274448882779.2      qice005
  min, max, sum =  -315184187.111342       0.000000000000000E+000
  -49541724925184.9      qice005
 Parallel restart file read: qice006
  min, max, sum =  -313921007.674792       0.000000000000000E+000
  -51714713693442.8      qice006
  min, max, sum =  -317498507.854789       0.000000000000000E+000
  -52112829041807.4      qice006
  min, max, sum =  -318560930.221729       0.000000000000000E+000
  -50948760137012.8      qice006
  min, max, sum =  -317767213.165146       0.000000000000000E+000
  -47507633874720.5      qice006
  min, max, sum =  -303452938.195678       0.000000000000000E+000
  -45540583890405.4      qice006
 Parallel restart file read: qice007
  min, max, sum =  -309060304.609356       0.000000000000000E+000
  -35206245544675.4      qice007
  min, max, sum =  -308584266.254959       0.000000000000000E+000
  -38192259342096.5      qice007
  min, max, sum =  -307866197.902554       0.000000000000000E+000
  -39801221290631.3      qice007
  min, max, sum =  -304914361.665542       0.000000000000000E+000
  -36333401892946.1      qice007
  min, max, sum =  -286126557.703544       0.000000000000000E+000
  -36693557679151.6      qice007
 min/max qsno for each layer
 Parallel restart file read: qsno001
  min, max, sum =  -146258896.521212       0.000000000000000E+000
  -25245601881866.5      qsno001
  min, max, sum =  -148024409.175054       0.000000000000000E+000
  -25359704865537.5      qsno001
  min, max, sum =  -148442497.227656       0.000000000000000E+000
  -25539120346563.9      qsno001
  min, max, sum =  -148901151.892826       0.000000000000000E+000
  -25756945884876.4      qsno001
  min, max, sum =  -148971208.439041       0.000000000000000E+000
  -26228302633962.4      qsno001
 min/max velocity components
 Parallel restart file read: uvel
  min, max, sum =  -1.16732976219153       0.825923284209574     
  -2276.20499504049      uvel
 Parallel restart file read: vvel
  min, max, sum =  -1.15204633446268       0.752369283977923     
  -3804.53803840530      vvel
 radiation fields
 Parallel restart file read: coszen
  min, max, sum = -0.999995963707191       0.995543476868901     
   23360.7611772321      coszen
 Parallel restart file read: scale_factor
  min, max, sum =  0.000000000000000E+000   1096.98003903764     
   157381847.981168      scale_factor
 Parallel restart file read: swvdr
  min, max, sum =  0.000000000000000E+000   460.169859763443     
   35742595.6637364      swvdr
 Parallel restart file read: swvdf
  min, max, sum =  0.000000000000000E+000   447.359733891744     
   49435195.2063078      swvdf
 Parallel restart file read: swidr
  min, max, sum =  0.000000000000000E+000   533.696510436080     
   42036441.2650267      swidr
 Parallel restart file read: swidf
  min, max, sum =  0.000000000000000E+000   405.633870296720     
   35246713.8683301      swidf
 min/max ocean stress components
 Parallel restart file read: strocnxT
  min, max, sum =  -2.29673787956882        2.35908633242815     
  -1.67580776728744      strocnxT
 Parallel restart file read: strocnyT
  min, max, sum =  -3.48363591984300        11.2671649700568     
   1628.11163564277      strocnyT
 internal stress components
 Parallel restart file read: stressp_1
  min, max, sum =  -45250876.4766497       0.000000000000000E+000
  -2669489729.24930      stressp_1
 Parallel restart file read: stressp_3
  min, max, sum =  -35675915.5231441       0.000000000000000E+000
  -2719363735.37460      stressp_3
 Parallel restart file read: stressp_2
  min, max, sum =  -100242682.664750       0.000000000000000E+000
  -2866631678.83194      stressp_2
 Parallel restart file read: stressp_4
  min, max, sum =  -47265693.0310460       0.000000000000000E+000
  -2740969982.30229      stressp_4
 Parallel restart file read: stressm_1
  min, max, sum =  -12593984.5971106        24260201.8086508     
  -280116285.408456      stressm_1
 Parallel restart file read: stressm_3
  min, max, sum =  -330104.552338592        21630847.3995592     
  -243497602.957023      stressm_3
 Parallel restart file read: stressm_2
  min, max, sum =  -32265745.9530279        9805199.06094960     
  -346564860.494065      stressm_2
 Parallel restart file read: stressm_4
  min, max, sum =  -606444.388333998        45509993.3614538     
  -184670694.538146      stressm_4
 Parallel restart file read: stress12_1
  min, max, sum =  -248035.784743785        13878608.7024609     
  -16505674.7802312      stress12_1
 Parallel restart file read: stress12_3
  min, max, sum =  -2110420.74989104        21783672.3358619     
   3485699.50774518      stress12_3
 Parallel restart file read: stress12_2
  min, max, sum =  -473084.377457039        33599989.0107216     
   73423259.7343533      stress12_2
 Parallel restart file read: stress12_4
  min, max, sum =  -330501.556982618        15731128.8441366     
   36241133.4004762      stress12_4
 ice mask for dynamics
 Parallel restart file read: iceumask
  min, max, sum =  0.000000000000000E+000   1.00000000000000     
   192286.000000000      iceumask
 (read_restart_age)min/max age (s)
 Parallel restart file read: iage
  min, max, sum =  0.000000000000000E+000   1306800.00000002     
   227420793686.179      iage
  min, max, sum =  0.000000000000000E+000   1306800.00000002     
   272726845968.695      iage
  min, max, sum =  0.000000000000000E+000   1306800.00000002     
   275002892475.949      iage
  min, max, sum =  0.000000000000000E+000   1306800.00000002     
   274159014821.624      iage
  min, max, sum =  0.000000000000000E+000   1306800.00000003     
   265310244711.596      iage
 (read_restart_lvl)min/max level ice area, volume
 Parallel restart file read: alvl
  min, max, sum =  0.000000000000000E+000   1.00000000000001     
   199415.706133823      alvl
  min, max, sum =  0.000000000000000E+000   1.00000000000000     
   204777.117426110      alvl
  min, max, sum =  0.000000000000000E+000   1.00000000000000     
   189223.215097368      alvl
  min, max, sum =  0.000000000000000E+000   1.00000000000000     
   173207.333219325      alvl
  min, max, sum =  0.000000000000000E+000   1.00000000000000     
   179959.726526444      alvl
 Parallel restart file read: vlvl
  min, max, sum =  0.000000000000000E+000   1.00000000000004     
   198150.186265709      vlvl
  min, max, sum =  0.000000000000000E+000   1.00000000000000     
   203695.919087364      vlvl
  min, max, sum =  0.000000000000000E+000   1.00000000000000     
   188436.648200919      vlvl
  min, max, sum =  0.000000000000000E+000   1.00000000000000     
   172901.367146652      vlvl
  min, max, sum =  0.000000000000000E+000   1.00000000000000     
   179198.896992539      vlvl
 (read_restart_pond_topo)min/max topo ponds
 Parallel restart file read: apnd
  min, max, sum =  0.000000000000000E+000  0.821487126885356     
   1.63694731180219      apnd
  min, max, sum =  0.000000000000000E+000  2.698814312229345E-006
  2.803729636169679E-006 apnd
  min, max, sum =  0.000000000000000E+000  1.257182853188958E-006
  1.289100801142666E-006 apnd
  min, max, sum =  0.000000000000000E+000  3.413722057703816E-005
  3.703598200113286E-005 apnd
  min, max, sum =  0.000000000000000E+000  1.243783697729873E-004
  1.296442952102479E-004 apnd
 Parallel restart file read: hpnd
  min, max, sum =  0.000000000000000E+000  0.420966258673900     
   1.32024735218590      hpnd
  min, max, sum =  0.000000000000000E+000  0.000000000000000E+000
  0.000000000000000E+000 hpnd
  min, max, sum =  0.000000000000000E+000  0.000000000000000E+000
  0.000000000000000E+000 hpnd
  min, max, sum =  0.000000000000000E+000  0.000000000000000E+000
  0.000000000000000E+000 hpnd
  min, max, sum =  0.000000000000000E+000  0.000000000000000E+000
  0.000000000000000E+000 hpnd
 Parallel restart file read: ipnd
  min, max, sum =  0.000000000000000E+000  1.709688379408354E-002
  0.404514651531037      ipnd
  min, max, sum =  0.000000000000000E+000  0.000000000000000E+000
  0.000000000000000E+000 ipnd
  min, max, sum =  0.000000000000000E+000  0.000000000000000E+000
  0.000000000000000E+000 ipnd
  min, max, sum =  0.000000000000000E+000  0.000000000000000E+000
  0.000000000000000E+000 ipnd
  min, max, sum =  0.000000000000000E+000  0.000000000000000E+000
  0.000000000000000E+000 ipnd
 (read_restart_snow)min/max snow tracers
 Parallel restart file read: smice001
  min, max, sum =  0.000000000000000E+000   330.000000000028     
   319917179.904931      smice001
  min, max, sum =  0.000000000000000E+000   330.000000000037     
   319917179.981759      smice001
  min, max, sum =  0.000000000000000E+000   330.000000000171     
   319917179.981631      smice001
  min, max, sum =  0.000000000000000E+000   330.000000000015     
   319917179.964293      smice001
  min, max, sum =  0.000000000000000E+000   330.000000000012     
   319917179.955976      smice001
 Parallel restart file read: smliq001
  min, max, sum =  0.000000000000000E+000   21.1269955751138     
   1003388.43016560      smliq001
  min, max, sum =  0.000000000000000E+000   21.1244276161742     
   791841.741435469      smliq001
  min, max, sum =  0.000000000000000E+000   21.1245888666308     
   737915.430956786      smliq001
  min, max, sum =  0.000000000000000E+000   21.1247188391257     
   744977.316494191      smliq001
  min, max, sum =  0.000000000000000E+000   21.1247188391314     
   755109.471614771      smliq001
 Parallel restart file read: rhos001
  min, max, sum =  0.000000000000000E+000   450.000000000000     
   133124799.077263      rhos001
  min, max, sum =  0.000000000000000E+000   450.000000000000     
   135868421.558021      rhos001
  min, max, sum =  0.000000000000000E+000   450.000000000000     
   136703754.467750      rhos001
  min, max, sum =  0.000000000000000E+000   450.000000000000     
   136375754.501828      rhos001
  min, max, sum =  0.000000000000000E+000   450.000000000000     
   136278924.918746      rhos001
 Parallel restart file read: rsnw001
  min, max, sum =  0.000000000000000E+000   333.156771064487     
   106226564.743624      rsnw001
  min, max, sum =  0.000000000000000E+000   332.913581646477     
   105603158.669575      rsnw001
  min, max, sum =  0.000000000000000E+000   332.255643598131     
   105234325.023930      rsnw001
  min, max, sum =  0.000000000000000E+000   328.866428656713     
   105253627.081228      rsnw001
  min, max, sum =  0.000000000000000E+000   324.468892044217     
   105272722.645183      rsnw001
  
  Find indices of diagnostic points 
  
 found point   1
   lat    lon   TLAT   TLON     i     j   block  task
  90.0    0.0   89.9   -2.0     2   541     1    35
  
 found point   2
   lat    lon   TLAT   TLON     i     j   block  task
 -65.0  -45.0  -65.0  -45.1    13   160     1    14
(ice_comp_nuopc):(InitializeRealize) cice init nextsw_cday = -0.10000000000000D+01
(ice_comp_nuopc):(InitializeRealize) tfrz_option = linear_salt
 (ice_comp_nuopc):(InitializeRealize)
  Warning: Using ktherm = 2 and tfrz_option = linear_salt
(ice_comp_nuopc):(InitializeRealize) inst_name   = ICE
(ice_comp_nuopc):(InitializeRealize) inst_index  =        1
(ice_comp_nuopc):(InitializeRealize) inst_suffix = 

 (ice_pio_init) nprocs     =           40
 (ice_pio_init) pio_iotype =            1
 (ice_pio_init) iotasks    =           10
 (ice_pio_init) baseroot   =            1
 (ice_pio_init) stride     =            4
 (ice_pio_init) nmode      =          512
 (ice_pio_init) create file ./CICE_OUTPUT/iceh_ic.2023-01-16-10800.nc
  
 Finished writing ./CICE_OUTPUT/iceh_ic.2023-01-16-10800.nc
(ice_comp_nuopc):(ModelAdvance) cice istep, nextsw_cday =          0      0.16131944444444D+02
(ice_comp_nuopc):(ModelAdvance) cice istep, nextsw_cday =          1      0.16138888888889D+02
