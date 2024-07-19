create table posts (
  id bigint generated always as identity primary key,
  title text not null,
  content text,
  is_published boolean not null default false
);

alter table posts enable row level security;

create policy "Allow read access to posts"
  on posts
  for select
  using (true);