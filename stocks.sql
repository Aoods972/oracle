/*  File stocks.sql  */

/*  Create course table Stocks  */

create table Stocks
  (StockNo      number(6) not null primary key,
   StoreCode    varchar2(6) not null, 
   Description  varchar2(24),
   Quantity     number(6),
   Units        varchar2(12),
   Reorder      number(6),
   foreign key (StoreCode)
     references Stores(StoreCode));


