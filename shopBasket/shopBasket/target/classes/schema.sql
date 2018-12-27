create table shop_user (
  id bigserial primary key,
  name varchar(30)
);

create table product (
  id bigserial primary key,
  title varchar(30)
);

create table basket (
  id bigserial primary key,
  user_id bigint,
  foreign key (user_id) references shop_user(id)
);

create table basket_product (
  basket_id bigint,
  product_id bigint,
  foreign key (basket_id) references basket(id),
  foreign key (product_id) references product(id)
);

ALTER TABLE public.shop_user ADD age integer NOT NULL;
ALTER TABLE public.shop_user ALTER COLUMN password_hash TYPE character varying(100) USING password_hash::character varying(100);
ALTER TABLE public.shop_user DROP hash_password;

CREATE TABLE auth
(
    id bigserial primary key,
    user_id int,
    cookie_value character varying (100),
    foreign key (user_id) references shop_user(id)
);