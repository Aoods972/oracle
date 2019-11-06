/*  File deliveryitems.sql  */

/*  Create course table DeliveryItems  */

create table DeliveryItems
  (DelivNo  number(6) not null,
   StockNo  number(6) not null,
   QtyDel   number(6),
   primary key (DelivNo, StockNo),
   foreign key (DelivNo) 
     references Deliveries(DelivNo),
   foreign key (StockNo) 
     references Stocks(StockNo))
  cluster DeliveryData(DelivNo);

/*  Create index on DeliveryItems  */

create unique index DItemKey
  on DeliveryItems(DelivNo, StockNo);

/*  Create synonym for DeliveryItems  */

create synonym DelIts
  for DeliveryItems;


