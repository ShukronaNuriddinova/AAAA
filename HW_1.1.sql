
//// 9 Баллов!

DROP TABLE IF EXISTS public.bond_quotes;

CREATE TABLE public.bond_quotes
(  Currency char(3) NOT NULL,
   Date_trading date NOT NULL,
   Exch_me varchar(70),
   Bid_price real,
   Ask_price real,
   Opening_price numeric,
   Indicative_price numeric,
   Indicative_price_type varchar(6),
   Turnover numeric, 
   Number_of_trades smallint,
   Coupon numeric,
   YTM_ind numeric,
   Coupon_accum numeric, 
   Option_date date, 
   Duration_option numeric,
   Trade_regime varchar(1000),
   ISIN varchar(15),
   G_spread numeric,
   State_bank boolean,
   Issuer varchar(70),
   Days_to_maturity smallint,
   Total_days_to_maturity smallint,
   Days_to_call smallint,
   Callable boolean,
   G_spread_interpolated numeric,
   RF_interpolated numeric
)
WITH (
    OIDS=FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.bond_quotes
        OWNER to postgres;

-- Формат даты для Маков

ALTER DATABASE postgres SET datestyle TO "ISO, DMY";         

-- Загрузить данные

\copy public.bond_quotes FROM 'C:/Users/Public/bond_quotes.csv'  DELIMITER ';' CSV HEADER; 


