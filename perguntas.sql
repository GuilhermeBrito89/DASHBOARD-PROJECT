/*1. Quais são os 5 episódios com melhores avaliações*/
select rating, title
from gotepisodes
order by rating desc
limit 5;

/*2. Quais são os 5 episódios com piores avaliações*/
select rating, title
from gotepisodes
order by rating
limit 5;

/*3. Quais episódios tem 1 hora ou mais de duração?*/
select title, duration
from gotepisodes
where duration >= 60
order by duration desc;

/*4. Quantas casas (famílias) estão presentes no Norte?*/
select count(house_name)
from house
where house_region like '%north%';

select count(house_name)
from house;

/*5. Quais personagens estão presentes em todas as temporadas?*/
select character_name, eps_appeared
from gotcharacter
where f_appear = '2011'
	and l_appear = '2019'
    order by eps_appeared desc;
    

