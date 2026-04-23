select cast(sum(Total_Sales)/1000000 as decimal(10,2))as Sum_Total_Sales from Blinkit_Data
where Outlet_Establishment_Year=2022

select  cast(avg(Total_Sales)as decimal(10,1)) from Blinkit_Data

select count(*)as No_Of_Items from Blinkit_Data

select cast(avg(rating)as decimal(10,2))as Avg_Rating from Blinkit_Data

select Outlet_Location_Type,Item_Fat_Content,
	cast(sum(Total_Sales)/1000 as decimal(10,2))as Sum_Total_Sales,
	cast(avg(Total_Sales)as decimal(10,1))as avg_Sales,
	count(*)as No_Of_Items,
	cast(avg(Rating)as decimal(10,2))as Avg_Rating
from Blinkit_Data
group by Outlet_Location_Type,Item_Fat_Content
order by Sum_Total_Sales

