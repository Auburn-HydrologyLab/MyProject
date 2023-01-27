 
PROGRAM Wetland

    USE parm
    USE Pprime   


    IMPLICIT none
    

    Write (*,*) '                       WetQual-Model'
    Write (*,*) ''
    Write (*,*)	'A numerical model for N, P and C cycling in ponded wetlands'
    Write (*,*)	'Developed by: '
    Write (*,*)	'   M.M. Hantush' 
    Write (*,*)	'   L. Kalin' 
    Write (*,*)	'   A. Sharifi' 
    Write (*,*)	'   S.Isik' 
    Write (*,*)	'USEPA and Auburn University (2014-2019) '

    CALL InOutTXT
    CALL FixedInitial
		
    ntday=real(int((n/dt-1)+0.00001))
    !%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    !Let the MC simulation begin
    !%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    !$OMP PARALLEL
    !$OMP DO 
    DO t=0,sims-1     ! 100,000 times
         write(*,*)"Simulation #",t+1
         Call readparms        
         Call Equal0
    !**********************************************************************************************************************
    !****                   !individual simulations begin                                                       *******
    !**********************************************************************************************************************
         DO i=0,int((n/dt-1)+dt/2)  ! i=0 to 73400
              
               Call GeneralCalc1
               Call Nitrogen
               Call OxyPlant
               Call PhosphorSed
               Call Carbon
               Call Negativity
               Call GeneralCalc2
               Call massbalance
               Call DailyCalcs
	           !Call Yr1Yr2_part1
         END DO
         !Call Yr1Yr2_part3
         Call Printresults                                                                                                                                               
    END DO
    !$OMP END DO
    !$OMP END PARALLEL
    if (sims==1) then
        Print*, "Deterministic model was successfully executed!"
    else
        Print*, "Stochastic model was successfully executed!"
    endif
    
    PAUSE
    STOP

END PROGRAM Wetland
    
    

    
    
    
    
     
    
    
    
    






    
    
	
    