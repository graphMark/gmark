WITH RECURSIVE c0(src, trg) AS ((SELECT s0.src, s3.trg FROM edge s0, (SELECT trg as src, src as trg, label FROM edge) as s1, edge s2, edge s3 WHERE s0.trg = s1.src AND s1.trg = s2.src AND s2.trg = s3.src AND s0.label = description AND s1.label = description  AND s2.label = hasGenre  AND s3.label = type  UNION SELECT s0.src, s1.trg FROM edge s0, edge s1 WHERE s0.trg = s1.src AND s0.label = hasGenre AND s1.label = type )) , c1(src, trg) AS ((SELECT s0.src, s2.trg FROM (SELECT trg as src, src as trg, label FROM edge) as s0, (SELECT trg as src, src as trg, label FROM edge) as s1, edge s2 WHERE s0.trg = s1.src AND s1.trg = s2.src AND s0.label = type AND s1.label = hasGenre  AND s2.label = performedIn )) , c2(src, trg) AS ((SELECT s0.src, s3.trg FROM (SELECT trg as src, src as trg, label FROM edge) as s0, edge s1, (SELECT trg as src, src as trg, label FROM edge) as s2, edge s3 WHERE s0.trg = s1.src AND s1.trg = s2.src AND s2.trg = s3.src AND s0.label = purchaseFor AND s1.label = purchaseFor  AND s2.label = includes  AND s3.label = includes  UNION SELECT s0.src, s3.trg FROM edge s0, (SELECT trg as src, src as trg, label FROM edge) as s1, edge s2, (SELECT trg as src, src as trg, label FROM edge) as s3 WHERE s0.trg = s1.src AND s1.trg = s2.src AND s2.trg = s3.src AND s0.label = hasReview AND s1.label = hasReview  AND s2.label = trailer  AND s3.label = homepage )) , c3(src, trg) AS ((SELECT s0.src, s3.trg FROM edge s0, (SELECT trg as src, src as trg, label FROM edge) as s1, edge s2, (SELECT trg as src, src as trg, label FROM edge) as s3 WHERE s0.trg = s1.src AND s1.trg = s2.src AND s2.trg = s3.src AND s0.label = hasReview AND s1.label = hasReview  AND s2.label = trailer  AND s3.label = homepage )) SELECT DISTINCT c1.src, c0.src, c3.src FROM c0, c1, c2, c3 WHERE c0.src = c2.src AND c1.src = c0.trg AND c3.src = c1.trg;
