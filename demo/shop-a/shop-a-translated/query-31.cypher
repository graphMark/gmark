MATCH (x0)<-[:pcontentSize]-()-[:phasGenre]->(x1), (x1)<-[:phasGenre]-()-[:phomepage]->(x2), (x2)<-[:phomepage]-()<-[:pincludes]-()-[:ppriceValidUntil]->(x3), (x3)<-[:pexpires]-()-[:peditor]->()-[:pbirthDate]->(x4) RETURN DISTINCT x1, x0, x2;
