# RSpec & SimpleCov

* Instalar dependencias: `bundle install`
* Correr 1 test: `ruby tests/test_1.rb`
* Correr todos los test: `ruby tests/*`
* Ver coverage: `open coverage/index.html` (ejecutar despues de correr 1 o más test)

**Imporante**: no correr con `rspec` porque se genera un error por el uso de SimpleCov (`require 'simplecov'`). De querer usar dicho comando, comentar el contenido del archivo `test_helper.rb`.

---

##### Integrantes:

* Max Undurraga - mundurraga2@uc.cl - 15621146
* Alberto Chadwick - achadwick@uc.cl - 15621596

---

## CC

#### Predicados

1. p1: `(is_hardcover)`
2. p2: `(is_frecuent_client)`
3. p3: `(total_pages > 500 && total_pages_images >= 6)`
4. p4: `(is_premium_book && (pages_of_text > 300 || total_pages_images >= 5) && !is_frecuent_client)`

#### Clausulas

1. c1:​ `(is_hardcover)`
2. c2:​ `(is_frecuent_client)`
3. c3:​ `(total_pages > 500)`
4. c4:​ `(total_pages_images >= 6)`
5. c5:​ `(is_premium_book)`
6. c6:​ `(pages_of_text > 300)`
7. c7:​ `(total_pages_images >= 5)`

#### ​Test requirements

1. TR1: c1 debe ser ​True
2. TR2: c1 debe ser False
3. TR3: c2 debe ser ​True
4. TR4: c2 debe ser False
5. TR5: c3 debe ser ​True
6. TR6: c3 debe ser False
7. TR7: c4 debe ser ​True
8. TR8: c4 debe ser False
9. TR9: c5 debe ser ​True
10. TR10: c5 debe ser False
11. TR11: c6 debe ser ​True
12. TR12: c6 debe ser False
13. TR13: c7 debe ser ​True
14. TR14: c7 debe ser False

#### Test cases

1. TC1: TR1, TR4, TR5, TR7, TR9, TR11, TR13
    * Input:
        * `pages_of_text = 590`
        * `double_pages_images = 0`
        * `images = 10`
        * `is_hardcover = true`
        * `is_premium_book = true`
        * `is_frecuent_client = false`
    * Output:
        * 24000
2. TC2: TR2, TR3, TR6, TR8, TR10, TR12, TR14
    * Input:
        * `pages_of_text = 10`
        * `double_pages_images = 0`
        * `images = 0`
        * `is_hardcover = false`
        * `is_premium_book = false`
        * `is_frecuent_client = true`
    * Output:
        * 4000

---

## CACC

#### Predicados

1. p1: `(is_hardcover)`
2. p2: `(is_frecuent_client)`
3. p3: `(total_pages > 500 && total_pages_images >= 6)`
4. p4: `(is_premium_book && (pages_of_text > 300 || total_pages_images >= 5) && !is_frecuent_client)`

#### Clausulas

1. c1:​ `(is_hardcover)`
2. c2:​ `(is_frecuent_client)`
3. c3:​ `(total_pages > 500)`
4. c4:​ `(total_pages_images >= 6)`
5. c5:​ `(is_premium_book)`
6. c6:​ `(pages_of_text > 300)`
7. c7:​ `(total_pages_images >= 5)`

#### ​Test requirements

1. TR1: p1 debe ser True y c1 es clausula mayor
2. TR2: p1 debe ser False y c1 es clausula mayor
3. TR3: p2 debe ser True y c2 es clausula mayor
4. TR4: p2 debe ser False y c2 es clausula mayor
5. TR5: p3 debe ser True y c3 es clausula mayor
6. TR6: p3 debe ser False y c3 es clausula mayor
7. TR7: p4 debe ser True y c2 es clausula mayor
8. TR8: p4 debe ser False y c2 es clausula mayor

#### Test cases

1. TC1: TR1, TR4, TR5, TR7
    * Input:
        * `pages_of_text = 590`
        * `double_pages_images = 0`
        * `images = 10`
        * `is_hardcover = true`
        * `is_premium_book = true`
        * `is_frecuent_client = false`
    * Output:
        * 24000
2. TC2: TR2, TR3, TR6, TR8
    * Input:
        * `pages_of_text = 10`
        * `double_pages_images = 0`
        * `images = 0`
        * `is_hardcover = false`
        * `is_premium_book = false`
        * `is_frecuent_client = true`
    * Output:
        * 4000
