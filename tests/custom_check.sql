
--first_order_date is not null when number_of_orders is 1 or greater--
select * FROM {{ ref('final' )}}
where first_order_date is NULL
and number_of_orders >=1
union all
--most_recent_order_date is not null when number_of_orders is 1 or greater--
select * FROM {{ ref('final' )}}
where most_recent_order_date is NULL
and number_of_orders >=1
union all
--first_name is not null when last_name is not null--
select * from {{ ref('final' )}}
where first_name is NULL
and last_name is not null
union ALL
--last_name is not null when first_name is not null--
select * from {{ ref('final' )}}
where last_name is NULL
and first_name is not null
union all
--customer_id that is greater than 100--
SELECT
  *
from {{ ref('final' )}}
where customer_id < 100
