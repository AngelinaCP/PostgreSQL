select person.address as address,
        round(max(age) - min(cast(age as decimal)) / max(age), 2) as formula,
        round(avg(person.age), 2) as average,
        round(max(age) - min(cast(age as decimal)) / max(age), 2) >  round(avg(person.age), 2) as comparison

from person
group by address
order by address

