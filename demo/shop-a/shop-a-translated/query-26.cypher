MATCH (x0)<-[:ptag]-()<-[:plike]-()-[:ptype]->(x1), (x0)<-[:ptag]-()<-[:plike]-()-[:ptype]->(x2), (x0)<-[:ptag]-()-[:pdirector]->()-[:ptype]->(x3), (x0)<-[:ptag]-()-[:pauthor]->()-[:ptype]->(x4) RETURN DISTINCT x2, x1, x0;
