!ееееееееееееееееееееееееееееееееееее  A╡ir  ееееееееееееееееееееееееееееееееееееееееее

Subroutine InOutTXT
USE parm
IMPLICIT NONE


INTEGER :: k,kk


! Amir: Read input file names from file no. 1

!!Mehdi: all the input files control from "1_input_control.txt" files.
 input_control= "1_input_control.txt"
 open (1,file=input_control,status="old")
 read (1,*) fixedparams
 read (1,*) initialconc
 read (1,*) hydro_climparams
 read (1,*) timedepparms
 read (1,*) generatedparms
 read (1,*) generatedparmcarbon



												         !е  A╡ir (comments) е
!open (100,file="100_Y1ve.txt",status="unknown")          ! SI: Year 1 and Y2 averages
!open (101,file="101_Y2Ave.txt",status="unknown")         ! SI: Year 1 and Y2 averages
open (102,file="102_Onw.txt",status="unknown")           ! SI: daily averages of ON in water
open (103,file="103_Onss.txt",status="unknown")          ! SI:
open (104,file="104_Onsf.txt",status="unknown")          ! SI:
open (105,file="105_Nw.txt",status="unknown")            ! SI:
open (106,file="106_Ns1.txt",status="unknown")           ! SI:
open (107,file="107_Ns2.txt",status="unknown")           ! SI:
open (108,file="108_NO3w.txt",status="unknown")          ! SI:
open (109,file="109_NO3s1.txt",status="unknown")         ! SI:
open (110,file="110_NO3s2.txt",status="unknown")         ! SI:
open (111,file="111_Ow.txt",status="unknown")            ! SI:
open (112,file="112_a.txt",status="unknown")             ! SI:
open (113,file="113_b.txt",status="unknown")             ! SI:
open (114,file="114_Pw.txt",status="unknown")            ! SI:
open (115,file="115_Ps1.txt",status="unknown")           ! SI:
open (116,file="116_Ps2.txt",status="unknown")           ! SI:
!open (117,file="117_ms.txt",status="unknown")            ! SI: Removed by Mehdi
open (118,file="118_mw.txt",status="unknown")            ! SI:

!еееееееееееееее  A╡ir  ееееееееееееееееееееееее
open (150,file="150_DOCw.txt",status="unknown")				! daily averages of DOC in water
open (151,file="151_LPOCw.txt",status="unknown") 
open (152,file="152_RPOCw.txt",status="unknown") 
open (153,file="153_DOCs1.txt",status="unknown") 
open (154,file="154_LPOCs1.txt",status="unknown") 
open (155,file="155_RPOCs1.txt",status="unknown") 
open (156,file="156_DOCs2.txt",status="unknown") 
open (157,file="157_LPOCs2.txt",status="unknown") 
open (158,file="158_RPOCs2.txt",status="unknown") 
open (159,file="159_TOCw.txt",status="unknown") 
open (160,file="160_CH4w.txt",status="unknown")
open (161,file="161_CH4s1.txt",status="unknown")
open (162,file="162_CH4s2.txt",status="unknown")


end subroutine InOutTXT

