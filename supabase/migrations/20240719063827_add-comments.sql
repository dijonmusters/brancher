create table comments (
  id bigint generated always as identity primary key,
  content text not null,
  post_id bigint not null references posts (id)
);

alter table comments enable row level security;

create policy "Allow read access to comments"
  on comments
  for select
  using (true);