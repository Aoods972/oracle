/*  File orders.sql  */

/*  Create course table Orders  */

create table Orders
  (OrderNo    number(6) not null primary key,
   SuppCode   varchar2(4) not null,
   OrderDate  date,
   Authority  varchar2(24),
   TotCost    number(8,2),
   foreign key (SuppCode)
     references Suppliers(SuppCode))
  cluster OrderData(OrderNo);

/*  Create sequence for order numbers  */

create sequence OrderNos
  increment by 1
  start with 1;

/*  Create synonym for Orders  */

create synonym Ords
  for Orders;


