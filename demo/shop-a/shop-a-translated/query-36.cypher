MATCH (x0)-[:pcaption]->()<-[:pdescription]-()-[:ptitle]->()<-[:ptitle]-(x1), (x0)-[:peditor]->()-[:pfamilyName]->()<-[:pproducer]-(x2), (x0)-[:pkeywords]->()<-[:pdescription]-(x3), (x0)-[:pcontentSize]->()<-[:puserId]-()<-[:pdirector]-(x4) RETURN "true" LIMIT 1;
