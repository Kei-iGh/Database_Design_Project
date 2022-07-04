

#Select the drugs(names and their available quantity), which are available in the pharmacy with ID 0001
select drug_name, stock.drug_count
from stock, drug
where drug.drug_id in 
(select stock.Drug_ID
where stock.Drug_Available = "1"
and stock.Pharmacy_ID = "0001");


#Select the drugs(names and their available quantity), which are available in the pharmacy "Bartell Drugs" (The same pharmacy which has ID 0001)
select drug_name, stock.drug_count 
from stock, drug
where drug.drug_id in 
(select stock.Drug_ID
where stock.Drug_Available = "1"
and stock.Pharmacy_ID = 
(select pharmacy_id
from pharmacy
where ph_name = "Bartell Drugs"));


#Select only those drugs(names and prices, order by prices from high to low), which are pregnancy approved
select drug_name, drug_Price price
from drug
where pregnancy_approved = "Yes"
order by price desc;


#Select the number of employees, who work at each branch of the pharmacy
select pharmacy_id, ph_name, count(*) as "Number of Employees"
from employee as emp
left join pharmacy ph
using(Pharmacy_id)
group by Pharmacy_id;


#Select those employees, who were born after 1988
Select emp_first_name First_Name, emp_last_name Last_Name, Emp_date_of_birth DOB
from employee emp
where extract(year from Emp_date_of_birth) in 
(select
(extract(year from Emp_date_of_birth))
from employee
where extract(year from Emp_date_of_birth) > 1988)
order by DOB;


#Select those derugs, which originate in Armenia and are from company whos name ends with "pharm"
Select drug_id, drug_name, drug_origin, drug_company
from drug
where drug_origin = "Armenia"
and drug_company like "%pharm";


#select the customers, who haveve bought a drug whith their prescription
select  First_Name, Last_Name, drug_name,Drug_Origin, Drug_Price, Pregnancy_approved
from drug
right join 
(select customer.customer_id id, cust_first_name First_Name, cust_last_name Last_Name, prescription.given_date ,drug_id
from prescription, customer
where prescription.customer_id = customer.customer_id
and drug_id in
(select purchase_details.drug_id
from purchases p
left join purchase_details
using(purchase_id))) as new_table
using(drug_id);


