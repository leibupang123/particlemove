function dr=N_move(t,r)
global  E0 b k g  m_n  q_n F_n;

dr=zeros(2,1);

dr(1)=r(2);
dr(2)=-q_n/m_n*E0*exp(b*r(1))-g-k*dr(1)^2+F_n/m_n;