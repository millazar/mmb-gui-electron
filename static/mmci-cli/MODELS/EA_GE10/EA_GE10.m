%
% Status : main Dynare file
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

if isoctave || matlab_ver_less_than('8.6')
    clear all
else
    clearvars -global
    clear_persistent_variables(fileparts(which('dynare')), false)
end
tic0 = tic;
% Save empty dates and dseries objects in memory.
dates('initialize');
dseries('initialize');
% Define global variables.
global M_ options_ oo_ estim_params_ bayestopt_ dataset_ dataset_info estimation_info ys0_ ex0_
options_ = [];
M_.fname = 'EA_GE10';
M_.dynare_version = '4.5.6';
oo_.dynare_version = '4.5.6';
options_.dynare_version = '4.5.6';
%
% Some global variables initialization
%
global_initialization;
diary off;
diary('EA_GE10.log');
M_.exo_names = 'ux';
M_.exo_names_tex = 'ux';
M_.exo_names_long = 'ux';
M_.exo_names = char(M_.exo_names, 'ub');
M_.exo_names_tex = char(M_.exo_names_tex, 'ub');
M_.exo_names_long = char(M_.exo_names_long, 'ub');
M_.exo_names = char(M_.exo_names, 'ul');
M_.exo_names_tex = char(M_.exo_names_tex, 'ul');
M_.exo_names_long = char(M_.exo_names_long, 'ul');
M_.exo_names = char(M_.exo_names, 'ua');
M_.exo_names_tex = char(M_.exo_names_tex, 'ua');
M_.exo_names_long = char(M_.exo_names_long, 'ua');
M_.exo_names = char(M_.exo_names, 'ulambdapi');
M_.exo_names_tex = char(M_.exo_names_tex, 'ulambdapi');
M_.exo_names_long = char(M_.exo_names_long, 'ulambdapi');
M_.exo_names = char(M_.exo_names, 'uw');
M_.exo_names_tex = char(M_.exo_names_tex, 'uw');
M_.exo_names_long = char(M_.exo_names_long, 'uw');
M_.exo_names = char(M_.exo_names, 'interest_');
M_.exo_names_tex = char(M_.exo_names_tex, 'interest\_');
M_.exo_names_long = char(M_.exo_names_long, 'interest_');
M_.exo_names = char(M_.exo_names, 'fiscal_');
M_.exo_names_tex = char(M_.exo_names_tex, 'fiscal\_');
M_.exo_names_long = char(M_.exo_names_long, 'fiscal_');
M_.endo_names = 'r';
M_.endo_names_tex = 'r';
M_.endo_names_long = 'r';
M_.endo_names = char(M_.endo_names, 'c');
M_.endo_names_tex = char(M_.endo_names_tex, 'c');
M_.endo_names_long = char(M_.endo_names_long, 'c');
M_.endo_names = char(M_.endo_names, 'l');
M_.endo_names_tex = char(M_.endo_names_tex, 'l');
M_.endo_names_long = char(M_.endo_names_long, 'l');
M_.endo_names = char(M_.endo_names, 'inv');
M_.endo_names_tex = char(M_.endo_names_tex, 'inv');
M_.endo_names_long = char(M_.endo_names_long, 'inv');
M_.endo_names = char(M_.endo_names, 'q');
M_.endo_names_tex = char(M_.endo_names_tex, 'q');
M_.endo_names_long = char(M_.endo_names_long, 'q');
M_.endo_names = char(M_.endo_names, 'k');
M_.endo_names_tex = char(M_.endo_names_tex, 'k');
M_.endo_names_long = char(M_.endo_names_long, 'k');
M_.endo_names = char(M_.endo_names, 'nw');
M_.endo_names_tex = char(M_.endo_names_tex, 'nw');
M_.endo_names_long = char(M_.endo_names_long, 'nw');
M_.endo_names = char(M_.endo_names, 'rk');
M_.endo_names_tex = char(M_.endo_names_tex, 'rk');
M_.endo_names_long = char(M_.endo_names_long, 'rk');
M_.endo_names = char(M_.endo_names, 'y');
M_.endo_names_tex = char(M_.endo_names_tex, 'y');
M_.endo_names_long = char(M_.endo_names_long, 'y');
M_.endo_names = char(M_.endo_names, 'pi');
M_.endo_names_tex = char(M_.endo_names_tex, 'pi');
M_.endo_names_long = char(M_.endo_names_long, 'pi');
M_.endo_names = char(M_.endo_names, 'z');
M_.endo_names_tex = char(M_.endo_names_tex, 'z');
M_.endo_names_long = char(M_.endo_names_long, 'z');
M_.endo_names = char(M_.endo_names, 'mc');
M_.endo_names_tex = char(M_.endo_names_tex, 'mc');
M_.endo_names_long = char(M_.endo_names_long, 'mc');
M_.endo_names = char(M_.endo_names, 'a');
M_.endo_names_tex = char(M_.endo_names_tex, 'a');
M_.endo_names_long = char(M_.endo_names_long, 'a');
M_.endo_names = char(M_.endo_names, 'x');
M_.endo_names_tex = char(M_.endo_names_tex, 'x');
M_.endo_names_long = char(M_.endo_names_long, 'x');
M_.endo_names = char(M_.endo_names, 'eb');
M_.endo_names_tex = char(M_.endo_names_tex, 'eb');
M_.endo_names_long = char(M_.endo_names_long, 'eb');
M_.endo_names = char(M_.endo_names, 'el');
M_.endo_names_tex = char(M_.endo_names_tex, 'el');
M_.endo_names_long = char(M_.endo_names_long, 'el');
M_.endo_names = char(M_.endo_names, 'S');
M_.endo_names_tex = char(M_.endo_names_tex, 'S');
M_.endo_names_long = char(M_.endo_names_long, 'S');
M_.endo_names = char(M_.endo_names, 'g');
M_.endo_names_tex = char(M_.endo_names_tex, 'g');
M_.endo_names_long = char(M_.endo_names_long, 'g');
M_.endo_names = char(M_.endo_names, 'rn');
M_.endo_names_tex = char(M_.endo_names_tex, 'rn');
M_.endo_names_long = char(M_.endo_names_long, 'rn');
M_.endo_names = char(M_.endo_names, 'wp');
M_.endo_names_tex = char(M_.endo_names_tex, 'wp');
M_.endo_names_long = char(M_.endo_names_long, 'wp');
M_.endo_names = char(M_.endo_names, 'EMP');
M_.endo_names_tex = char(M_.endo_names_tex, 'EMP');
M_.endo_names_long = char(M_.endo_names_long, 'EMP');
M_.endo_names = char(M_.endo_names, 'ypot');
M_.endo_names_tex = char(M_.endo_names_tex, 'ypot');
M_.endo_names_long = char(M_.endo_names_long, 'ypot');
M_.endo_names = char(M_.endo_names, 'cf');
M_.endo_names_tex = char(M_.endo_names_tex, 'cf');
M_.endo_names_long = char(M_.endo_names_long, 'cf');
M_.endo_names = char(M_.endo_names, 'invf');
M_.endo_names_tex = char(M_.endo_names_tex, 'invf');
M_.endo_names_long = char(M_.endo_names_long, 'invf');
M_.endo_names = char(M_.endo_names, 'qf');
M_.endo_names_tex = char(M_.endo_names_tex, 'qf');
M_.endo_names_long = char(M_.endo_names_long, 'qf');
M_.endo_names = char(M_.endo_names, 'rkf');
M_.endo_names_tex = char(M_.endo_names_tex, 'rkf');
M_.endo_names_long = char(M_.endo_names_long, 'rkf');
M_.endo_names = char(M_.endo_names, 'rf');
M_.endo_names_tex = char(M_.endo_names_tex, 'rf');
M_.endo_names_long = char(M_.endo_names_long, 'rf');
M_.endo_names = char(M_.endo_names, 'kf');
M_.endo_names_tex = char(M_.endo_names_tex, 'kf');
M_.endo_names_long = char(M_.endo_names_long, 'kf');
M_.endo_names = char(M_.endo_names, 'wpf');
M_.endo_names_tex = char(M_.endo_names_tex, 'wpf');
M_.endo_names_long = char(M_.endo_names_long, 'wpf');
M_.endo_names = char(M_.endo_names, 'lf');
M_.endo_names_tex = char(M_.endo_names_tex, 'lf');
M_.endo_names_long = char(M_.endo_names_long, 'lf');
M_.endo_names = char(M_.endo_names, 'zf');
M_.endo_names_tex = char(M_.endo_names_tex, 'zf');
M_.endo_names_long = char(M_.endo_names_long, 'zf');
M_.endo_names = char(M_.endo_names, 'mcf');
M_.endo_names_tex = char(M_.endo_names_tex, 'mcf');
M_.endo_names_long = char(M_.endo_names_long, 'mcf');
M_.endo_names = char(M_.endo_names, 'ug');
M_.endo_names_tex = char(M_.endo_names_tex, 'ug');
M_.endo_names_long = char(M_.endo_names_long, 'ug');
M_.endo_names = char(M_.endo_names, 'interest');
M_.endo_names_tex = char(M_.endo_names_tex, 'interest');
M_.endo_names_long = char(M_.endo_names_long, 'interest');
M_.endo_names = char(M_.endo_names, 'inflation');
M_.endo_names_tex = char(M_.endo_names_tex, 'inflation');
M_.endo_names_long = char(M_.endo_names_long, 'inflation');
M_.endo_names = char(M_.endo_names, 'inflationq');
M_.endo_names_tex = char(M_.endo_names_tex, 'inflationq');
M_.endo_names_long = char(M_.endo_names_long, 'inflationq');
M_.endo_names = char(M_.endo_names, 'output');
M_.endo_names_tex = char(M_.endo_names_tex, 'output');
M_.endo_names_long = char(M_.endo_names_long, 'output');
M_.endo_names = char(M_.endo_names, 'outputgap');
M_.endo_names_tex = char(M_.endo_names_tex, 'outputgap');
M_.endo_names_long = char(M_.endo_names_long, 'outputgap');
M_.endo_names = char(M_.endo_names, 'fispol');
M_.endo_names_tex = char(M_.endo_names_tex, 'fispol');
M_.endo_names_long = char(M_.endo_names_long, 'fispol');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_78');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_78');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LEAD_78');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_82');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_82');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LEAD_82');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_86');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_86');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LEAD_86');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_113');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_113');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LEAD_113');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_117');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_117');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LEAD_117');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_121');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_121');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LEAD_121');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_148');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_148');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LEAD_148');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_152');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_152');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LEAD_152');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_156');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_156');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LEAD_156');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_9_1');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_9\_1');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_9_1');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_9_2');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_9\_2');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_9_2');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_36_1');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_36\_1');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_36_1');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_36_2');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_36\_2');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_36_2');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_36_3');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_36\_3');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_36_3');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_37_1');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_37\_1');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_37_1');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_37_2');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_37\_2');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_37_2');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_37_3');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_37\_3');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_37_3');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_33_1');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_33\_1');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_33_1');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_33_2');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_33\_2');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_33_2');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_33_3');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_33\_3');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_33_3');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_35_1');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_35\_1');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_35_1');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_35_2');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_35\_2');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_35_2');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_35_3');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_35\_3');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_35_3');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_4_1');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_4\_1');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_4_1');
M_.endo_partitions = struct();
M_.param_names = 'cofintintb1';
M_.param_names_tex = 'cofintintb1';
M_.param_names_long = 'cofintintb1';
M_.param_names = char(M_.param_names, 'cofintintb2');
M_.param_names_tex = char(M_.param_names_tex, 'cofintintb2');
M_.param_names_long = char(M_.param_names_long, 'cofintintb2');
M_.param_names = char(M_.param_names, 'cofintintb3');
M_.param_names_tex = char(M_.param_names_tex, 'cofintintb3');
M_.param_names_long = char(M_.param_names_long, 'cofintintb3');
M_.param_names = char(M_.param_names, 'cofintintb4');
M_.param_names_tex = char(M_.param_names_tex, 'cofintintb4');
M_.param_names_long = char(M_.param_names_long, 'cofintintb4');
M_.param_names = char(M_.param_names, 'cofintinf0');
M_.param_names_tex = char(M_.param_names_tex, 'cofintinf0');
M_.param_names_long = char(M_.param_names_long, 'cofintinf0');
M_.param_names = char(M_.param_names, 'cofintinfb1');
M_.param_names_tex = char(M_.param_names_tex, 'cofintinfb1');
M_.param_names_long = char(M_.param_names_long, 'cofintinfb1');
M_.param_names = char(M_.param_names, 'cofintinfb2');
M_.param_names_tex = char(M_.param_names_tex, 'cofintinfb2');
M_.param_names_long = char(M_.param_names_long, 'cofintinfb2');
M_.param_names = char(M_.param_names, 'cofintinfb3');
M_.param_names_tex = char(M_.param_names_tex, 'cofintinfb3');
M_.param_names_long = char(M_.param_names_long, 'cofintinfb3');
M_.param_names = char(M_.param_names, 'cofintinfb4');
M_.param_names_tex = char(M_.param_names_tex, 'cofintinfb4');
M_.param_names_long = char(M_.param_names_long, 'cofintinfb4');
M_.param_names = char(M_.param_names, 'cofintinff1');
M_.param_names_tex = char(M_.param_names_tex, 'cofintinff1');
M_.param_names_long = char(M_.param_names_long, 'cofintinff1');
M_.param_names = char(M_.param_names, 'cofintinff2');
M_.param_names_tex = char(M_.param_names_tex, 'cofintinff2');
M_.param_names_long = char(M_.param_names_long, 'cofintinff2');
M_.param_names = char(M_.param_names, 'cofintinff3');
M_.param_names_tex = char(M_.param_names_tex, 'cofintinff3');
M_.param_names_long = char(M_.param_names_long, 'cofintinff3');
M_.param_names = char(M_.param_names, 'cofintinff4');
M_.param_names_tex = char(M_.param_names_tex, 'cofintinff4');
M_.param_names_long = char(M_.param_names_long, 'cofintinff4');
M_.param_names = char(M_.param_names, 'cofintout');
M_.param_names_tex = char(M_.param_names_tex, 'cofintout');
M_.param_names_long = char(M_.param_names_long, 'cofintout');
M_.param_names = char(M_.param_names, 'cofintoutb1');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutb1');
M_.param_names_long = char(M_.param_names_long, 'cofintoutb1');
M_.param_names = char(M_.param_names, 'cofintoutb2');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutb2');
M_.param_names_long = char(M_.param_names_long, 'cofintoutb2');
M_.param_names = char(M_.param_names, 'cofintoutb3');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutb3');
M_.param_names_long = char(M_.param_names_long, 'cofintoutb3');
M_.param_names = char(M_.param_names, 'cofintoutb4');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutb4');
M_.param_names_long = char(M_.param_names_long, 'cofintoutb4');
M_.param_names = char(M_.param_names, 'cofintoutf1');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutf1');
M_.param_names_long = char(M_.param_names_long, 'cofintoutf1');
M_.param_names = char(M_.param_names, 'cofintoutf2');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutf2');
M_.param_names_long = char(M_.param_names_long, 'cofintoutf2');
M_.param_names = char(M_.param_names, 'cofintoutf3');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutf3');
M_.param_names_long = char(M_.param_names_long, 'cofintoutf3');
M_.param_names = char(M_.param_names, 'cofintoutf4');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutf4');
M_.param_names_long = char(M_.param_names_long, 'cofintoutf4');
M_.param_names = char(M_.param_names, 'cofintoutp');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutp');
M_.param_names_long = char(M_.param_names_long, 'cofintoutp');
M_.param_names = char(M_.param_names, 'cofintoutpb1');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutpb1');
M_.param_names_long = char(M_.param_names_long, 'cofintoutpb1');
M_.param_names = char(M_.param_names, 'cofintoutpb2');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutpb2');
M_.param_names_long = char(M_.param_names_long, 'cofintoutpb2');
M_.param_names = char(M_.param_names, 'cofintoutpb3');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutpb3');
M_.param_names_long = char(M_.param_names_long, 'cofintoutpb3');
M_.param_names = char(M_.param_names, 'cofintoutpb4');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutpb4');
M_.param_names_long = char(M_.param_names_long, 'cofintoutpb4');
M_.param_names = char(M_.param_names, 'cofintoutpf1');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutpf1');
M_.param_names_long = char(M_.param_names_long, 'cofintoutpf1');
M_.param_names = char(M_.param_names, 'cofintoutpf2');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutpf2');
M_.param_names_long = char(M_.param_names_long, 'cofintoutpf2');
M_.param_names = char(M_.param_names, 'cofintoutpf3');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutpf3');
M_.param_names_long = char(M_.param_names_long, 'cofintoutpf3');
M_.param_names = char(M_.param_names, 'cofintoutpf4');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutpf4');
M_.param_names_long = char(M_.param_names_long, 'cofintoutpf4');
M_.param_names = char(M_.param_names, 'std_r_');
M_.param_names_tex = char(M_.param_names_tex, 'std\_r\_');
M_.param_names_long = char(M_.param_names_long, 'std_r_');
M_.param_names = char(M_.param_names, 'std_r_quart');
M_.param_names_tex = char(M_.param_names_tex, 'std\_r\_quart');
M_.param_names_long = char(M_.param_names_long, 'std_r_quart');
M_.param_names = char(M_.param_names, 'coffispol');
M_.param_names_tex = char(M_.param_names_tex, 'coffispol');
M_.param_names_long = char(M_.param_names_long, 'coffispol');
M_.param_names = char(M_.param_names, 'alpha');
M_.param_names_tex = char(M_.param_names_tex, 'alpha');
M_.param_names_long = char(M_.param_names_long, 'alpha');
M_.param_names = char(M_.param_names, 'beta');
M_.param_names_tex = char(M_.param_names_tex, 'beta');
M_.param_names_long = char(M_.param_names_long, 'beta');
M_.param_names = char(M_.param_names, 'delta');
M_.param_names_tex = char(M_.param_names_tex, 'delta');
M_.param_names_long = char(M_.param_names_long, 'delta');
M_.param_names = char(M_.param_names, 'theta');
M_.param_names_tex = char(M_.param_names_tex, 'theta');
M_.param_names_long = char(M_.param_names_long, 'theta');
M_.param_names = char(M_.param_names, 'RR');
M_.param_names_tex = char(M_.param_names_tex, 'RR');
M_.param_names_long = char(M_.param_names_long, 'RR');
M_.param_names = char(M_.param_names, 'S_ss');
M_.param_names_tex = char(M_.param_names_tex, 'S\_ss');
M_.param_names_long = char(M_.param_names_long, 'S_ss');
M_.param_names = char(M_.param_names, 'rhob');
M_.param_names_tex = char(M_.param_names_tex, 'rhob');
M_.param_names_long = char(M_.param_names_long, 'rhob');
M_.param_names = char(M_.param_names, 'vkappa');
M_.param_names_tex = char(M_.param_names_tex, 'vkappa');
M_.param_names_long = char(M_.param_names_long, 'vkappa');
M_.param_names = char(M_.param_names, 'thetae');
M_.param_names_tex = char(M_.param_names_tex, 'thetae');
M_.param_names_long = char(M_.param_names_long, 'thetae');
M_.param_names = char(M_.param_names, 'phim');
M_.param_names_tex = char(M_.param_names_tex, 'phim');
M_.param_names_long = char(M_.param_names_long, 'phim');
M_.param_names = char(M_.param_names, 'rhol');
M_.param_names_tex = char(M_.param_names_tex, 'rhol');
M_.param_names_long = char(M_.param_names_long, 'rhol');
M_.param_names = char(M_.param_names, 'rhox');
M_.param_names_tex = char(M_.param_names_tex, 'rhox');
M_.param_names_long = char(M_.param_names_long, 'rhox');
M_.param_names = char(M_.param_names, 'rhopi');
M_.param_names_tex = char(M_.param_names_tex, 'rhopi');
M_.param_names_long = char(M_.param_names_long, 'rhopi');
M_.param_names = char(M_.param_names, 'rhoa');
M_.param_names_tex = char(M_.param_names_tex, 'rhoa');
M_.param_names_long = char(M_.param_names_long, 'rhoa');
M_.param_names = char(M_.param_names, 'NWK');
M_.param_names_tex = char(M_.param_names_tex, 'NWK');
M_.param_names_long = char(M_.param_names_long, 'NWK');
M_.param_names = char(M_.param_names, 'KNW');
M_.param_names_tex = char(M_.param_names_tex, 'KNW');
M_.param_names_long = char(M_.param_names_long, 'KNW');
M_.param_names = char(M_.param_names, 'Rk');
M_.param_names_tex = char(M_.param_names_tex, 'Rk');
M_.param_names_long = char(M_.param_names_long, 'Rk');
M_.param_names = char(M_.param_names, 'xie');
M_.param_names_tex = char(M_.param_names_tex, 'xie');
M_.param_names_long = char(M_.param_names_long, 'xie');
M_.param_names = char(M_.param_names, 'rpi');
M_.param_names_tex = char(M_.param_names_tex, 'rpi');
M_.param_names_long = char(M_.param_names_long, 'rpi');
M_.param_names = char(M_.param_names, 'ry');
M_.param_names_tex = char(M_.param_names_tex, 'ry');
M_.param_names_long = char(M_.param_names_long, 'ry');
M_.param_names = char(M_.param_names, 'h');
M_.param_names_tex = char(M_.param_names_tex, 'h');
M_.param_names_long = char(M_.param_names_long, 'h');
M_.param_names = char(M_.param_names, 'rhog');
M_.param_names_tex = char(M_.param_names_tex, 'rhog');
M_.param_names_long = char(M_.param_names_long, 'rhog');
M_.param_names = char(M_.param_names, 'sigmal');
M_.param_names_tex = char(M_.param_names_tex, 'sigmal');
M_.param_names_long = char(M_.param_names_long, 'sigmal');
M_.param_names = char(M_.param_names, 'sigmac');
M_.param_names_tex = char(M_.param_names_tex, 'sigmac');
M_.param_names_long = char(M_.param_names_long, 'sigmac');
M_.param_names = char(M_.param_names, 'cw');
M_.param_names_tex = char(M_.param_names_tex, 'cw');
M_.param_names_long = char(M_.param_names_long, 'cw');
M_.param_names = char(M_.param_names, 'gammaw');
M_.param_names_tex = char(M_.param_names_tex, 'gammaw');
M_.param_names_long = char(M_.param_names_long, 'gammaw');
M_.param_names = char(M_.param_names, 'lambdaw');
M_.param_names_tex = char(M_.param_names_tex, 'lambdaw');
M_.param_names_long = char(M_.param_names_long, 'lambdaw');
M_.param_names = char(M_.param_names, 'gammapi');
M_.param_names_tex = char(M_.param_names_tex, 'gammapi');
M_.param_names_long = char(M_.param_names_long, 'gammapi');
M_.param_names = char(M_.param_names, 'pis');
M_.param_names_tex = char(M_.param_names_tex, 'pis');
M_.param_names_long = char(M_.param_names_long, 'pis');
M_.param_names = char(M_.param_names, 'FI');
M_.param_names_tex = char(M_.param_names_tex, 'FI');
M_.param_names_long = char(M_.param_names_long, 'FI');
M_.param_names = char(M_.param_names, 'phi');
M_.param_names_tex = char(M_.param_names_tex, 'phi');
M_.param_names_long = char(M_.param_names_long, 'phi');
M_.param_names = char(M_.param_names, 'rdeltapi');
M_.param_names_tex = char(M_.param_names_tex, 'rdeltapi');
M_.param_names_long = char(M_.param_names_long, 'rdeltapi');
M_.param_names = char(M_.param_names, 'rdeltay');
M_.param_names_tex = char(M_.param_names_tex, 'rdeltay');
M_.param_names_long = char(M_.param_names_long, 'rdeltay');
M_.param_names = char(M_.param_names, 'GAMMA');
M_.param_names_tex = char(M_.param_names_tex, 'GAMMA');
M_.param_names_long = char(M_.param_names_long, 'GAMMA');
M_.param_names = char(M_.param_names, 'thetaest');
M_.param_names_tex = char(M_.param_names_tex, 'thetaest');
M_.param_names_long = char(M_.param_names_long, 'thetaest');
M_.param_names = char(M_.param_names, 'c_y');
M_.param_names_tex = char(M_.param_names_tex, 'c\_y');
M_.param_names_long = char(M_.param_names_long, 'c_y');
M_.param_names = char(M_.param_names, 'gz');
M_.param_names_tex = char(M_.param_names_tex, 'gz');
M_.param_names_long = char(M_.param_names_long, 'gz');
M_.param_names = char(M_.param_names, 'Z_ss');
M_.param_names_tex = char(M_.param_names_tex, 'Z\_ss');
M_.param_names_long = char(M_.param_names_long, 'Z_ss');
M_.param_names = char(M_.param_names, 'mc_ss');
M_.param_names_tex = char(M_.param_names_tex, 'mc\_ss');
M_.param_names_long = char(M_.param_names_long, 'mc_ss');
M_.param_names = char(M_.param_names, 'abar');
M_.param_names_tex = char(M_.param_names_tex, 'abar');
M_.param_names_long = char(M_.param_names_long, 'abar');
M_.param_names = char(M_.param_names, 'w_ss');
M_.param_names_tex = char(M_.param_names_tex, 'w\_ss');
M_.param_names_long = char(M_.param_names_long, 'w_ss');
M_.param_names = char(M_.param_names, 'l_k');
M_.param_names_tex = char(M_.param_names_tex, 'l\_k');
M_.param_names_long = char(M_.param_names_long, 'l_k');
M_.param_names = char(M_.param_names, 'k_y');
M_.param_names_tex = char(M_.param_names_tex, 'k\_y');
M_.param_names_long = char(M_.param_names_long, 'k_y');
M_.param_names = char(M_.param_names, 'inv_y');
M_.param_names_tex = char(M_.param_names_tex, 'inv\_y');
M_.param_names_long = char(M_.param_names_long, 'inv_y');
M_.param_names = char(M_.param_names, 'GY');
M_.param_names_tex = char(M_.param_names_tex, 'GY');
M_.param_names_long = char(M_.param_names_long, 'GY');
M_.param_names = char(M_.param_names, 'c_kap');
M_.param_names_tex = char(M_.param_names_tex, 'c\_kap');
M_.param_names_long = char(M_.param_names_long, 'c_kap');
M_.param_names = char(M_.param_names, 'kap_ss');
M_.param_names_tex = char(M_.param_names_tex, 'kap\_ss');
M_.param_names_long = char(M_.param_names_long, 'kap_ss');
M_.param_names = char(M_.param_names, 'cons_ss');
M_.param_names_tex = char(M_.param_names_tex, 'cons\_ss');
M_.param_names_long = char(M_.param_names_long, 'cons_ss');
M_.param_names = char(M_.param_names, 'inv_ss');
M_.param_names_tex = char(M_.param_names_tex, 'inv\_ss');
M_.param_names_long = char(M_.param_names_long, 'inv_ss');
M_.param_names = char(M_.param_names, 'Y_ss');
M_.param_names_tex = char(M_.param_names_tex, 'Y\_ss');
M_.param_names_long = char(M_.param_names_long, 'Y_ss');
M_.param_names = char(M_.param_names, 'lab_ss');
M_.param_names_tex = char(M_.param_names_tex, 'lab\_ss');
M_.param_names_long = char(M_.param_names_long, 'lab_ss');
M_.param_names = char(M_.param_names, 'KY');
M_.param_names_tex = char(M_.param_names_tex, 'KY');
M_.param_names_long = char(M_.param_names_long, 'KY');
M_.param_names = char(M_.param_names, 'ZF_ss');
M_.param_names_tex = char(M_.param_names_tex, 'ZF\_ss');
M_.param_names_long = char(M_.param_names_long, 'ZF_ss');
M_.param_names = char(M_.param_names, 'mcF_ss');
M_.param_names_tex = char(M_.param_names_tex, 'mcF\_ss');
M_.param_names_long = char(M_.param_names_long, 'mcF_ss');
M_.param_names = char(M_.param_names, 'wF_ss');
M_.param_names_tex = char(M_.param_names_tex, 'wF\_ss');
M_.param_names_long = char(M_.param_names_long, 'wF_ss');
M_.param_names = char(M_.param_names, 'l_kF');
M_.param_names_tex = char(M_.param_names_tex, 'l\_kF');
M_.param_names_long = char(M_.param_names_long, 'l_kF');
M_.param_names = char(M_.param_names, 'k_yF');
M_.param_names_tex = char(M_.param_names_tex, 'k\_yF');
M_.param_names_long = char(M_.param_names_long, 'k_yF');
M_.param_names = char(M_.param_names, 'inv_yF');
M_.param_names_tex = char(M_.param_names_tex, 'inv\_yF');
M_.param_names_long = char(M_.param_names_long, 'inv_yF');
M_.param_names = char(M_.param_names, 'g_yF');
M_.param_names_tex = char(M_.param_names_tex, 'g\_yF');
M_.param_names_long = char(M_.param_names_long, 'g_yF');
M_.param_names = char(M_.param_names, 'c_kF');
M_.param_names_tex = char(M_.param_names_tex, 'c\_kF');
M_.param_names_long = char(M_.param_names_long, 'c_kF');
M_.param_names = char(M_.param_names, 'kapF_ss');
M_.param_names_tex = char(M_.param_names_tex, 'kapF\_ss');
M_.param_names_long = char(M_.param_names_long, 'kapF_ss');
M_.param_names = char(M_.param_names, 'consF_ss');
M_.param_names_tex = char(M_.param_names_tex, 'consF\_ss');
M_.param_names_long = char(M_.param_names_long, 'consF_ss');
M_.param_names = char(M_.param_names, 'invF_ss');
M_.param_names_tex = char(M_.param_names_tex, 'invF\_ss');
M_.param_names_long = char(M_.param_names_long, 'invF_ss');
M_.param_names = char(M_.param_names, 'yF_ss');
M_.param_names_tex = char(M_.param_names_tex, 'yF\_ss');
M_.param_names_long = char(M_.param_names_long, 'yF_ss');
M_.param_names = char(M_.param_names, 'labF_ss');
M_.param_names_tex = char(M_.param_names_tex, 'labF\_ss');
M_.param_names_long = char(M_.param_names_long, 'labF_ss');
M_.param_names = char(M_.param_names, 'KYF');
M_.param_names_tex = char(M_.param_names_tex, 'KYF');
M_.param_names_long = char(M_.param_names_long, 'KYF');
M_.param_partitions = struct();
M_.exo_det_nbr = 0;
M_.exo_nbr = 8;
M_.endo_nbr = 63;
M_.param_nbr = 100;
M_.orig_endo_nbr = 39;
M_.aux_vars(1).endo_index = 40;
M_.aux_vars(1).type = 0;
M_.aux_vars(2).endo_index = 41;
M_.aux_vars(2).type = 0;
M_.aux_vars(3).endo_index = 42;
M_.aux_vars(3).type = 0;
M_.aux_vars(4).endo_index = 43;
M_.aux_vars(4).type = 0;
M_.aux_vars(5).endo_index = 44;
M_.aux_vars(5).type = 0;
M_.aux_vars(6).endo_index = 45;
M_.aux_vars(6).type = 0;
M_.aux_vars(7).endo_index = 46;
M_.aux_vars(7).type = 0;
M_.aux_vars(8).endo_index = 47;
M_.aux_vars(8).type = 0;
M_.aux_vars(9).endo_index = 48;
M_.aux_vars(9).type = 0;
M_.aux_vars(10).endo_index = 49;
M_.aux_vars(10).type = 1;
M_.aux_vars(10).orig_index = 10;
M_.aux_vars(10).orig_lead_lag = -1;
M_.aux_vars(11).endo_index = 50;
M_.aux_vars(11).type = 1;
M_.aux_vars(11).orig_index = 10;
M_.aux_vars(11).orig_lead_lag = -2;
M_.aux_vars(12).endo_index = 51;
M_.aux_vars(12).type = 1;
M_.aux_vars(12).orig_index = 37;
M_.aux_vars(12).orig_lead_lag = -1;
M_.aux_vars(13).endo_index = 52;
M_.aux_vars(13).type = 1;
M_.aux_vars(13).orig_index = 37;
M_.aux_vars(13).orig_lead_lag = -2;
M_.aux_vars(14).endo_index = 53;
M_.aux_vars(14).type = 1;
M_.aux_vars(14).orig_index = 37;
M_.aux_vars(14).orig_lead_lag = -3;
M_.aux_vars(15).endo_index = 54;
M_.aux_vars(15).type = 1;
M_.aux_vars(15).orig_index = 38;
M_.aux_vars(15).orig_lead_lag = -1;
M_.aux_vars(16).endo_index = 55;
M_.aux_vars(16).type = 1;
M_.aux_vars(16).orig_index = 38;
M_.aux_vars(16).orig_lead_lag = -2;
M_.aux_vars(17).endo_index = 56;
M_.aux_vars(17).type = 1;
M_.aux_vars(17).orig_index = 38;
M_.aux_vars(17).orig_lead_lag = -3;
M_.aux_vars(18).endo_index = 57;
M_.aux_vars(18).type = 1;
M_.aux_vars(18).orig_index = 34;
M_.aux_vars(18).orig_lead_lag = -1;
M_.aux_vars(19).endo_index = 58;
M_.aux_vars(19).type = 1;
M_.aux_vars(19).orig_index = 34;
M_.aux_vars(19).orig_lead_lag = -2;
M_.aux_vars(20).endo_index = 59;
M_.aux_vars(20).type = 1;
M_.aux_vars(20).orig_index = 34;
M_.aux_vars(20).orig_lead_lag = -3;
M_.aux_vars(21).endo_index = 60;
M_.aux_vars(21).type = 1;
M_.aux_vars(21).orig_index = 36;
M_.aux_vars(21).orig_lead_lag = -1;
M_.aux_vars(22).endo_index = 61;
M_.aux_vars(22).type = 1;
M_.aux_vars(22).orig_index = 36;
M_.aux_vars(22).orig_lead_lag = -2;
M_.aux_vars(23).endo_index = 62;
M_.aux_vars(23).type = 1;
M_.aux_vars(23).orig_index = 36;
M_.aux_vars(23).orig_lead_lag = -3;
M_.aux_vars(24).endo_index = 63;
M_.aux_vars(24).type = 1;
M_.aux_vars(24).orig_index = 5;
M_.aux_vars(24).orig_lead_lag = -1;
M_.Sigma_e = zeros(8, 8);
M_.Correlation_matrix = eye(8, 8);
M_.H = 0;
M_.Correlation_matrix_ME = 1;
M_.sigma_e_is_diagonal = 1;
M_.det_shocks = [];
options_.block=0;
options_.bytecode=0;
options_.use_dll=0;
M_.hessian_eq_zero = 1;
erase_compiled_function('EA_GE10_static');
erase_compiled_function('EA_GE10_dynamic');
M_.orig_eq_nbr = 39;
M_.eq_nbr = 63;
M_.ramsey_eq_nbr = 0;
M_.set_auxiliary_variables = exist(['./' M_.fname '_set_auxiliary_variables.m'], 'file') == 2;
M_.lead_lag_incidence = [
 1 39 0;
 2 40 102;
 0 41 0;
 3 42 103;
 4 43 0;
 5 44 0;
 6 45 0;
 7 46 104;
 0 47 0;
 8 48 105;
 0 49 0;
 0 50 0;
 9 51 0;
 10 52 0;
 11 53 0;
 12 54 0;
 0 55 0;
 13 56 0;
 0 57 0;
 14 58 106;
 15 59 107;
 0 60 0;
 16 61 108;
 17 62 109;
 18 63 0;
 0 64 110;
 0 65 0;
 19 66 0;
 0 67 0;
 0 68 0;
 0 69 0;
 0 70 0;
 0 71 0;
 20 72 0;
 0 73 0;
 21 74 111;
 22 75 112;
 23 76 113;
 0 77 0;
 0 78 114;
 0 79 115;
 0 80 116;
 0 81 117;
 0 82 118;
 0 83 119;
 0 84 120;
 0 85 121;
 0 86 122;
 24 87 0;
 25 88 0;
 26 89 0;
 27 90 0;
 28 91 0;
 29 92 0;
 30 93 0;
 31 94 0;
 32 95 0;
 33 96 0;
 34 97 0;
 35 98 0;
 36 99 0;
 37 100 0;
 38 101 0;]';
M_.nstatic = 15;
M_.nfwrd   = 10;
M_.npred   = 27;
M_.nboth   = 11;
M_.nsfwrd   = 21;
M_.nspred   = 38;
M_.ndynamic   = 48;
M_.equations_tags = {
};
M_.static_and_dynamic_models_differ = 0;
M_.exo_names_orig_ord = [1:8];
M_.maximum_lag = 1;
M_.maximum_lead = 1;
M_.maximum_endo_lag = 1;
M_.maximum_endo_lead = 1;
oo_.steady_state = zeros(63, 1);
M_.maximum_exo_lag = 0;
M_.maximum_exo_lead = 0;
oo_.exo_steady_state = zeros(8, 1);
M_.params = NaN(100, 1);
M_.NNZDerivatives = [235; 0; -1];
M_.params( 36 ) = 0.99;
beta = M_.params( 36 );
M_.params( 39 ) = 1/M_.params(36);
RR = M_.params( 39 );
M_.params( 37 ) = 0.025;
delta = M_.params( 37 );
M_.params( 40 ) = 1.005;
S_ss = M_.params( 40 );
M_.params( 35 ) = 0.3;
alpha = M_.params( 35 );
M_.params( 51 ) = M_.params(40)*M_.params(39);
Rk = M_.params( 51 );
M_.params( 50 ) = 2;
KNW = M_.params( 50 );
M_.params( 49 ) = 1/M_.params(50);
NWK = M_.params( 49 );
M_.params( 47 ) = 1;
rhopi = M_.params( 47 );
M_.params( 61 ) = 3;
lambdaw = M_.params( 61 );
M_.params( 69 ) = 6;
thetaest = M_.params( 69 );
M_.params( 70 ) = 0.6;
c_y = M_.params( 70 );
M_.params( 71 ) = 1;
gz = M_.params( 71 );
M_.params( 42 ) = 0.0267;
vkappa = M_.params( 42 );
M_.params( 44 ) = 0.9075;
phim = M_.params( 44 );
M_.params( 43 ) = 0.9797;
thetae = M_.params( 43 );
M_.params( 41 ) = 0.8969;
rhob = M_.params( 41 );
M_.params( 45 ) = 0.9707;
rhol = M_.params( 45 );
M_.params( 46 ) = 0.6941;
rhox = M_.params( 46 );
M_.params( 48 ) = 0.9644;
rhoa = M_.params( 48 );
M_.params( 56 ) = 0.8685;
rhog = M_.params( 56 );
M_.params( 53 ) = 1.6633;
rpi = M_.params( 53 );
M_.params( 54 ) = 0.1054;
ry = M_.params( 54 );
M_.params( 55 ) = 0.6551;
h = M_.params( 55 );
M_.params( 57 ) = 2.0183;
sigmal = M_.params( 57 );
M_.params( 58 ) = 1.5081;
sigmac = M_.params( 58 );
M_.params( 60 ) = 0.3892;
gammaw = M_.params( 60 );
M_.params( 62 ) = 0.2784;
gammapi = M_.params( 62 );
M_.params( 59 ) = 0.8768;
cw = M_.params( 59 );
M_.params( 38 ) = 0.8618;
theta = M_.params( 38 );
M_.params( 63 ) = 6.5431;
pis = M_.params( 63 );
M_.params( 65 ) = 0.1657;
phi = M_.params( 65 );
M_.params( 64 ) = 0.0294;
FI = M_.params( 64 );
M_.params( 66 ) = 0.1417;
rdeltapi = M_.params( 66 );
M_.params( 67 ) = 0.2061;
rdeltay = M_.params( 67 );
M_.params( 52 ) = 0.7458;
xie = M_.params( 52 );
M_.params( 72 ) = 1/M_.params(36)*M_.params(40)-1+M_.params(37);
Z_ss = M_.params( 72 );
M_.params( 73 ) = (M_.params(69)-1)/M_.params(69);
mc_ss = M_.params( 73 );
M_.params( 74 ) = M_.params(35)^M_.params(35)*(1-M_.params(35))^(1-M_.params(35));
abar = M_.params( 74 );
M_.params( 75 ) = (M_.params(73)*M_.params(74)/M_.params(72)^M_.params(35))^(1/(1-M_.params(35)));
w_ss = M_.params( 75 );
M_.params( 76 ) = (1-M_.params(35))/M_.params(35)*M_.params(72)/M_.params(71)/M_.params(75);
l_k = M_.params( 76 );
M_.params( 77 ) = M_.params(76)^(M_.params(35)-1)*(1+M_.params(65))*M_.params(71)^M_.params(35);
k_y = M_.params( 77 );
M_.params( 78 ) = (1+M_.params(65))*M_.params(37)*M_.params(76)^(M_.params(35)-1);
inv_y = M_.params( 78 );
M_.params( 79 ) = 1-(M_.params(70)+M_.params(78));
GY = M_.params( 79 );
M_.params( 80 ) = (1-M_.params(79))/(1+M_.params(65))*M_.params(76)^(1-M_.params(35))-M_.params(37);
c_kap = M_.params( 80 );
M_.params( 81 ) = (M_.params(75)*(M_.params(61)-1)/M_.params(61)*((1-M_.params(55))*M_.params(80))^(-M_.params(58))*M_.params(76)^(-M_.params(57)))^(1/(M_.params(58)+M_.params(57)));
kap_ss = M_.params( 81 );
M_.params( 82 ) = M_.params(80)*M_.params(81);
cons_ss = M_.params( 82 );
M_.params( 83 ) = M_.params(37)*M_.params(81);
inv_ss = M_.params( 83 );
M_.params( 84 ) = (M_.params(82)+M_.params(83))/(1-M_.params(79));
Y_ss = M_.params( 84 );
M_.params( 85 ) = M_.params(76)*M_.params(81);
lab_ss = M_.params( 85 );
M_.params( 86 ) = M_.params(81)/M_.params(84);
KY = M_.params( 86 );
M_.params( 87 ) = M_.params(37)+1/M_.params(36)-1;
ZF_ss = M_.params( 87 );
M_.params( 88 ) = (M_.params(69)-1)/M_.params(69);
mcF_ss = M_.params( 88 );
M_.params( 89 ) = (M_.params(74)*M_.params(88)/M_.params(87)^M_.params(35))^(1/(1-M_.params(35)));
wF_ss = M_.params( 89 );
M_.params( 90 ) = (1-M_.params(35))/M_.params(35)*M_.params(87)/M_.params(71)/M_.params(89);
l_kF = M_.params( 90 );
M_.params( 91 ) = M_.params(71)^M_.params(35)*(1+M_.params(65))*M_.params(90)^(M_.params(35)-1);
k_yF = M_.params( 91 );
M_.params( 92 ) = (1+M_.params(65))*M_.params(37)*M_.params(90)^(M_.params(35)-1);
inv_yF = M_.params( 92 );
M_.params( 93 ) = 1-(M_.params(70)+M_.params(92));
g_yF = M_.params( 93 );
M_.params( 94 ) = (1-M_.params(93))/(1+M_.params(65))*M_.params(90)^(1-M_.params(35))-M_.params(37);
c_kF = M_.params( 94 );
M_.params( 95 ) = ((M_.params(61)-1)*M_.params(89)/M_.params(61)*((1-M_.params(55))*M_.params(94))^(-M_.params(58))*M_.params(90)^(-M_.params(57)))^(1/(M_.params(58)+M_.params(57)));
kapF_ss = M_.params( 95 );
M_.params( 96 ) = M_.params(94)*M_.params(95);
consF_ss = M_.params( 96 );
M_.params( 97 ) = M_.params(37)*M_.params(95);
invF_ss = M_.params( 97 );
M_.params( 98 ) = (M_.params(96)+M_.params(97))/(1-M_.params(93));
yF_ss = M_.params( 98 );
M_.params( 99 ) = M_.params(90)*M_.params(95);
labF_ss = M_.params( 99 );
M_.params( 100 ) = M_.params(95)/M_.params(98);
KYF = M_.params( 100 );
thispath = cd;                                                           
cd('..');                                                                
load policy_param.mat;                                                   
for i=1:33                                                               
deep_parameter_name = M_.param_names(i,:);                           
eval(['M_.params(i)  = ' deep_parameter_name ' ;'])                  
end                                                                      
cd(thispath);       
M_.params( 34 ) = 1/M_.params(79);
coffispol = M_.params( 34 );
%
% SHOCKS instructions
%
M_.exo_det_length = 0;
M_.Sigma_e(1, 1) = 0.10478169;
M_.Sigma_e(2, 2) = 0.07102225000000001;
M_.Sigma_e(3, 3) = 2.002225;
M_.Sigma_e(4, 4) = 0.5676115599999999;
M_.Sigma_e(5, 5) = 0.03038049;
M_.Sigma_e(6, 6) = 0.04322241;
M_.Sigma_e(7, 7) = 0;
M_.Sigma_e(8, 8) = 1.55151936;
save('EA_GE10_results.mat', 'oo_', 'M_', 'options_');
if exist('estim_params_', 'var') == 1
  save('EA_GE10_results.mat', 'estim_params_', '-append');
end
if exist('bayestopt_', 'var') == 1
  save('EA_GE10_results.mat', 'bayestopt_', '-append');
end
if exist('dataset_', 'var') == 1
  save('EA_GE10_results.mat', 'dataset_', '-append');
end
if exist('estimation_info', 'var') == 1
  save('EA_GE10_results.mat', 'estimation_info', '-append');
end
if exist('dataset_info', 'var') == 1
  save('EA_GE10_results.mat', 'dataset_info', '-append');
end
if exist('oo_recursive_', 'var') == 1
  save('EA_GE10_results.mat', 'oo_recursive_', '-append');
end


disp(['Total computing time : ' dynsec2hms(toc(tic0)) ]);
if ~isempty(lastwarn)
  disp('Note: warning(s) encountered in MATLAB/Octave code')
end
diary off
