MATCH (x0)<-[:pmakesPurchase]-()<-[:pconductor]-(x1), (x0)-[:ppurchaseFor]->()-[:phasReview]->()-[:previewer]->()-[:pmakesPurchase]->(x2), (x1)-[:ppurchaseFor]->()-[:pconductor]->()-[:pmakesPurchase]->(x3) RETURN DISTINCT x0;
