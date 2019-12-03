
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
center SYSDATE skip 2;
btitle center format 999 SQL.PNO;

break on storecode skip 2 on Report;
compute sum label Store Total of (Price*Quantity) on Storecode;
compute sum label Grand Total of (Price*Quantity) on Report;


select storecode, description, price, quantity, (Price * Quantity)
from stocks
order by storecode;
