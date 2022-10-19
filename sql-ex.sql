--1
SELECT model, speed, hd FROM pc WHERE price < 500

--2
SELECT DISTINCT maker FROM product WHERE type="Printer"

--3
SELECT model, ram, screen FROM laptop WHERE price > 1000

--4
SELECT * FROM printer WHERE color="y"

--5
SELECT model, speed, hd FROM pc WHERE (cd = "12x" OR cd = "24x") AND price < 600

--6
SELECT DISTINCT product.maker, laptop.speed from product JOIN laptop ON (laptop.hd >= 10  AND product.model = laptop.model)

--7
SELECT DISTINCT pc.model, pc.price FROM pc JOIN product ON (product.model = pc.model AND product.maker='B') UNION SELECT DISTINCT laptop.model, laptop.price FROM laptop JOIN product ON (product.model = laptop.model AND product.maker='B') UNION SELECT DISTINCT printer.model, printer.price FROM printer JOIN product ON (product.model = printer.model AND product.maker='B')

--8
SELECT maker FROM product WHERE type='pc' EXCEPT SELECT maker FROM product WHERE type='laptop'

--9
SELECT DISTINCT maker FROM product JOIN pc ON (pc.speed >= 450 AND product.model = pc.model)

--10
SELECT model, price FROM printer WHERE price IN (SELECT MAX(price) FROM printer)

--11
SELECT AVG(speed) FROM pc

--12
SELECT AVG(speed) FROM laptop WHERE price > 1000

--13
SELECT AVG(speed) FROM pc JOIN product ON pc.model = product.model AND product.maker='A'

--14
SELECT ships.class, ships.name, classes.country FROM classes JOIN ships ON (ships.class = classes.class AND classes.numGuns >= 10)

--15
SELECT hd FROM pc GROUP BY hd HAVING COUNT(model) >= 2

--16
SELECT DISTINCT first.model, second.model, first.speed, first.ram FROM pc as first, pc as second WHERE first.model > second.model AND first.speed = second.speed AND first.ram = second.ram
