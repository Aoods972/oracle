/*  File clusters.sql  */


/*  Create Supplies, Orders and Deliveries clusters  */

create cluster SupplyData
  (SuppCode varchar2(4));
	
create cluster OrderData
  (OrderNo number(6));

create cluster DeliveryData
  (DelivNo number(6));


/*  Create cluster indices  */

 create index SupplyDataKey
  on cluster SupplyData;

create index OrderDataKey
  on cluster OrderData;

create index DelivDataKey
  on cluster DeliveryData; 



