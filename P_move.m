function dr=P_move(t,r)
global E0 b k g m_p q_p F_p;

dr=zeros(2,1);

dr(1)=r(2);
dr(2)=-q_p/m_p*E0*exp(b*r(1))-g-k*dr(1)^2+F_p/m_p;
