clear screen;
accept Report_File char prompt 'Enter a filename for Summary Report ';
col StoreCode format A8 heading 'Store Code';
col Description format A30 heading 'Item Description';
col Price format $999,9990.99 heading 'Price';
col Quantity format 9999 heading 'Quantity';
col (Price*Quantity) format $999999.99 heading 'Value';

set Pause off;
set feedback off;
set space 6;
set newpage 2;
set pagesize 70;
set linesize 150;
set underline =;
ttitle center 'Current Stock Value by Store' skip 2 -
center 'Prepared by ' &reporting_officer skip 2 -
center SYSDATE skip 2;
btitle center format 999 SQL.PNO;


break on storecode skip 1 on description skip 1 on report;
compute sum of (Price * Quantity) on storecode;
compute sum of (Price * Quanity) on report;


spool &Report_File;

select storecode, description, price, quantity, (Price * Quantity)
from stocks
order by storecode;

spool off;


clear breaks;
clear columns;
clear computes;
set pause on;
