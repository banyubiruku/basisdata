# Belajar pertemuan 2 dengan SQL
--Disini kita akan belajar 
--Join
--Menampilkan table wishlist
select * from wishlist;

select * 
from wishlist 
join products on wishlist.id_produk = products.id;

--Menampilkan secara custom
select products.id, products.nama, wishlist.keterangan
from wishlist join products on wishlist.id_produk = products.id;

--menggunakan alias
select p.id, p.nama, w.keterangan
from wishlist as w join products as p on w.id_produk = p.id;

--Melakukan join ke multiple table
--sebelumnya kita akan menambahkan kolom di wishlist
alter table wishlist
add column id_customer int;

--cek table wishlist
select * from customer;

--menambahkan relasi table wishlist ke id_customer terhadap table customer
alter table wishlist
add constraint fk_wishlist_customer 
foreign key (id_customer) 
references customer(id);

--update table wishlist
update wishlist
set id_customer = 1
where id in (2,3);

update wishlist
set id_customer = 4 
where id = 4;


