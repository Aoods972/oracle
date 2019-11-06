/*  File deliveries.sql  */

/*  Create course table Deliveries  */

create table Deliveries 
  (DelivNo       number(6) not null primary key,
   OrderNo       number(6) not null,
   SuppCode      varchar2(4) not null,
   DeliveryDate  date,
   foreign key (OrderNo)
     references Orders(OrderNo),
   foreign key (SuppCode)
     references Suppliers(SuppCode))
  cluster DeliveryData(DelivNo);

/*  Create index on Deliveries  */

create unique index DelivKey
  on Deliveries(DelivNo);

/*  Create synonym for Deliveries  */

create synonym Dels
  for Deliveries;


