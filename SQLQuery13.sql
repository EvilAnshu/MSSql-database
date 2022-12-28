use day_three;

select * from customers;
select * from Address;
select * from orders;

select c.first_name,c.last_name,c.mob_no,o.cust_id,o.Order_date,o.order_total,o.order_items,a.Full_add,a.Landmark,a.pincode from orders o left join customers c on o.order_nu=c.SN 
left join Address a on o.address=a.Add_id;

select o.cust_id,o.Order_date,o.order_total,o.order_items,a.Full_add,a.Landmark,a.pincode from orders o left join Address a on o.address=a.Add_id;

select max(order_total) from orders;
select * from orders where order_total=(select max(order_total) from orders);
select top(1) * from orders order by order_total desc;
select max(order_total) from orders where order_total<>(select max(order_total) from orders);