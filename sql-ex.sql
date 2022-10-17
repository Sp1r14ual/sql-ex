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


--9
SELECT DISTINCT maker FROM product JOIN pc ON (pc.speed >= 450 AND product.model = pc.model)
