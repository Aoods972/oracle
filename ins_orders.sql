
/* insert a few example orders */

insert into orders
  (orderno, suppcode, orderdate, authority, totcost)
  values
  (ordernos.nextval, 'S4', sysdate-1, user, 32.90);

insert into orderitems
  (orderno, stockno, qtyord)
  values
  (ordernos.currval, 108, 10);

insert into orderitems
  (orderno, stockno, qtyord)
  values
  (ordernos.currval, 111, 10);

insert into orderitems
  (orderno, stockno, qtyord)
  values
  (ordernos.currval, 106, 10);

insert into orders
  (orderno, suppcode, orderdate, authority, totcost)
  values
  (ordernos.nextval, 'S2', sysdate-1, user, 242.30);

insert into orderitems
  (orderno, stockno, qtyord)
  values
  (ordernos.currval, 116, 10);
 
insert into orderitems
  (orderno, stockno, qtyord)
  values
  (ordernos.currval, 117, 10);
