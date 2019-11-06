
/*  File newstocks.sql  */

/*  Alters Stocks table to include supplier details  */

alter table stocks
  add (Price number(6,2),
       SuppCode varchar2(6));

/*  Inserts suppliers data into Stocks table     */
/*  Uses the cheapest supplier for each item     */
/*  This assumes that two suppliers do not both  */
/*    supply at the same cheapest price          */

update Stocks
  set (SuppCode, Price) =
    (select distinct SuppCode, Price
     from SupplyItems
     where Price =
       (select  min(Price)
       from SupplyItems
       where Stocks.StockNo = SupplyItems.StockNo)
     and Stocks.StockNo = SupplyItems.StockNo);


