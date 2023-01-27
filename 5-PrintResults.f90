Subroutine printresults

use parm

use pprime

tsim=t+1
    
!     write (102,"(i8)",advance="no") tsim  ;write (102,100) (ZOnw(j)   , j=0,n)   ! SI:                                                                                           
!     write (103,"(i8)",advance="no") tsim  ;write (103,100) (ZOnss(j)  , j=0,n)   ! SI:
!     write (104,"(i8)",advance="no") tsim  ;write (104,100) (ZOnsf(j)  , j=0,n)   ! SI:
!     write (105,"(i8)",advance="no") tsim  ;write (105,100) (ZNw(j)    , j=0,n)   ! SI:
!     write (106,"(i8)",advance="no") tsim  ;write (106,100) (ZNs1(j)   , j=0,n)   ! SI:
!     write (107,"(i8)",advance="no") tsim  ;write (107,100) (ZNs2(j)   , j=0,n)   ! SI:
!     write (108,"(i8)",advance="no") tsim  ;write (108,100) (ZNO3w(j)  , j=0,n)   ! SI:
!     write (109,"(i8)",advance="no") tsim  ;write (109,100) (ZNO3s1(j) , j=0,n)   ! SI:
!     write (110,"(i8)",advance="no") tsim  ;write (110,100) (ZNO3s2(j) , j=0,n)   ! SI:
!     write (111,"(i8)",advance="no") tsim  ;write (111,100) (ZOw(j)    , j=0,n)   ! SI:
!     write (112,"(i8)",advance="no") tsim  ;write (112,100) (Za(j)     , j=0,n)   ! SI:
!     write (113,"(i8)",advance="no") tsim  ;write (113,100) (Zb(j)     , j=0,n)   ! SI:
!     write (114,"(i8)",advance="no") tsim  ;write (114,100) (ZPw(j)    , j=0,n)   ! SI:
!     write (115,"(i8)",advance="no") tsim  ;write (115,100) (ZPs1(j)   , j=0,n)   ! SI:
!     write (116,"(i8)",advance="no") tsim  ;write (116,100) (ZPs2(j)   , j=0,n)   ! SI:
!!     write (117,"(i8)",advance="no") tsim  ;write (117,100) (Zms(j)    , j=0,n)   ! SI:
!     write (118,"(i8)",advance="no") tsim  ;write (118,100) (Zmw(j)    , j=0,n)   ! SI:
!
!    
!    !ееееееееееееееееее  A╡ir  еееееееееееееееееее
!	 write (150,"(i8)",advance="no") tsim  ; write (150,100) (ZDOCw(j) , j=0,n)
!	 write (151,"(i8)",advance="no") tsim  ; write (151,100) (ZLPOCw(j) , j=0,n)
!	 write (152,"(i8)",advance="no") tsim  ; write (152,100) (ZRPOCw(j) , j=0,n)
!	 write (153,"(i8)",advance="no") tsim  ; write (153,100) (ZDOCs1(j) , j=0,n)
!	 write (154,"(i8)",advance="no") tsim  ; write (154,100) (ZLPOCs1(j) , j=0,n)
!	 write (155,"(i8)",advance="no") tsim  ; write (155,100) (ZRPOCs1(j) , j=0,n)
!	 write (156,"(i8)",advance="no") tsim  ; write (156,100) (ZDOCs2(j) , j=0,n)
!	 write (157,"(i8)",advance="no") tsim  ; write (157,100) (ZLPOCs2(j) , j=0,n)
!	 write (158,"(i8)",advance="no") tsim  ; write (158,100) (ZRPOCs2(j) , j=0,n)
!	 write (159,"(i8)",advance="no") tsim  ; write (159,100) (ZTOCw(j) , j=0,n)
!	 write (160,"(i8)",advance="no") tsim  ; write (160,100) (ZCH4w(j) , j=0,n)
!	 write (161,"(i8)",advance="no") tsim  ; write (161,100) (ZCH4s1(j) , j=0,n)
!	 write (162,"(i8)",advance="no") tsim  ; write (162,100) (ZCH4s2(j) , j=0,n)
!	!еееееееееееееееееееееееееееееееееееееееееееее
!    100 format (3660F10.5)       

                                                                                                                                               
     write (102,"(i8)") tsim  ;write (102,100) (ZOnw(j)   , j=0,n)   ! SI:                                                                                             
     write (103,"(i8)") tsim  ;write (103,100) (ZOnss(j)  , j=0,n)   ! SI:
     write (104,"(i8)") tsim  ;write (104,100) (ZOnsf(j)  , j=0,n)   ! SI:
     write (105,"(i8)") tsim  ;write (105,100) (ZNw(j)    , j=0,n)   ! SI:
     write (106,"(i8)") tsim  ;write (106,100) (ZNs1(j)   , j=0,n)   ! SI:
     write (107,"(i8)") tsim  ;write (107,100) (ZNs2(j)   , j=0,n)   ! SI:
     write (108,"(i8)") tsim  ;write (108,100) (ZNO3w(j)  , j=0,n)   ! SI:
     write (109,"(i8)") tsim  ;write (109,100) (ZNO3s1(j) , j=0,n)   ! SI:
     write (110,"(i8)") tsim  ;write (110,100) (ZNO3s2(j) , j=0,n)   ! SI:
     write (111,"(i8)") tsim  ;write (111,100) (ZOw(j)    , j=0,n)   ! SI:
     write (112,"(i8)") tsim  ;write (112,100) (Za(j)     , j=0,n)   ! SI:
     write (113,"(i8)") tsim  ;write (113,112) (Zb(j)     , j=0,n)   ! SI:
     write (114,"(i8)") tsim  ;write (114,100) (ZPw(j)    , j=0,n)   ! SI:
     write (115,"(i8)") tsim  ;write (115,100) (ZPs1(j)   , j=0,n)   ! SI:
     write (116,"(i8)") tsim  ;write (116,100) (ZPs2(j)   , j=0,n)   ! SI:
!     write (117,"(i8)") tsim  ;write (117,100) (Zms(j)    , j=0,n)   ! SI:
     write (118,"(i8)") tsim  ;write (118,111) (Zmw(j)    , j=0,n)   ! SI:

    
    !ееееееееееееееееее  A╡ir  еееееееееееееееееее
	 write (150,"(i8)") tsim  ; write (150,100) (ZDOCw(j) , j=0,n)
	 write (151,"(i8)") tsim  ; write (151,100) (ZLPOCw(j) , j=0,n)
	 write (152,"(i8)") tsim  ; write (152,100) (ZRPOCw(j) , j=0,n)
	 write (153,"(i8)") tsim  ; write (153,100) (ZDOCs1(j) , j=0,n)
	 write (154,"(i8)") tsim  ; write (154,100) (ZLPOCs1(j) , j=0,n)
	 write (155,"(i8)") tsim  ; write (155,100) (ZRPOCs1(j) , j=0,n)
	 write (156,"(i8)") tsim  ; write (156,100) (ZDOCs2(j) , j=0,n)
	 write (157,"(i8)") tsim  ; write (157,100) (ZLPOCs2(j) , j=0,n)
	 write (158,"(i8)") tsim  ; write (158,100) (ZRPOCs2(j) , j=0,n)
	 write (159,"(i8)") tsim  ; write (159,100) (ZTOCw(j) , j=0,n)
	 write (160,"(i8)") tsim  ; write (160,100) (ZCH4w(j) , j=0,n)
	 write (161,"(i8)") tsim  ; write (161,100) (ZCH4s1(j) , j=0,n)
	 write (162,"(i8)") tsim  ; write (162,100) (ZCH4s2(j) , j=0,n)
	!еееееееееееееееееееееееееееееееееееееееееееее
    100 format (365F10.5)    
    111 format (365F11.4) 
    112 format (365F10.2) 
!**********************************************************************************************************************
  !  write (100,55) tsim ,Y1_ONw,Y1_ONsf,Y1_ONss,Y1_Nw,Y1_Ns1,Y1_Ns2,Y1_Ow,Y1_NO3w,Y1_NO3s1,Y1_NO3s2,Y1_Pw,Y1_Ps1,Y1_Ps2,Y1_a,Y1_b,Y1_mw,Y1_ms,Y1_DOCw , Y1_LPOCw  ,Y1_RPOCw ,Y1_TOCw   ,Y1_DOCs1 ,Y1_LPOCs1 ,Y1_RPOCs1   ,Y1_DOCs2 ,Y1_LPOCs2,Y1_RPOCs2 ,Y1_CH4w  ,Y1_CH4s1  ,Y1_CH4s2 
  !  write (101,55) tsim ,Y2_ONw,Y2_ONsf,Y2_ONss,Y2_Nw,Y2_Ns1,Y2_Ns2,Y2_Ow,Y2_NO3w,Y2_NO3s1,Y2_NO3s2,Y2_Pw,Y2_Ps1,Y2_Ps2,Y2_a,Y2_b,Y2_mw,Y2_ms,Y2_DOCw, Y2_LPOCw  ,Y2_RPOCw ,Y2_TOCw   ,Y2_DOCs1 ,Y2_LPOCs1 ,Y2_RPOCs1   ,Y2_DOCs2 ,Y2_LPOCs2,Y2_RPOCs2 ,Y2_CH4w  ,Y2_CH4s1  ,Y2_CH4s2                                                                                                                
!55 format (i20 , 30F20.8)                                                                                                                           

!SInew***********************************************************************
!     write (301,100) tsim  , (ZNset(j)   , j=0,n)  ! SI:
!     write (302,100) tsim  , (ZNvol(j)   , j=0,n)  ! SI:
!     write (303,100) tsim  , (ZNO3den(j) , j=0,n)  ! SI:
!     write (304,100) tsim  , (ZPwset(j)  , j=0,n)  ! SI:
!     write (305,100) tsim  , (Zmwset(j)  , j=0,n)  ! SI:
   
     
!MAss balance prints
!**************************************************************************************
!    write (120,65) tsim ,Y1_Nset,Y1_Nvol,Y1_NO3den,Y1_Ndif,Y1_NO3dif,Y1_Pwset,Y1_Pdif,Y1_Pmin,Y1_mwset,Y1_MNw,(YY1_ONw+YY1_Nw+YY1_NO3w),YY1_ONw,YY1_Nw,YY1_NO3w,YY1_Pw,YY1_mw
!    write (121,65) tsim ,Y2_Nset,Y2_Nvol,Y2_NO3den,Y2_Ndif,Y2_NO3dif,Y2_Pwset,Y2_Pdif,Y2_Pmin,Y2_mwset,Y2_MNw,(YY2_ONw+YY2_Nw+YY2_NO3w),YY2_ONw,YY2_Nw,YY2_NO3w,YY2_Pw,YY2_mw
!    write (122,65) tsim,  Y12_LPOCset ,  Y12_RPOCset , Y12_Coutw ,  Y12_DOCdif , Y12_DOCresp , Y12_DOCden , Y12_DOCmeth ,  YY12_LPOCw , YY12_RPOCw , YY12_DOCw , DOClast ,  LPOClast ,  RPOClast  ,Y12_plantC , Y12_methane
!    write (123,65) tsim,  Y1_LPOCset ,  Y1_RPOCset , Y1_Coutw ,  Y1_DOCdif , Y1_DOCresp , Y1_DOCden , Y1_DOCmeth ,  YY1_LPOCw , YY1_RPOCw , YY1_DOCw , DOClastY1 ,  LPOClastY1 ,  RPOClastY1  ,Y1_plantC , Y1_methane
!    write (124,65) tsim,  Y2_LPOCset ,  Y2_RPOCset , Y2_Coutw ,  Y2_DOCdif , Y2_DOCresp , Y2_DOCden , Y2_DOCmeth ,  YY2_LPOCw , YY2_RPOCw , YY2_DOCw , DOClast ,  LPOClast ,  RPOClast  ,Y2_plantC , Y2_methane
!65  format (i20 , 16F20.4)
!**************************************************************************************

end subroutine
