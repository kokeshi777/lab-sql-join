#Task 1
select  c.name, count(f.film_id) AS n_of_films
from sakila.category as c
join sakila.film_category as f -- default type of join is INNER JOIN. 
on c.category_id = f.category_id
group by c.name
order by count(f.film_id);
# Task 2
select  s.first_name, s.last_name, a. address
from staff as s
join address as a -- default type of join is INNER JOIN. 
on s.address_id = a.address_id
order by s.first_name;
#Task 3
select s.first_name, s.last_name, sum(p.amount) as August_2005_Amount
from staff as s
left join payment as p
on s.staff_id = p.staff_id
where month(p.payment_date) = 08 and year(p.payment_date) = 2005
group by s.last_name
order by sum(p.amount) desc;
#Task 4
select count(a.actor_id) as actors, f.title as 'film' from film as f
left join film_actor as a 
on a.film_id = f.film_id
group by f.title
order by count(a.actor_id) desc;
#Task 5
select c.first_name, c.last_name, sum(p.amount) as total_paid
from customer as c
left join payment as p
on c.customer_id = p.customer_id
group by c.customer_id
order by c.last_name;










