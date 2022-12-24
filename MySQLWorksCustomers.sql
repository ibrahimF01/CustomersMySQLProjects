select * from customers where customerNumber=141;
select * from payments;
-- Soru 141 nolu müşterinin yaptığı ödemeleri listeletiniz
select * from payments where customerNumber=141;
-- Soru bu müşterinin yaptığı en büyük, en küçük ve toplam ödemeyi bulunuz.
select max(amount) as maxOdeme,  min(amount) as minOdeme,
 sum(amount) as toplamOdeme from  payments where customerNumber=141;
 -- Soru bu müşteride kaç alışveriş vardır ?
 select count(amount) from payments where customerNumber=141;
 select count(*) from payments where customerNumber=141;
 select * from customers;
 select * from customers where contactLastName='young';
 select * from customers where customerNumber=141 OR contactLastName='121';
 select * from customers where customerNumber in(141,121,119);
 select * from customers where contactLastName='young' AND state= 'CA';
-- Kredi limiti 50 binden büyük kaç müşteri var?
select   count(*) from customers where creditLimit>'50000';
-- Kredi limiti 50 bin ile 80 bin arası müşterilerin listesi
select   count(*) from customers where creditLimit>'50000' and creditLimit<'80000';
select   count(*) from customers where creditLimit between '50000' and '80000';