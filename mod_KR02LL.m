%
% Status : main Dynare file 
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

clear all
tic;
global M_ oo_ options_ ys0_ ex0_ estimation_info
options_ = [];
M_.fname = 'mod_KR02LL';
%
% Some global variables initialization
%
global_initialization;
diary off;
diary('mod_KR02LL.log');
M_.exo_names = 'xsi_A';
M_.exo_names_tex = 'xsi\_A';
M_.exo_names_long = 'xsi_A';
M_.endo_names = 'A';
M_.endo_names_tex = 'A';
M_.endo_names_long = 'A';
M_.endo_names = char(M_.endo_names, 'y');
M_.endo_names_tex = char(M_.endo_names_tex, 'y');
M_.endo_names_long = char(M_.endo_names_long, 'y');
M_.endo_names = char(M_.endo_names, 'c');
M_.endo_names_tex = char(M_.endo_names_tex, 'c');
M_.endo_names_long = char(M_.endo_names_long, 'c');
M_.endo_names = char(M_.endo_names, 'r');
M_.endo_names_tex = char(M_.endo_names_tex, 'r');
M_.endo_names_long = char(M_.endo_names_long, 'r');
M_.endo_names = char(M_.endo_names, 'w');
M_.endo_names_tex = char(M_.endo_names_tex, 'w');
M_.endo_names_long = char(M_.endo_names_long, 'w');
M_.endo_names = char(M_.endo_names, 'k');
M_.endo_names_tex = char(M_.endo_names_tex, 'k');
M_.endo_names_long = char(M_.endo_names_long, 'k');
M_.endo_names = char(M_.endo_names, 'N');
M_.endo_names_tex = char(M_.endo_names_tex, 'N');
M_.endo_names_long = char(M_.endo_names_long, 'N');
M_.endo_names = char(M_.endo_names, 'i');
M_.endo_names_tex = char(M_.endo_names_tex, 'i');
M_.endo_names_long = char(M_.endo_names_long, 'i');
M_.endo_names = char(M_.endo_names, 'output');
M_.endo_names_tex = char(M_.endo_names_tex, 'output');
M_.endo_names_long = char(M_.endo_names_long, 'output');
M_.endo_names = char(M_.endo_names, 'consumption');
M_.endo_names_tex = char(M_.endo_names_tex, 'consumption');
M_.endo_names_long = char(M_.endo_names_long, 'consumption');
M_.endo_names = char(M_.endo_names, 'investment');
M_.endo_names_tex = char(M_.endo_names_tex, 'investment');
M_.endo_names_long = char(M_.endo_names_long, 'investment');
M_.endo_names = char(M_.endo_names, 'labor');
M_.endo_names_tex = char(M_.endo_names_tex, 'labor');
M_.endo_names_long = char(M_.endo_names_long, 'labor');
M_.endo_names = char(M_.endo_names, 'YsuN');
M_.endo_names_tex = char(M_.endo_names_tex, 'YsuN');
M_.endo_names_long = char(M_.endo_names_long, 'YsuN');
M_.endo_names = char(M_.endo_names, 'realwage');
M_.endo_names_tex = char(M_.endo_names_tex, 'realwage');
M_.endo_names_long = char(M_.endo_names_long, 'realwage');
M_.endo_names = char(M_.endo_names, 'nRIR');
M_.endo_names_tex = char(M_.endo_names_tex, 'nRIR');
M_.endo_names_long = char(M_.endo_names_long, 'nRIR');
M_.endo_names = char(M_.endo_names, 'techn');
M_.endo_names_tex = char(M_.endo_names_tex, 'techn');
M_.endo_names_long = char(M_.endo_names_long, 'techn');
M_.endo_names = char(M_.endo_names, 'capital');
M_.endo_names_tex = char(M_.endo_names_tex, 'capital');
M_.endo_names_long = char(M_.endo_names_long, 'capital');
M_.param_names = 'SS_A';
M_.param_names_tex = 'Ass';
M_.param_names_long = 'SS_A';
M_.param_names = char(M_.param_names, 'SS_y');
M_.param_names_tex = char(M_.param_names_tex, 'Yss');
M_.param_names_long = char(M_.param_names_long, 'SS_y');
M_.param_names = char(M_.param_names, 'SS_c');
M_.param_names_tex = char(M_.param_names_tex, 'Css');
M_.param_names_long = char(M_.param_names_long, 'SS_c');
M_.param_names = char(M_.param_names, 'SS_k');
M_.param_names_tex = char(M_.param_names_tex, 'Kss');
M_.param_names_long = char(M_.param_names_long, 'SS_k');
M_.param_names = char(M_.param_names, 'SS_r');
M_.param_names_tex = char(M_.param_names_tex, 'Rss');
M_.param_names_long = char(M_.param_names_long, 'SS_r');
M_.param_names = char(M_.param_names, 'SS_w');
M_.param_names_tex = char(M_.param_names_tex, 'Wss');
M_.param_names_long = char(M_.param_names_long, 'SS_w');
M_.param_names = char(M_.param_names, 'SS_N');
M_.param_names_tex = char(M_.param_names_tex, 'Nss');
M_.param_names_long = char(M_.param_names_long, 'SS_N');
M_.param_names = char(M_.param_names, 'SS_i');
M_.param_names_tex = char(M_.param_names_tex, 'Iss');
M_.param_names_long = char(M_.param_names_long, 'SS_i');
M_.param_names = char(M_.param_names, 'alpha');
M_.param_names_tex = char(M_.param_names_tex, '\alpha');
M_.param_names_long = char(M_.param_names_long, 'alpha');
M_.param_names = char(M_.param_names, 'beta');
M_.param_names_tex = char(M_.param_names_tex, '\beta');
M_.param_names_long = char(M_.param_names_long, 'beta');
M_.param_names = char(M_.param_names, 'gamma');
M_.param_names_tex = char(M_.param_names_tex, '\gamma');
M_.param_names_long = char(M_.param_names_long, 'gamma');
M_.param_names = char(M_.param_names, 'delta');
M_.param_names_tex = char(M_.param_names_tex, '\delta');
M_.param_names_long = char(M_.param_names_long, 'delta');
M_.param_names = char(M_.param_names, 'rho_A');
M_.param_names_tex = char(M_.param_names_tex, '\rho_a');
M_.param_names_long = char(M_.param_names_long, 'rho_A');
M_.param_names = char(M_.param_names, 'theta');
M_.param_names_tex = char(M_.param_names_tex, '\theta');
M_.param_names_long = char(M_.param_names_long, 'theta');
M_.exo_det_nbr = 0;
M_.exo_nbr = 1;
M_.endo_nbr = 17;
M_.param_nbr = 14;
M_.orig_endo_nbr = 17;
M_.aux_vars = [];
M_.predetermined_variables = [ 6 ];
M_.Sigma_e = zeros(1, 1);
M_.Correlation_matrix = eye(1, 1);
M_.H = 0;
M_.Correlation_matrix_ME = 1;
M_.sigma_e_is_diagonal = 1;
options_.linear = 1;
options_.block=0;
options_.bytecode=0;
options_.use_dll=0;
erase_compiled_function('mod_KR02LL_static');
erase_compiled_function('mod_KR02LL_dynamic');
M_.lead_lag_incidence = [
 1 3 20;
 0 4 0;
 0 5 21;
 0 6 0;
 0 7 0;
 2 8 0;
 0 9 22;
 0 10 0;
 0 11 0;
 0 12 0;
 0 13 0;
 0 14 0;
 0 15 0;
 0 16 0;
 0 17 0;
 0 18 0;
 0 19 0;]';
M_.nstatic = 13;
M_.nfwrd   = 2;
M_.npred   = 1;
M_.nboth   = 1;
M_.nsfwrd   = 3;
M_.nspred   = 2;
M_.ndynamic   = 4;
M_.equations_tags = {
};
M_.static_and_dynamic_models_differ = 0;
M_.exo_names_orig_ord = [1:1];
M_.maximum_lag = 1;
M_.maximum_lead = 1;
M_.maximum_endo_lag = 1;
M_.maximum_endo_lead = 1;
oo_.steady_state = zeros(17, 1);
M_.maximum_exo_lag = 0;
M_.maximum_exo_lead = 0;
oo_.exo_steady_state = zeros(1, 1);
M_.params = NaN(14, 1);
M_.NNZDerivatives = zeros(3, 1);
M_.NNZDerivatives(1) = 46;
M_.NNZDerivatives(2) = -1;
M_.NNZDerivatives(3) = -1;
vect=paramarray2();
M_.params( 1 ) = vect(1);
SS_A = M_.params( 1 );
M_.params( 2 ) = vect(2);
SS_y = M_.params( 2 );
M_.params( 3 ) = vect(3);
SS_c = M_.params( 3 );
M_.params( 4 ) = vect(4);
SS_k = M_.params( 4 );
M_.params( 5 ) = vect(5);
SS_r = M_.params( 5 );
M_.params( 6 ) = vect(6);
SS_w = M_.params( 6 );
M_.params( 7 ) = vect(7);
SS_N = M_.params( 7 );
M_.params( 9 ) = vect(8);
alpha = M_.params( 9 );
M_.params( 10 ) = vect(9);
beta = M_.params( 10 );
M_.params( 11 ) = vect(10);
gamma = M_.params( 11 );
M_.params( 12 ) = vect(11);
delta = M_.params( 12 );
M_.params( 13 ) = vect(12);
rho_A = M_.params( 13 );
M_.params( 14 ) = vect(13);
theta = M_.params( 14 );
M_.params( 8 ) = vect(14);
SS_i = M_.params( 8 );
%
% INITVAL instructions
%
options_.initval_file = 0;
oo_.steady_state( 15 ) = M_.params(5)*100;
if M_.exo_nbr > 0;
	oo_.exo_simul = [ones(M_.maximum_lag,1)*oo_.exo_steady_state'];
end;
if M_.exo_det_nbr > 0;
	oo_.exo_det_simul = [ones(M_.maximum_lag,1)*oo_.exo_det_steady_state'];
end;
model_diagnostics(M_,options_,oo_);
resid(1);
steady;
oo_.dr.eigval = check(M_,options_,oo_);
%
% SHOCKS instructions
%
make_ex_;
M_.exo_det_length = 0;
M_.Sigma_e(1, 1) = (0.0072)^2;
options_.drop = 400;
options_.hp_filter = 1600;
options_.irf = 100;
options_.order = 1;
options_.periods = 100000;
options_.simul_replic = 10;
var_list_=[];
var_list_ = 'output';
var_list_ = char(var_list_, 'consumption');
var_list_ = char(var_list_, 'investment');
var_list_ = char(var_list_, 'labor');
var_list_ = char(var_list_, 'YsuN');
var_list_ = char(var_list_, 'realwage');
var_list_ = char(var_list_, 'nRIR');
var_list_ = char(var_list_, 'techn');
var_list_ = char(var_list_, 'capital');
info = stoch_simul(var_list_);
variables_order= {'y' 'c' 'i' 'N' 'Y/N' 'w' 'r' 'A' 'k'};
variables_order=variables_order';
column_definition={'variable name' 'STD' 'relative STD' 'I° autocorr' 'contemp.Corr(Y,.)'};
AUTOC1=[oo_.autocorr{1,1}(1,1)];
for i=2:length(variables_order)
AUTOC1=[AUTOC1; oo_.autocorr{1,1}(i,i)]; 
end
VAR1=zeros(length(variables_order),1);
for i=1:length(variables_order)
VAR1(i,1)=oo_.var(i,i);
end
STD1=VAR1.^(1/2);
RELSTD1=STD1./STD1(1,1); 
for i=1:length(variables_order)
CORR1(i,1)=oo_.var(1,i)/(oo_.var(1,1)*oo_.var(i,i))^(1/2);
end
compa=[STD1 RELSTD1 AUTOC1 CORR1]
save('mod_KR02LL_results.mat', 'oo_', 'M_', 'options_');
if exist('estim_params_', 'var') == 1
  save('mod_KR02LL_results.mat', 'estim_params_', '-append');
end
if exist('bayestopt_', 'var') == 1
  save('mod_KR02LL_results.mat', 'bayestopt_', '-append');
end
if exist('dataset_', 'var') == 1
  save('mod_KR02LL_results.mat', 'dataset_', '-append');
end
if exist('estimation_info', 'var') == 1
  save('mod_KR02LL_results.mat', 'estimation_info', '-append');
end


disp(['Total computing time : ' dynsec2hms(toc) ]);
if ~isempty(lastwarn)
  disp('Note: warning(s) encountered in MATLAB/Octave code')
end
diary off
