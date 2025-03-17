with u as (
    insert into users (name)
    values ('John Doe'), ('Jane Doe')
    returning id
)
insert into posts (text, owner_id)
select (concat('Hello, world!', u.id, '!'), u.id)
from u;