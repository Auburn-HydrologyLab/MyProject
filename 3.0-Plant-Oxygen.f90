Subroutine OxyPlant

Use Parm ; Use Pprime 


            !Sediment Oxygen Demand (SOD) and Oxygen in Water Column  O2
    SOD=  L1(i)*ronn*por*fN*kns*Ns1(i)+L1(i)*rond*(kmin2s*ONss(i)+kmin1s*ONsf(i))+L1(i)*Ss  !por*tor*Dow*Ow(i)/(L1(i)+por*tor*d_bound) 
!**********************************************************************************************************************
     Ow(i+1)=(1/(porw*Vw(i+1)+(dt)*(ko*porw*Area(i)+Qout(i)+ET(i))))*(Ow(i)*porw*Vw(i)+(dt)*(Qin(i)*Owin(i)+ip(i)*Area(i)*Osat+ko*Area(i)*Osat*porw-rond*porw*Vw(i)&
      &*kminw*ONw(i)-ronn*porw*Vw(i)*fN*knw*Nw(i)+roc*rchl*(((KgbTIb-kdb))*b(i)+(KgaTIa-kda)*a(i))-porw*Vw(i)*Sw-SOD*Area(i)))
!**********************************************************************************************************************
                !Flooting Plant such as algea  a
                
				a(i+1)= a(i)*exp((kgaTIa-kda-0.1*Qout(i)/(porw*Vw(i)))*dt) !mass
                a(i+1)=max(a(i+1),1e-6*Area(i)*1e-4)  
                b(i+1)=b(i)*exp((kgbTIb-kdb)*dt)						   !mass
             



End Subroutine