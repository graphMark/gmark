MATCH (x0)<-[:pperformedIn]-()-[:pcomposer]->()<-[:ptitle]-()<-[:prelease]-()-[:pproducer]->()<-[:pkeywords]-(x1), (x0)<-[:ppurchaseFor]-()-[:ppurchaseFor]->()<-[:pvalidThrough]-()-[:pincludes]->(x2), (x0)<-[:pperformedIn]-()-[:phasReview]->()-[:prating]->()<-[:pdatePublished]-()<-[:ppurchaseFor]-()-[:pprice]->()<-[:pisbn]-(x3) RETURN DISTINCT x0 UNION ;
