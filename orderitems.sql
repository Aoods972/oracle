/*  File orderitems.sql  */

/*  Create course table OrderItems  */

create table OrderItems
  (OrderNo  number(6) not null,
   StockNo  number(6) not null,
   QtyOrd   number(6),
   primary key (OrderNo, StockNo),
   foreign key (OrderNo) 
     references Orders(OrderNo),
   foreign key (StockNo) 
     references Stocks(StockNo))
  cluster OrderData(OrderNo);

/*  Create synonym for OrderItems  */

create synonym OrdIts 
  for OrderItems;


