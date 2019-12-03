
spool CW2_c1647022.txt
/*Query1:*/
Select stockno, description, Quantity
from Stocks
where Quantity > 20
and StoreCode = 'CENT'
Order By Quantity desc;

/*Query2:*/
Select * from Suppliers
where town = 'London'
Or Postcode like '%NP%';

/*Query3:*/
Select Storecode, count(stockNo), avg(Price)
From Stocks
Group by StoreCode
Having avg(Price) > (Select avg(Price) from Stocks);

/*Query4:*/
Select town, count(town)
from Suppliers
Group By town
Having count(town) >= 2;

/*Query5:*/
Select stocks.stockno, stocks.description, replace(count(orderno),0, 'No Orders') "Number of Orders"
from stocks, orderitems
where stocks.stockno = orderitems.stockno(+)
group by stocks.stockno, stocks.description;

/*Query6:*/
select storecode, count(stockno)
from Stocks
group by StoreCode
order by count(stockno) desc
fetch next 1 row only;

/*Query7:*/
col StoreCode format A12 heading 'Store Code';
col Description format A30 heading 'Item Description';
col Price format $999,9990.99 heading 'Price';
col Quantity format 9999 heading 'Quantity';
col (Price*Quantity) format $999999.99 heading 'Value';

set Pause off;
set feedback off;
set space 6;
set newpage 2;
set pagesize 30;
set linesize 200;
set underline =;
set RecSepChar '*';
ttitle center 'Current Stock Value by Store' skip 2 -
center 'Prepared by ' &reporting_officer skip 2 -
center _DATE skip 2;
btitle center format 999 SQL.PNO;

break on storecode skip 2 on Report;
compute sum label Store_Total of (Price*Quantity) on Storecode;
compute sum label Grand_Total of (Price*Quantity) on Report;


select storecode, description, price, quantity, (Price * Quantity)
from stocks
order by storecode;

spool off;
