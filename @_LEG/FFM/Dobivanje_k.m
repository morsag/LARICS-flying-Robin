clear all
Broj_podataka=48;
Sile=[0 1 3 5 7 9 11];
Stupnjevi=[0.0000 3.1300 5.9200 8.6000 11.430 14.400 17.190 20.130 23.870 28.340 ...
           32.360 36.110 39.900 43.450 46.870 50.250 53.450 56.700 60.020 63.350 ...
           66.930 71.040 75.320 82.880 86.500 90.420 94.210 98.030 101.94 106.48 ...
           111.98 117.45 122.46 127.04 131.57 136.19 140.94 145.81 150.84 156.27 ...
           161.63 167.25 173.27 179.21 185.34 191.76 199.70 208.31 216.32 225.07];
Lin_skala=0:0.1:Sile(end);
Lin_skala_pomaci=0:0.1:20;

Podaci=cell(Broj_podataka);

%Za crtanje
Broj_redova=7;
Broj_stupaca=7;


  
Kut1 =[0 -0.00068 -0.00187 -0.00270 -0.00285 -0.00209  0.004210; 
       0  0.84557  2.61068  4.52301  6.68597  9.29702  12.94230;
       0  0.72175  2.43230  4.62224  7.50437  11.3818  16.23421];
Kut2 =[0 -0.00058 -0.00159 -0.00228 -0.00238 -0.00135  0.000520; 
       0  0.81731  2.52349  4.37039  6.45272  8.94791  12.18270;
       0  0.70610  2.37339  4.49459  7.26378  10.9554  15.88388];
Kut3 =[0 -0.00052 -0.00141 -0.00197 -0.00198 -0.00890  0.001420; 
       0  0.79258  2.44729  4.23730  6.25037  8.64798  11.72280;
       0  0.69265  2.32289  4.38562  7.05994  10.5968  15.28348];
Kut4 =[0 -0.00047 -0.00125 -0.00175 -0.00161 -0.00050  0.001820; 
       0  0.76930  2.37559  4.11230  6.06090  8.36920  11.30157;
       0  0.68005  2.27571  4.28447  6.87143  10.2673  14.73719];
Kut5 =[0 -0.00041 -0.00108 -0.00142 -0.00122 -0.00027  0.002330;
       0  0.74512  2.30118  3.98275  5.86545  8.08362  10.87723;
       0  0.66716  2.22755  4.18132  6.68087  9.93570  14.19264];
Kut6 =[0 -0.00035 -0.00089 -0.00112 -0.00082  0.00044  0.002730;
       0  0.72035  2.22502  3.85041  5.66649  7.79527  10.44073;
       0  0.65415  2.17906  4.07800  6.49085  9.60768  13.64609];
Kut7 =[0  0.00063  0.00212  0.00405  0.00655  0.01000  0.014340;
       0  0.69587  2.14924  3.71783  5.46607  7.50506  10.01626;
       0  0.63870  2.12304  3.96232  6.28525  9.26743  13.10311];
Kut8 =[0  0.00154  0.00492  0.00883  0.01333  0.01881  0.035220;
       0  0.66693  2.05874  3.55780  5.22192  7.14951  9.499750;
       0  0.61546  2.04135  3.79960  6.00757  8.82474  12.42629];
Kut9 =[0 -0.00142 -0.00422 -0.00685 -0.00910 -0.01068 -0.011370;
       0  0.63889  1.97307  3.41043  5.00393  6.84166  9.064400;
       0  0.60297  1.99430  3.69875  5.82178  8.50449  11.90403];
Kut10=[0 -0.00009 -0.00011  0.00017  0.00090  0.00220  0.006520;
       0  0.61141  1.89068  3.27187  4.80430  6.56750  8.685550;
       0  0.59874  1.97369  3.64487  5.70580  8.27828  11.49686];
Kut11=[0 -0.00002  0.00009  0.00049  0.00132  0.00278  0.006250;
       0  0.58237  1.80175  3.11865  4.57791  6.25018  8.244780;
       0  0.58467  1.92177  3.53638  5.51188  7.95510  10.98614];
Kut12=[0  0.00003  0.00026  0.00077	 0.00168  0.00318  0.006690;
       0  0.55636  1.72208  2.98142	 4.37542  5.96746  7.854230;
       0  0.57188  1.87469  3.43842	 5.33781  7.66751  10.53407];
Kut13=[0  0.00009  0.00041  0.00102	 0.00201  0.00355  0.006580;
       0  0.53110  1.64474  2.84830  4.17936  5.69485  7.480270;
       0  0.55951  1.82920  3.34402	 5.17096  7.39370  10.10646];
Kut14=[0  0.00013  0.00054  0.00122	 0.00226  0.00382  0.006670;
       0  0.50844  1.57537  2.72894	 4.00378  5.45141  7.148070;
       0  0.54837  1.78828  3.25942	 5.02210  7.15083  9.729340];
Kut15=[0  0.00017  0.00065  0.00139	 0.00247  0.00404  0.006700;
       0  0.48776  1.51199  2.61985	 3.84326  5.22897  6.845060;
       0  0.53788  1.74977  3.17985	 4.88248  6.92401  9.378550];
Kut16=[0  0.00020  0.00073  0.00151	 0.00262  0.00418  0.006730;
       0  0.46766  1.45021  2.51312	 3.68572  5.01024  6.547300;
       0  0.52645  1.70835  3.09557	 4.73697  6.69147  9.024630];
Kut17=[0  0.00022  0.00080  0.00161	 0.00274  0.00430  0.006690;
       0  0.45042  1.39743  2.42230	 3.55228  4.82592  6.297790;
       0  0.51768  1.67593  3.02844	 4.61933  6.50119  8.732070];
Kut18=[0  0.00023  0.00084  0.00167  0.00280  0.00432  0.006590;
       0  0.43228  1.34149  2.32541  3.40904  4.62729  6.028850; 
       0  0.50631  1.63530  2.94702  4.48117  6.28456  8.408640];
Kut19=[0  0.00025  0.00087  0.00171	 0.00283  0.00432  0.006260;
       0  0.41521  1.28900  2.23479	 3.27563  4.44323  5.780990;
       0  0.49622  1.59760  2.90110  4.32122  6.01321  8.185340];
Kut20=[0  0.00026  0.00089  0.00174	 0.00285  0.00431  0.006200;
       0  0.39943  1.24061  2.15150  3.15350  4.27557  5.556770;
       0  0.48821  1.56950  2.81338	 4.25193  5.92214  7.863710];
Kut21=[0  0.00025  0.00088  0.00170	 0.00276  0.00415  0.005930;
       0  0.38110  1.18401  2.05349	 3.00906  4.07680  5.291590;
       0  0.47648  1.52822  2.73215	 4.11693  5.71526  7.562240];
Kut22=[0  0.00028  0.00095  0.00180	 0.00289  0.00427  0.006020;
       0  0.36340  1.12984  1.96057	 2.87352  3.89229  5.047950;
       0  0.46809  1.49747  2.66945	 4.00937  5.54580  7.309030];
Kut23=[0  0.00030  0.00101  0.00189	 0.00298  0.00435  0.006040;
       0  0.34424  1.07066  1.85810  2.72266  3.68523  4.772860;
       0  0.45559  1.45343  2.58287	 3.86594  5.32711  6.992140];
Kut24=[0  0.00032  0.00107  0.00198	 0.00309  0.00444  0.006100;
       0  0.32505  1.01113  1.75464	 2.57005  3.47583  4.495670;
       0  0.44146  1.40493  2.48999	 3.71594  5.10410  6.676830];
Kut25=[0  0.00047  0.00151  0.00271	 0.00410  0.00573  0.007630;
       0  0.31227  0.97185  1.68700	 2.47110  3.34102  4.318110;
       0  0.43416  1.37861  2.43730  3.62739  4.96760  6.477340];
Kut26=[0  0.00032  0.00104  0.00191	 0.00296  0.00422  0.005730;
       0  0.29748  0.92588  1.60719  2.35334  3.17945  4.104630;
       0  0.42262  1.33889  2.36138	 3.50501  4.78610  6.221690];
Kut27=[0  0.00032  0.00103  0.00189	 0.00290  0.00411  0.005540;
       0  0.28320  0.88163  1.53041	 2.24030  3.02481  3.900790;
       0  0.41177  1.30140  2.28924	 3.38827  4.61250  5.976500];
Kut28=[0  0.00031  0.00101  0.00183	 0.00280  0.00394  0.005300;
       0  0.26883  0.83691  1.45247	 2.12518  2.86704  3.692860;
       0  0.39921  1.25888  2.20908	 3.26108  4.42699  5.719300];
Kut29=[0  0.00030  0.00098  0.00177	 0.00269  0.00377  0.005040;
       0  0.25624  0.79779  1.38439	 2.02479  2.72967  3.512130;
       0  0.38826  1.22160  2.13847	 3.14864  4.26250  5.490690];
Kut30=[0 -0.00137 -0.00410 -0.00680	-0.00944 -0.01200 -0.014400;
       0  0.24429  0.76074  1.32013	 1.93039  2.60114  3.344020;
       0  0.37843  1.18822  2.07540	 3.04848  4.11644  5.288380];
Kut31=[0  0.00022  0.00340  0.00512	 0.00135  0.00401  0.013958;
       0  0.23219  0.72876  1.24987	 1.81230  2.45955  3.016643;
       0  0.35120  1.12138  1.87425	 2.74234  3.53238  4.643200];
Kut32=[0  0.00074  0.00240  0.00432	 0.00653  0.00904  0.011880;
       0  0.22339  0.69139  1.18961	 1.72017  2.28554  2.887900;
       0  0.32740  1.00177  1.70263	 2.43011  3.18428  3.964710];
Kut33=[0  0.00079  0.00252  0.00449	 0.00671  0.00919  0.011950;
       0  0.20619  0.63680  1.09321	 1.57703  2.09014  2.634170;
       0  0.29874  0.91210  1.54690	 2.20311  2.88073  3.579320];
Kut34=[0  0.00082  0.00261  0.00459	 0.00679  0.00921  0.011880;
       0  0.18976  0.58485  1.00182	 1.44190  1.90651  2.396840;
       0  0.27132  0.82677  1.39944	 1.98925  2.59613  3.219670];
Kut35=[0  0.00083  0.00262  0.00458	 0.00672  0.00906  0.011600;
       0  0.17425  0.53602  0.91637	 1.31622  1.73667  2.178620;
       0  0.24631  0.74936  1.26639	 1.79728  2.34196  2.900080];
Kut36=[0  0.00083  0.00260  0.00452	 0.00660  0.00884  0.011260;
       0  0.16116  0.49490  0.84455	 1.21085  1.59457  1.996590;
       0  0.22467  0.68256  1.15189	 1.63254  2.12438  2.627240];
Kut37=[0  0.00082  0.00255  0.00441	 0.00641  0.00855  0.010830;
       0  0.14888  0.45642  0.77753	 1.11277  1.46274  1.828120;
       0  0.20413  0.61935  1.04385	 1.47752  1.92023  2.371830];
Kut38=[0  0.00079  0.00246  0.00424	 0.00613  0.00814  0.010280;
       0  0.13665  0.41823  0.71119	 1.01612  1.33331  1.663320;
       0  0.18402  0.55765  0.93869	 1.32712  1.72273  2.125420];
Kut39=[0  0.00076  0.00233  0.00400	 0.00577  0.00763  0.009600;
       0  0.12447  0.38029  0.64557	 0.92073  1.20599  1.501710;
       0  0.16419  0.49698  0.83558	 1.17998  1.52998  1.885480];
Kut40=[0  0.00071  0.00217  0.00371	 0.00533  0.00704  0.008820;
       0  0.11238  0.34280  0.58094	 0.82712  1.08149  1.344320;
       0  0.14500  0.43842  0.73631	 1.03866  1.34533  1.656210];
Kut41=[0  0.00065  0.00199  0.00339	 0.00485  0.00638  0.007980;
       0  0.10071  0.30670  0.51890	 0.73752  0.96269  1.194570;
       0  0.12658  0.38229  0.64138	 0.90381  1.16947  1.438280];
Kut42=[0  0.00058  0.00177  0.00302	 0.00431  0.00565  0.007040;
       0  0.08889  0.27023  0.45642	 0.64756  0.84386  1.045310;
       0  0.10839  0.32703  0.54810	 0.77155  0.99740  1.225480];
Kut43=[0  0.00051  0.00155  0.00264	 0.00376  0.00492  0.006120;
       0  0.07774  0.23597  0.39792	 0.56367  0.73335  0.906950;
       0  0.09179  0.27668  0.46330	 0.65161  0.84161  1.033200];
Kut44=[0  0.00043  0.00132  0.00224	 0.00319  0.00417  0.005170;
       0  0.06649  0.20151  0.33929	 0.47989  0.62333  0.769750;
       0  0.07606  0.22909  0.38329	 0.53863  0.69509  0.852680];
Kut45=[0  0.00036  0.00110  0.00187	 0.00265  0.00345  0.004280;
       0  0.05592  0.16923  0.28451	 0.40180  0.52110  0.642500;
       0  0.06130  0.18447  0.30839	 0.43303  0.55838  0.684460];
Kut46=[0  0.00030  0.00090  0.00151	 0.00214  0.00279  0.003450;
       0  0.04577  0.13833  0.23225	 0.32755  0.42424  0.522330;
       0  0.04844  0.14569  0.24340  0.34155  0.44015  0.539160];
Kut47=[0  0.00023  0.00071  0.00120	 0.00170  0.00220  0.002720;
       0  0.03673  0.11087  0.18591	 0.26187  0.33875  0.416550;
       0  0.03732  0.11217  0.18729	 0.26267  0.33830  0.414190];
Kut48=[0  0.00018  0.00055  0.00092	 0.00131  0.00169  0.002090;
       0  0.02842  0.08567  0.14348	 0.20185  0.26079  0.320300;
       0  0.02739  0.08229  0.13732	 0.19249  0.24779  0.303210];




Podaci{1}=Kut1;   Podaci{2}=Kut2;   Podaci{3}=Kut3;   Podaci{4}=Kut4;   Podaci{5}=Kut5;   Podaci{6}=Kut6;
Podaci{7}=Kut7;   Podaci{8}=Kut8;   Podaci{9}=Kut9;   Podaci{10}=Kut10; Podaci{11}=Kut11; Podaci{12}=Kut12;
Podaci{13}=Kut13; Podaci{14}=Kut14; Podaci{15}=Kut15; Podaci{16}=Kut16; Podaci{17}=Kut17; Podaci{18}=Kut18;
Podaci{19}=Kut19; Podaci{20}=Kut20; Podaci{21}=Kut21; Podaci{22}=Kut22; Podaci{23}=Kut23; Podaci{24}=Kut24;
Podaci{25}=Kut25; Podaci{26}=Kut26; Podaci{27}=Kut27; Podaci{28}=Kut28; Podaci{29}=Kut29; Podaci{30}=Kut30;
Podaci{31}=Kut31; Podaci{32}=Kut32; Podaci{33}=Kut33; Podaci{34}=Kut34; Podaci{35}=Kut35; Podaci{36}=Kut36;
Podaci{37}=Kut37; Podaci{38}=Kut38; Podaci{39}=Kut39; Podaci{40}=Kut40; Podaci{41}=Kut41; Podaci{42}=Kut42;
Podaci{43}=Kut43; Podaci{44}=Kut44; Podaci{45}=Kut45; Podaci{46}=Kut46; Podaci{47}=Kut47; Podaci{48}=Kut48;

PolinomskiKoeficjenti=cell(Broj_podataka);
for i=1:Broj_podataka
       for j=1: size(Sile,2)
       Vektori(i,j)=norm(Podaci{i}(:,j));
       end
      
       
       %Dobivanje polinoma prvog reda
       k =Sile' \ Vektori(i,:)';
       %Dobivanje polinoma drugog reda 
       PolinomskiKoeficjenti{i}=fitanje_polinoma(Sile,Vektori(i,:),0,0,2,0);
       Pomaci_plot=polyval(PolinomskiKoeficjenti{i},Lin_skala);
       Stupnjevi_plot=Stupnjevi(i)*pi/180*ones(1,length(Lin_skala));
       [X(i,:), Y(i,:), Z(i,:)]=pol2cart(Stupnjevi_plot, Pomaci_plot, Lin_skala);
       

        subplot(Broj_redova,Broj_stupaca,i), plot(Sile,Vektori(i,:),'--rs','LineWidth',2,'MarkerEdgeColor','k', 'MarkerFaceColor','g','MarkerSize',10)
        xlabel('Sila F [N]')
        ylabel('Pomak \Delta [mm] ')
        title({['Ovisnost pomaka o sili za poziciju ',num2str(i),' = ',num2str(Stupnjevi(i)),'^{\circ}'] ['Dobivena konstanta opruge iznosi k=',num2str(1/k)]})
        hold on
        subplot(Broj_redova,Broj_stupaca,i), plot(Lin_skala,k.*Lin_skala)
        grid on
        axis([0 max(Sile) 0 21])
        
        
end


%% Surface plot with contours

figure('color','white');
polarplot3d(zeros(50,50),'plottype','off','angularrange',[0 230]*pi/180,'radialrange',[.8 20],...
              'polargrid',{10 24},'tickspacing',15);

hold on
meshc(X,Y,Z)
zlabel('Sila')

axis tight
contour(X,Y,Z,50)
colormap

grid on
%   
%    

