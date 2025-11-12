SELECT 
  Companhia,
  COUNT(*) as Total_Voos,
  ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM voos_analise), 2) as Percentual_Mercado
FROM voos_analise
WHERE Companhia IS NOT NULL
GROUP BY Companhia
ORDER BY Total_Voos DESC
LIMIT 10