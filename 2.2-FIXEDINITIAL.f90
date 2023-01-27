!**********************************************************************************************************************
subroutine FixedInitial
!**********************************************************************************************************************

USE parm
use pprime

IMPLICIT NONE 

INTEGER :: ii,j,k,ni

real temp_air
character *10  datedummy
!**********************************************************************************************************************
!****     !Fixed or initial parameters are being read from the file                                  *******
!**********************************************************************************************************************
            open (10,file=fixedparams,status="old")
                read (10,*) text
                read (10,*) dt,n,ronn,rond,roc,sims
                !read (10,*) dt,n,ronn,rond,roc,lat,d_bound,sims
                !SI::,sims
                read (10,*) text
                !read (10,*) fNw,fNs1,fNs2,fNO3w,fNO3s1,fNO3s2,w,apn,lat,d_bound
                read (10,*) fNw,fNs1,fNs2,fNO3w,fNO3s1,fNO3s2
                
                !read (10,*) fNw,fNs1,fNs2,fNO3w,fNO3s1,fNO3s2,apn
                !ееееее  A╡ir  еееееееее
                read (10,*) text !units
		        read (10,*) apn,lat,amc , lamdaR
                read (10,*) text
                do ii=0,n
                    read (10,*) dn(ii)
                end do
            close(10)
!***********************************************************************
           w=0.2618        ! Angular velocity of earth (15(0C)/h, or pi/12 rad/h)
!***********************************************************************
           d_bound=0
!***********************************************************************
           
!**********************************************************************************************************************
            !This is to read the initial concentrations and then convert to g/cm3
            
            open (11,file=initialconc,status="old")
                read (11,*) text
                read (11,*) text
                read (11,*) ONw(0),ONsf(0),ONss(0),Nw(0),Ns1(0),Ns2(0),NO3w(0),NO3s1(0),NO3s2(0)
                read (11,*) text
                read (11,*) a(0),b(0)
                read (11,*) text
                read (11,*) mw(0), ms(0)
                read (11,*) text
                read (11,*) Ow(0),Pw(0),Ps1(0),Ps2(0)
                !ееееее  A╡ir  ееееее
                read (11,*) text    
                read (11,*) text
                read (11,*) DOCw(0),LPOCw(0),RPOCw(0),DOCs1(0),LPOCs1(0),RPOCs1(0),DOCs2(0),LPOCs2(0),RPOCs2(0),Ch4w(0),Ch4s1(0),ch4s2(0)
            
            close(11)   

!**********************************************************************************************************************
!****            open generated parameters files  ! SI:                                                                    *******
!**********************************************************************************************************************
          !This file includes the generated parameter sets
          open (14,file=generatedparms,status="old")
          read (14,*) text   ! SI: title was inserted to the file 
          
          
          !еееееееееееееееееееее  A╡ir  ееееееееееееееееееееее
          open (15,file=generatedparmcarbon,status="old")
          read (15,*) text
		  read (15,*) text

          !еееееееееееееееееееееееееееееееееееееееееееееееееее

  
!**********************************************************************************************************************
!****            Load initial parameters for new output files  ! SI:                                                                    *******
!**********************************************************************************************************************
           ZOnw(0)=Onw(0)           ; !еееееееееееееееееееее  A╡ir  ееееееееееееееееееееее
           ZOnss(0)=Onss(0)         ; ZDOCw(0)=DOCw(0)  
           ZOnsf(0)=Onsf(0)         ; ZLPOCw(0)=LPOCw(0)
           ZNw(0)=Nw(0)             ; ZRPOCw(0)=RPOCw(0)
           ZNs1(0)=Ns1(0)           ; ZTOCw(0)=ZDOCw(0)+ZLPOCw(0)+ZRPOCw(0)
           ZNs2(0)=Ns2(0)           ; ZDOCs1(0)=DOCs1(0)
           ZNO3w(0)=NO3w(0)         ; ZLPOCs1(0)=LPOCs1(0)
           ZNO3s1(0)=NO3s1(0)       ; ZRPOCs1(0)=RPOCs1(0)
           ZNO3s2(0)=NO3s2(0)       ; ZDOCs2(0)=DOCs2(0)
           ZOw(0)=Ow(0)             ; ZLPOCs2(0)=LPOCs2(0)
           Za(0)=a(0)               ; ZRPOCs2(0)=RPOCs2(0)
           Zb(0)=b(0)               ; ZCH4w(0)=CH4w(0)
           ZPw(0)=Pw(0)             ; ZCH4s1(0)=CH4s1(0)
           ZPs1(0)=Ps1(0)           ; ZCH4s2(0)=CH4s2(0)			
           ZPs2(0)=Ps2(0)           ; ZVw(0)=Vw(0)/1e6   ! this line is just for an test output file. can be eliminated later 						
           Zms(0)=ms(0)              
           Zmw(0)=mw(0)              
!*************************************!еееееееееееееееееееееееееееееееееееееееееееееееееее*********************************************************************************
           
            ONw(0)=ONw(0)*1e-6		!(mg/L to g/cm3 conversion) 
            ONsf(0)= ONsf(0)* 1e-6	!(mg/L to g/cm3 conversion)
            ONss(0)= ONss(0)*1e-6	!(mg/L to g/cm3 conversion)
            Nw(0)=Nw(0)*1e-6		!(mg/L to g/cm3 conversion)
            Ns1(0)=Ns1(0)*1e-6		!(mg/L to g/cm3 conversion)
            Ns2(0)=Ns2(0)*1e-6		!(mg/L to g/cm3 conversion)
            NO3w(0)=NO3w(0)*1e-6	!(mg/L to g/cm3 conversion)
            NO3s1(0)=NO3s1(0)*1e-6  !(mg/L to g/cm3 conversion)
            NO3s2(0)=NO3s2(0)*1e-6  !(mg/L to g/cm3 conversion)
            Ow(0)=Ow(0)*1e-6		!(mg/L to g/cm3 conversion)
            Pw(0)=Pw(0)*1e-6
            Ps1(0)=Ps1(0)*1e-6
            Ps2(0)=Ps2(0)*1e-6
	        mw(0)=mw(0)*1e-6
	        ms(0)=ms(0)
            bofixed=b(0) 

           	!еееееееееееееееееееее  A╡ir  ееееееееееееееееееееее
			DOCw(0)=DOCw(0)*1e-6             !(mg/L to g/cm3 conversion)
			LPOCw(0)=LPOCw(0)*1e-6           !(mg/L to g/cm3 conversion)
			RPOCw(0)=RPOCw(0)*1e-6           !(mg/L to g/cm3 conversion)
			TOCw(0)=DOCw(0)+LPOCw(0)+RPOCw(0)!
			DOCs1(0)=DOCs1(0)*1e-6           !(mg/L to g/cm3 conversion)
			LPOCs1(0)=LPOCs1(0)*1e-6         !(mg/L to g/cm3 conversion)
			RPOCs1(0)=RPOCs1(0)*1e-6         !(mg/L to g/cm3 conversion)
			DOCs2(0)=DOCs2(0)*1e-6           !(mg/L to g/cm3 conversion)
			LPOCs2(0)=LPOCs2(0)*1e-6         !(mg/L to g/cm3 conversion)
			RPOCs2(0)=RPOCs2(0)*1e-6         !(mg/L to g/cm3 conversion)
			CH4w(0)=CH4w(0)*1e-6
			CH4s1(0)=CH4s1(0)*1e-6
			CH4s2(0)=CH4s2(0)*1e-6
			!еееееееееееееееееееееееееееееееееееееееееееееееееее

!**********************************************************************************************************************
        ! Reading reservour and time dependent parameters (hydrologic_parameters)
!**********************************************************************************************************************
            open (12,file=hydro_climparams,status="old")
	            read (12,*) text   ! SI: title was inserted to the file 
                read (12,*) text   ! SI: title was inserted to the file 
                ii=0
                ni=0
                do while(ii<(int((n)/dt+dt/2)+1))
                !do i=0,int((n)/dt+0.01),int(1/dt+0.01)
                    !read (12,*) Qin(ii),Qout(ii),Vw(ii),Area(ii),ET(ii),ip(ii),Qg(ii),Uw(ii)temp(ii)
	                read (12,'(A10)',advance='no') datedummy
	                read (12,*)Qin(ii),Qout(ii),Vw(ii),Area(ii),ET(ii),ip(ii),Qg(ii),Uw(ii),temp_air,temp(ii)
	                H(ii)=Vw(ii)/Area(ii)
	                
	                ni=ni+1
	                ii=int(ni/dt+dt/2)
            end do
            CLOSE(12)
!**********************************************************************************************************************
!**********************************************************************************************************************
            open (13,file=timedepparms,status="old")
                read (13,*) text   ! SI: title was inserted to the file    
                read (13,*) text   ! SI: title was inserted to the file   
            ii=0
            ni=0
            do while(ii<(int(real(n)/dt+dt/2)+1))
            !do i=0,int((n)/dt+0.01) ,int(1/dt+0.01)                                                                                  !еееееееееееееееееееее  A╡ir  ееееееееееееееееееееее
			read (13,'(A10)',advance='no') datedummy
			read (13,*) ONin(ii),NO3in(ii),Nwin(ii),NO3g(ii),Ng(ii),Owin(ii),Pin(ii),Pg(ii), mwin(ii),Nair(ii),NO3Air(ii),Qa(ii),Qn(ii), LPOCin(ii) , RPOCin(ii) , DOCin(ii), DOCatm(ii),TOCgw(ii)
            
                ni=ni+1
	            ii=int(ni/dt+dt/2)
            end do
            CLOSE(13)     
!**********************************************************************************************************************
!**********************************************************************************************************************
         !This is the part we do unit conversion
         ii=0
         ni=0
         do while(ii<(int(real(n)/dt+dt/2)+1))
         !do ii=0,int((n)/dt+0.01),int(1/dt+0.01) ! 0 to 73400 step 100
            !hydro-climate
            Area(ii)=Area(ii)*10000       !(m2 to cm2 conversion)
            Vw(ii)=Vw(ii)*100*100*100     !(m3 to cm3 conversion)
            H(ii)=(H(ii))*100             !(m to cm conversion)
            ET(ii)=ET(ii)*Area(ii)         !(cm/day to cm3/day)
            Qin(ii)=Qin(ii)*100*100*100   !(m3/day to cm3/day conversion)
            Qout(ii)=Qout(ii)*100*100*100 !(m3/day to cm3/day conversion)
            Qg(ii)=Qg(ii)*100*100*100     !(m3/day to cm3/day conversion)
            
            !input concentrations
            ONin(ii)=ONin(ii)* 1e-6       !(mg/L to g/cm3 conversion)
            NO3in(ii)=NO3in(ii)* 1e-6     !(mg/L to g/cm3 conversion)
            Nwin(ii)=Nwin(ii)* 1e-6       !(mg/L to g/cm3 conversion)
            NO3g(ii)=NO3g(ii)* 1e-6       !(mg/L to g/cm3 conversion)
            Ng(ii)=Ng(ii)* 1e-6           !(mg/L to g/cm3 conversion)
            Owin(ii)=Owin(ii)*1e-6 
            Pin(ii)=Pin(ii)*1e-6 
            Pg(ii)=Pg(ii)*1e-6 
            mwin(ii)=mwin(ii)*1e-6
            Nair(ii)=Nair(ii)* 1e-6           !SI
            NO3Air(ii)=NO3Air(ii)* 1e-6       !SI
            
            !еееееееееееееееееееее  A╡ir  ееееееееееееееееееееее
		!	TOCin(ii)=TOCin(ii)*1e-6		 !(mg/L to g/cm3 conversion)
			LPOCin(ii)=LPOCin(ii)*1e-6		 !(mg/L to g/cm3 conversion)
			RPOCin(ii)=RPOCin(ii)*1e-6		 !(mg/L to g/cm3 conversion)
			DOCin(ii)=DOCin(ii)*1e-6		 !(mg/L to g/cm3 conversion)
			
			DOCatm(ii)=DOCatm(ii)*1e-6    !(mg/L to g/cm3 conversion)
			TOCgw(ii)=TOCgw(ii)*1e-6		!(mg/L to g/cm3 conversion)
			
			!еееееееееееееееееееееееееееееееееееееееееееееееееее
            ni=ni+1
	        ii=int(real(ni)/dt+dt/2)
!**********************************************************************************************************************
         end do
!**********************************************************************************************************************

!**********************************************************************************************************************
            !Interpolation
            do ii=0,int(real(n)/dt+dt/2) !,int(1/dt+0.01)!,int(1./dt+.00000001) !,int(1./delt+.00000001)+.000001
!**********************************************************************************************************************
                j=int(int(real(ii)*dt+dt/2)/dt+dt/2)   !lower bound of interpolation
 	            k= int((int(real(ii)*dt+dt/2)+1)/dt+dt/2)            !j+int(1/dt+dt/2)             !upper bound of interpolation
     	       
 	          ! j=int(i/dt+0.0001)
 	          ! k=j+int(1/dt+0.0001)
!**********************************************************************************************************************
	            if (ii /= j) then
	                !Hydro-climate data
                    temp(ii)=temp(j)+(temp(k)-temp(j))*real(ii-j)/real(k-j)
                    H(ii)=H(j)+(H(k)-H(j))*real(ii-j)/real(k-j)
                    !H1(ii)=H1(j)+(H1(k)-H1(j))*real(ii-j)/real(k-j)
                    Area(ii)=Area(j)+(Area(k)-Area(j))*real(ii-j)/real(k-j)
                    ET(ii)=ET(j)+(ET(k)-ET(j))*real(ii-j)/real(k-j)
                    Qin(ii)=Qin(j)+(Qin(k)-Qin(j))*real(ii-j)/real(k-j)
                    Qout(ii)=Qout(j)+(Qout(k)-Qout(j))*real(ii-j)/real(k-j)
                    Qg(ii)=Qg(j)+(Qg(k)-Qg(j))*real(ii-j)/real(k-j)
                    Uw(ii)=Uw(j)+(Uw(k)-Uw(j))*real(ii-j)/real(k-j)   !SInew
                    
                    !Input concentrations
                    ONin(ii)=ONin(j)+(ONin(k)-ONin(j))*real(ii-j)/real(k-j)
                    NO3in(ii)=NO3in(j)+(NO3in(k)-NO3in(j))*real(ii-j)/real(k-j)
                    Nwin(ii)=Nwin(j)+(Nwin(k)-Nwin(j))*real(ii-j)/real(k-j)
                    NO3g(ii)=NO3g(j)+(NO3g(k)-NO3g(j))*real(ii-j)/real(k-j)
                    Ng(ii)=Ng(j)+(Ng(k)-Ng(j))*real(ii-j)/real(k-j)
                    Owin(ii)=Owin(j)+(Owin(k)-Owin(j))*real(ii-j)/real(k-j)
                    Pin(ii)=Pin(j)+(Pin(k)-Pin(j))*real(ii-j)/real(k-j)
                    Pg(ii)=Pg(j)+(Pg(k)-Pg(j))*real(ii-j)/real(k-j)
                    mwin(ii)=mwin(j)+(mwin(k)-mwin(j))*real(ii-j)/real(k-j) 
                    Vw(ii)=Vw(j)+(Vw(k)-Vw(j))*real(ii-j)/real(k-j)  
                    ip(ii)=ip(j)+(ip(k)-ip(j))*real(ii-j)/real(k-j) 
                   ! kga(ii)=kga(j)+(kga(k)-kga(j))*real(ii-j)/real(k-j)
                   ! kgb(ii)=kgb(j)+(kgb(k)-kgb(j))*real(ii-j)/real(k-j)
                    
                    Nair(ii)=Nair(j)+(Nair(k)-Nair(j))*real(ii-j)/real(k-j)       !SI
                    NO3Air(ii)=NO3Air(j)+(NO3Air(k)-NO3Air(j))*real(ii-j)/real(k-j)       !SI
                    Qa(ii)=Qa(j)+(Qa(k)-Qa(j))*real(ii-j)/real(k-j)       !SI
                    Qn(ii)=Qn(j)+(Qn(k)-Qn(j))*real(ii-j)/real(k-j)       !SI
                
                    !еееееееееееееееееееее  A╡ir  ееееееееееееееееееееее
		        !	TOCin(ii)=TOCin(j)+(TOCin(k)-TOCin(j))*real(ii-j)/real(k-j) 
			        LPOCin(ii)=LPOCin(j)+(LPOCin(k)-LPOCin(j))*real(ii-j)/real(k-j) 
			        RPOCin(ii)=RPOCin(j)+(RPOCin(k)-RPOCin(j))*real(ii-j)/real(k-j) 
			        DOCin(ii)=DOCin(j)+(DOCin(k)-DOCin(j))*real(ii-j)/real(k-j) 
			        DOCatm(ii)=DOCatm(j)+(DOCatm(k)-DOCatm(j))*real(ii-j)/real(k-j) 
			        TOCgw(ii)=TOCgw(j)+(TOCgw(k)-TOCgw(j))*real(ii-j)/real(k-j) 
			        !еееееееееееееееееееееееееееееееееееееееееееееееееее   

	            end if
	        end do    
!**********************************************************************************************************************
 	        open (200,file="200.txt",status="unknown")
 	        open (201,file="201.txt",status="unknown")
 	    DO ii=0,int((n/dt-1)+dt/2) 
 	        write (200,"(I10,9F15.5)")ii,Qin(ii)*1e-6,Qout(ii)*1e-6,Vw(ii)*1e-6,Area(ii)*1e-4,ET(ii)/Area(ii),ip(ii),Qg(ii)*1e-6,Uw(ii),temp(ii)
 	       
 	        write (201,"(I10,18F12.3)")ii, ONin(ii)/1e-6 ,NO3in(ii)/1e-6,Nwin(ii)/1e-6,NO3g(ii)/1e-6,Ng(ii)/1e-6,&
 	        &Owin(ii)/1e-6,Pin(ii)/1e-6,Pg(ii)/1e-6, mwin(ii)/1e-6,Nair(ii)/1e-6,NO3Air(ii)/1e-6,Qa(ii)/1e-6,&
 	        &Qn(ii)/1e-6, LPOCin(ii)/1e-6 , RPOCin(ii)/1e-6 , DOCin(ii)/1e-6, DOCatm(ii)/1e-6,TOCgw(ii)/1e-6
        end do
!**********************************************************************************************************************
end subroutine
