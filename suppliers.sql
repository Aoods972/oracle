/*  File suppliers.sql  */

/*  Create course table Suppliers  */

create table Suppliers
  (SuppCode  varchar2(4) not null primary key,
   SuppName  varchar2(30),
   Street    varchar2(24),
   Town      varchar2(16),
   County    varchar2(16),
   PostCode  varchar2(10),
   TelNo     varchar2(16),
   FaxNo     varchar2(16))
  cluster SupplyData(SuppCode);

/*  Create synonym for Suppliers  */

create synonym Supps
  for Suppliers;


