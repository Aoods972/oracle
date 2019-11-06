/*  File clearDB.sql  */

/*  Delete all course tables  */

drop cluster DeliveryData including tables;
drop cluster OrderData including tables;
drop cluster SupplyData including tables;

drop table Stocks;
drop table LowStocks;
drop table Stores;

drop sequence OrderNos;

drop synonym Ords;
drop synonym OrdIts;
drop synonym Dels;
drop synonym DelIts;
drop synonym Supps;
drop synonym SuppIts;


