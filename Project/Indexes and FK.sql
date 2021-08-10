use yandex_drive;

ALTER TABLE profiles
  ADD CONSTRAINT profiles_user_id_fk
    FOREIGN KEY (user_id) REFERENCES users(id)
  ADD CONSTRAINT profiles_city_id_fk
    FOREIGN KEY (city_id) REFERENCES cities(id)
   ADD CONSTRAINT profiles_insurance_id_fk
    FOREIGN KEY (insurance_id) REFERENCES insurances(id);
  
ALTER TABLE orders
  ADD CONSTRAINT users_user_id_fk
    FOREIGN KEY (user_id) REFERENCES users(id)
  ADD CONSTRAINT tariffes_tariff_id_fk
    FOREIGN KEY (tariff_id) REFERENCES tariffes(id)
   ADD CONSTRAINT cars_car_id_fk
    FOREIGN KEY (car_id) REFERENCES cars(id);  
   
ALTER TABLE cars
  ADD CONSTRAINT cars_car_categories_id_fk
    FOREIGN KEY (category_id) REFERENCES car_categories(id);

ALTER TABLE appeals
  ADD CONSTRAINT appeals_order_id_fk
    FOREIGN KEY (order_id) REFERENCES orders(id) 
  ADD CONSTRAINT appeals_status_id_fk
    FOREIGN KEY (status_id) REFERENCES appeal_statuses(id) 
  ADD CONSTRAINT appeals_malfunction_id_fk
    FOREIGN KEY (malfunction_id) REFERENCES malfunction_categories(id) 
  ADD CONSTRAINT appeals_operator_id_fk
    FOREIGN KEY (operator_id) REFERENCES operators(id);      
   
ALTER TABLE operators
  ADD CONSTRAINT operators_position_id_fk
    FOREIGN KEY (position_id) REFERENCES operator_positions(id)  
  ADD CONSTRAINT operators_city_id_fk
    FOREIGN KEY (city_id) REFERENCES cities(id);   
 

CREATE INDEX users_fio_idk ON users (first_name, last_name);
CREATE INDEX operators_fio_idk ON operators (first_name, last_name);
CREATE INDEX orders_start_dt_idk ON orders (start_dt);
CREATE INDEX orders_end_dt_idk ON orders (end_dt);
CREATE INDEX appeals_created_dt_idk ON appeals (created_appeal_dt);
CREATE INDEX appeals_finish_dt_idk ON appeals (finish_appeal_dt);