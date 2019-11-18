clear screen;
accept Report_File char prompt 'Enter a File Name for Summary Report ';

col StoreCode format A8 heading 'Store|Code';
col SuppCode format A8 heading 'Supplier|Code';
col StockNo format 99999 heading 'Stock|Number';
col (Price * Quantity) format $999999.99 heading 'Item|Price';


set pause off;
set feedback off;
set space 6;
set newpage 2;
set pagesize 54;
set linesize 60;
set underline =;
ttitle center 'Current Stock Value by Store' skip 2 left -
'prepared by ' &Reporting_Officer right -
&todays_date skip 4;
btitle center format 999 SQL.PNO;

break on StoreCode skip 2 on SuppCode skip 1 on Report;

compute sum of (Price * Quantity) on StoreCode;
compute sum of (Price * Quantity) on Report;

spool &Report_File;

select StoreCode, SuppCode, StockNo, (Price * Quantity)
from Stocks
order by StoreCode, SuppCode;

spool off;

clear breaks;
clear columns;
clear computes;
set pause on;
