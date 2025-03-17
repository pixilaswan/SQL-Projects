/* Descriptive analysis for Customer*/
select * from Customer;

/* Count of policies by region */
select region, count(*) as Policy_count from Customer Group By Region;

/* Distribution of income levels */
select Income_Level, COUNT(*) AS Count fROM Customer GROUP BY Income_Level;

/*Average age by marital status */
select Marital_status, Avg(age) as Average_age from Customer Group By Marital_Status;

/*Descriptive  analysis for Policy table */
select * from Policy;

/* Count number of policies by type */
 select Policy_Type, count(*)as Policy_count from Policy Group By Policy_Type;

/*Average premium by policy type*/
select policy_type, avg(Premium) as Average_premium from Policy Group By Policy_Type;

/*Policies with renewal offer */
select * from Policy where Renewal_status = 'Yes';

/* Descriptive analysis for Vehicle */
select * from Vehicle;

/*Count of vehicle by Type */
select vehicle_type, count(vehicle_type) as vehicle_count from Vehicle v Group BY (v.Vehicle_Type );

/*Average claim amount by Vehicle type*/
select vehicle_type, Avg(Claim_Amount) as Average_claim from Vehicle v Group By(v.Vehicle_Type);

/*Vehicles with claims based on the accidents */
select Vehicle_Type, Accident_history from Vehicle where Claim_Status = 'Yes' and Accident_History > 0;

/*Descriptive Analysis of Engagement table*/
select * from Engagement;


/* Average customer satisfaction score by policy tenure*/
select Policy_Tenure, AVG(Customer_Satisfaction_Score) A=as Average_Satisfaction from Engagement group By Policy_Tenure;

/*Count of policies with discounts offered*/
select Discounts_Offered, Count(*) as Policies_count from Engagement group by Discounts_offered;

/*Policies with high engagement scores */
select * from Engagement where Customer_Satisfaction_Score > 8;

/* Policies with customer information and vehicle details*/
select c.Age, c.Gender, v.Vehicle_Type, p.Policy_Type
from Customer c
join Policy p on c.Policy_ID = p.Policy_ID
join Vehicle v on p.Policy_ID = v.Policy_ID;

/* Policies with the high claims amounts and customer satisfaction */

Select v.claim_amount, e.customer_satisfaction_score from Vehicle v
JOIN Engagement e on v.Policy_ID = e.Policy_ID
where v.Claim_Amount > 5000 AND e.Customer_Satisfaction_Score >8;










