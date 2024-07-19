insert into posts (title, content, is_published)
  values
    ('First post', 'The content of my first post', true),
    ('Second post', 'The content of my second post', false),
    ('Third post', 'The content of my third post', true);

insert into comments (content, post_id)
  values
    ('First comment', (
      select id
        from posts
        where title = 'First post'
    )),
    ('Second comment', (
      select id
        from posts
        where title = 'First post'
    )),
    ('Third comment', (
      select id
        from posts
        where title = 'Second post'
    ));
