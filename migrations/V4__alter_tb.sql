-- create a table Companies with name, id, address, email, and phone number
ALTER TABLE CompaniesNew rename Companiesold (
  id int,
  name varchar(50),
  fax text,
  emailid varchar(50),
  phone varchar(10)
);
