/*  File supplyitems.sql  */

/*  Create course table SupplyItems  */

create table SupplyItems
  (SuppCode  varchar2(4) not null,
   CatNo     number(6) not null,
   StockNo   number(6),
   Price     number(6,2),
   primary key (SuppCode, CatNo),
   foreign key (SuppCode)
     references Suppliers(SuppCode),
   foreign key (StockNo)
     references Stocks(StockNo))
  cluster SupplyData(SuppCode);

/*  Create synonym for SupplyItems  */

create synonym SuppIts
  for SupplyItems;


