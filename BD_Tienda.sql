Create database Tienda;
use Tienda;


insert into Products values(null,'Pantalla LCD','Es un buen producto','100000',20,0,'http://localhost/Tienda/Image/Products/default.png',2);
insert into Products values(null,'Pantalla HP','Es un buen producto','100000',20,0,'http://localhost/Tienda/Image/Products/default.png',1);
insert into Products values(null,'Celular Huawei J5','Es un buen producto','150000',20,0,'http://localhost/Tienda/Image/Products/default.png',1);
insert into Products values(null,'Teclado RJ45','Es un buen producto','10000',20,0,'http://localhost/Tienda/Image/Products/default.png',1);
insert into Products values(null,'Mouse led','Es un buen producto','4000',20,0,'http://localhost/Tienda/Image/Products/default.png',1);
insert into Products values(null,'Silla Gamer','Es un buen producto','200000',20,0,'http://localhost/Tienda/Image/Products/default.png',1);
insert into Products values(null,'Mesa Gamer','Es un buen producto','100000',20,0,'http://localhost/Tienda/Image/Products/default.png',1);
insert into Products values(null,'Abanico','Es un buen producto','30000',20,0,'http://localhost/Tienda/Image/Products/default.png',2);
insert into Products values(null,'CPU g-force Envidia','Es un buen producto','150000',20,0,'http://localhost/Tienda/Image/Products/default.png',1);
insert into Products values(null,'GTA5','Es un buen producto','40000',20,0,'http://localhost/Tienda/Image/Products/default.png',3);
insert into Products values(null,'Red dead Redemption','Es un buen producto','40000',20,0,'http://localhost/Tienda/Image/Products/default.png',3);
insert into Products values(null,'Minecraft','Es un buen producto','40000',20,0,'http://localhost/Tienda/Image/Products/default.png',3);
insert into Products values(null,'Naruto','Es un buen producto','40000',20,0,'http://localhost/Tienda/Image/Products/default.png',3);
update Products set QuantitySold=7 where idProducts=7;
call pa_getNewProducts();
call pa_getTopProducts();
call pa_getProducts();
call pa_getProductById(8);
call pa_getProductByRange(30000,150000);
call pa_getProductByCategory(3);
call pa_getSlide();
call pa_getinfoBussiness();
call pa_getCategory();
call pa_getProductsByMin(30000);
call pa_getProductsByMax(150000);
call pa_getProductsByMinAndCategory(30000,4);
call pa_getProductsByMinAndMaxAndCategory(30000,150000,4);
call pa_getProductsByMaxAndCategory(150000,4);
CALL `tienda`.`pa_getUserbyId`("justinvillaespinoza68@gmail.com","JvE199911"); -- p
call pa_newUser("Jose","Maria","Gutierrez","J@gmail.com","1234");
-- Falta procedimiento para insertar, eliminar, modificar productos
-- Falta procedimiento para modificar datos de la empresa
-- Procedimiento de listar, eliminar, y insertar carritos de compra
Select * from Slide;
select * from user;
Select * from bussiness;
select * from Products where Price Between 10000 and 100000;
select * from Category;
insert into NivAdmin values(null,"User");
insert into User values(null,"Justin","Villalobos","Espinoza","justinvillaespinoza68@gmail.com","JvE199911",1);


ALTER TABLE user
ADD CONSTRAINT fk_UserAdmin
FOREIGN KEY (NivAdmin) REFERENCES  NivAdmin(idNivAdmin)
 ON DELETE CASCADE ;
 
ALTER TABLE user
DROP FOREIGN KEY fk_UserAdmin;



