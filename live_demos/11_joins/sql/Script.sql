desc;
-- film id, title
SELECT * from main.film f ;
-- film_id, actor_id
SELECT * from main.film_actor fa ;
--actor_id, first_name, last_name
SELECT * from main.actor a ;

-- Fråga: wich actor played in wich movies?

SELECT
	a.first_name ,
	a.last_name ,
	f.title as film_title,
	a.last_update ,
	a.actor_id
from
	main.film f
left join main.film_actor fa on
	f.film_id = fa.film_id
left join main.actor a on
	a.actor_id = fa.actor_id ;







