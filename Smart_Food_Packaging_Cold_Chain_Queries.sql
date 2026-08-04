CREATE DATABASE Smart_Food_Packaging;

USE Smart_Food_Packaging;

#1. Total Packages
SELECT count(﻿Sample_ID) AS total_packages
FROM smart_food_packaging;

#2. Average Risk Score
SELECT AVG(Risk_Score) AS avg_risk_score
FROM smart_food_packaging;

#3. High Risk Packages
SELECT COUNT(*) AS High_Risk_Packages
FROM smart_food_packaging
WHERE Food_Safety_Risk_Level = 'High';

#4. Food Safety Compliance Rate (%)
SELECT ROUND((SUM(CASE WHEN Compliance_Status = "Safe" THEN 1 ELSE 0 END) * 100.0) / COUNT(*),
2) AS Food_Safety_Compliance_Rate
FROM smart_food_packaging;

#5. Average Freshness Index
SELECT AVG(Freshness_Index) AVG_Freshness_Index
FROM smart_food_packaging;

#6. Cold Chain Failure Rate (%)
SELECT ROUND(SUM(CASE WHEN Cold_Chain_Status='Broken' THEN 1 ELSE 0 END)*100/COUNT(*),2)
AS Cold_Chain_Failure_Rate
FROM smart_food_packaging;

#7. Average Shelf Life Remaining (Days)
SELECT AVG(Shelf_Life_Remaining_Days) AS Avg_Shelf_Life_Remaining_Days
FROM smart_food_packaging;

#8. Average Sensor Health Score
SELECT avg(Sensor_Health_Score) AS avg_Sensor_Health_Score
FROM smart_food_packaging;

#9. Average Package Temperature (°C)
SELECT avg(Temperature_C) AS avg_temperature_c
FROM smart_food_packaging;

#10. Average Package Humidity (%)
SELECT avg(Humidity_Percent) AS AVG_Humidity_Percent
FROM smart_food_packaging;

#11. Package Damage Rate (%)
SELECT ROUND(SUM(CASE WHEN Surface_Integrity_Status='Damaged' THEN 1 ELSE 0 END)*100/COUNT(*),2)
AS Package_Damage_Rate
FROM smart_food_packaging;

#12. Spoilage Probability Rate (%)
SELECT Spoilage_Probability,COUNT(*) Total_Packages
FROM smart_food_packaging
GROUP BY Spoilage_Probability;

# EDA - Exploratory Data Analysis

#1. Which Food Category has the highest Risk Score?
SELECT Food_Category, AVG(risk_score) AS highest_Risk_Score
FROM smart_food_packaging
GROUP BY Food_Category
ORDER BY highest_Risk_Score DESC;

#2. Which Packaging Material provides the best protection?
SELECT Packaging_Material,AVG(Risk_Score)
FROM smart_food_packaging
GROUP BY Packaging_Material
ORDER BY AVG(Risk_Score);

#3. Which Package Size has the lowest Food Safety Risk?
SELECT Package_Size,ROUND(AVG(Risk_Score), 2) AS Avg_Risk_Score
FROM smart_food_packaging
GROUP BY Package_Size
ORDER BY Avg_Risk_Score ASC;

#4. Which Storage Zone has the highest Risk Score?
SELECT Storage_Zone, AVG(Risk_Score) AS avg_risk_Score
FROM smart_food_packaging
GROUP BY Storage_Zone
ORDER BY avg_risk_score DESC;

#5. Which Storage Zone maintains the best temperature?
SELECT Storage_Zone, AVG(Temperature_C) AS avg_temperature_c
FROM smart_food_packaging
GROUP BY Storage_Zone
ORDER BY avg_temperature_c DESC;

#6. Which Storage Zone has the highest compliance rate?
SELECT Storage_Zone,ROUND(SUM(CASE WHEN Compliance_Status='Safe' THEN 1 ELSE 0 END)
*100.0/COUNT(*),2) AS Compliance_Rate
FROM smart_food_packaging
GROUP BY Storage_Zone
ORDER BY Compliance_Rate DESC;

#7. Does Temperature affect Shelf Life?
SELECT Temperature_Status, avg(Shelf_Life_Remaining_Days) AS avg_Shelf_Life_Remaining_Days
FROM smart_food_packaging
GROUP BY Temperature_Status;

#8. Does Humidity increase Food Safety Risk?
SELECT Humidity_Status, AVG(Risk_Score) Avg_Risk_Score
FROM smart_food_packaging
GROUP BY Humidity_Status;

#9. Does Light Exposure reduce Freshness?
SELECT Light_Exposure_lux,AVG(Freshness_Index)
FROM smart_food_packaging
GROUP BY Light_Exposure_lux;

#10. Does Vibration increase Package Damage?
SELECT Vibration_g,Surface_Integrity_Status,COUNT(*) AS Total_Packages
FROM smart_food_packaging
GROUP BY Vibration_g, Surface_Integrity_Status
ORDER BY Vibration_g, Total_Packages DESC;

#11. Does Oxygen Concentration affect Spoilage Risk?
SELECT Oxygen_Concentration_Percent, Spoilage_Probability, COUNT(*) AS Total_Packages
FROM smart_food_packaging
GROUP BY Oxygen_Concentration_Percent, Spoilage_Probability
ORDER BY Oxygen_Concentration_Percent, total_packages DESC;

#12. Does Carbon Dioxide increase Food Safety Risk?
SELECT Carbon_Dioxide_Percent,
AVG(Risk_Score) AS Avg_Risk_Score
FROM smart_food_packaging
GROUP BY Carbon_Dioxide_Percent
ORDER BY Carbon_Dioxide_Percent;

#13.Does Volatile Gas indicate product contamination?
SELECT Volatile_Gas_ppm,AVG(Risk_Score) AS Avg_Risk_Score
FROM smart_food_packaging
GROUP BY Volatile_Gas_ppm
ORDER BY Volatile_Gas_ppm;

#14.  Which Digital Twin State has the highest Risk Score?
SELECT Digital_Twin_State,AVG(Risk_Score) AS Avg_Risk_Score
FROM smart_food_packaging
GROUP BY Digital_Twin_State
ORDER BY Avg_Risk_Score DESC;

#15. Which Surface Integrity Status has the highest damage rate?
SELECT Surface_Integrity_Status, COUNT(*) AS total_packages
FROM smart_food_packaging 
GROUP BY Surface_Integrity_Status 
ORDER BY total_packages DESC;

#16. Which Storage Zone has the highest number of High Food Safety Risk packages?
SELECT Storage_Zone, COUNT(*) Total_Packages
FROM smart_food_packaging
WHERE Food_Safety_Risk_Level='High'
GROUP BY Storage_Zone
ORDER BY Total_Packages DESC;

#17. Which Storage Zone has the highest average Risk Score?
SELECT Storage_Zone, AVG(Risk_Score) AS avg_Risk_Score
FROM smart_food_packaging
GROUP BY Storage_Zone 
ORDER BY avg_Risk_Score DESC;

#18. Which Food Category has the shortest average Shelf Life?
SELECT Food_Category, AVG(Shelf_Life_Days) AS avg_Shelf_Life_Days
FROM smart_food_packaging
GROUP BY Food_Category
ORDER BY avg_Shelf_Life_Days ASC;


#19. Which Transport Condition has the highest Spoilage Probability?
SELECT Transport_Condition,Spoilage_Probability, COUNT(*) AS total_packages
FROM smart_food_packaging
GROUP BY Transport_Condition,Spoilage_Probability;

#20. Which Packaging Material has the lowest Food Safety Risk?
SELECT Packaging_Material, AVG(Risk_Score) avg_Risk_Score
FROM smart_food_packaging
GROUP BY Packaging_Material 
ORDER BY avg_Risk_Score ASC;



