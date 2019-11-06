spool coursework-result15-16

set linesize 200
set wrap on

select stockno, description, quantity
from   stocks
where  quantity > 25
order by quantity;

select suppcode, suppname
from   suppliers
where  town = 'Cardiff' or town = 'Swansea';

select *
from   suppliers
where  telno like '081%'
or     street like '%Road%';

select stores.storecode, count(stocks.stockno) "Number of Stock Items", round(avg(price),2) "Average Price"
from   stocks, stores
where  stores.storecode = stocks.storecode
group by stores.storecode;

select storecode
from   stocks
group by storecode
having count(distinct suppcode) >= 3;

select suppname as "Supplier Name", street||', '||town||', '||county||', '||postcode as "Supplier Address"
from   suppliers
where  county IS NOT null
union
select suppname as "Supplier Name", street||', '||town||', '||postcode as "Supplier Address"
from   suppliers
where  county IS null;

select stores.storecode
from   stores
where  storecode not in
      (select stores.storecode
       from   suppliers, stocks, stores
       where  town = 'Cardiff'
       and    stores.storecode = stocks.storecode
       and    stocks.suppcode = suppliers.suppcode);

select stockno, description, price
from   stocks
where  price > 
      (select avg(price)
       from   stores, stocks
       where  stores.storecode = 'LEG'
       and    stores.storecode = stocks.storecode);

select stocks.stockno, description, count(orderno)
from   stocks, orders
where  stocks.suppcode = orders.suppcode(+)
group by stocks.stockno, description;


select s1.storecode, description, s1.price
from   stocks s1
where  s1.price = 
      (select max(price)
       from   stocks s2
       where  s1.storecode = s2.storecode);

select storecode, description, price
from   stocks
where  price in 
      (select max(price)
       from   stocks
       group by storecode);
                
spool off