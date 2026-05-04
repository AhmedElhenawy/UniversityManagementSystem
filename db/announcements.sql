-- PBI-10, PBI-11 | Owner: Ahmed
-- Schema for the Announcements module.
-- Run once in the Supabase SQL Editor (Dashboard > SQL Editor > New query).

create table if not exists announcements (
  id          serial primary key,
  title       text        not null,
  body        text        not null,
  posted_by   uuid,                          -- references auth.users (set once auth is wired up)
  posted_at   timestamptz not null default now(),
  expires_at  timestamptz                    -- null = never expires
);

create index if not exists announcements_posted_at_idx
  on announcements (posted_at desc);

create index if not exists announcements_expires_at_idx
  on announcements (expires_at);

-- Enable Row Level Security
alter table announcements enable row level security;

-- PBI-11: Anyone authenticated can read non-expired announcements.
-- (For the initial demo we allow anonymous reads too; tighten once auth is in place.)
create policy "Anyone can read announcements"
  on announcements for select
  using (true);

-- PBI-10: Only admins can insert/update/delete.
-- Wire this to a profiles.role = 'admin' check once Geovany's auth lands.
-- For now we allow authenticated users to insert so the form is testable.
create policy "Authenticated can insert announcements"
  on announcements for insert
  with check (auth.role() = 'authenticated');

create policy "Authenticated can update announcements"
  on announcements for update
  using (auth.role() = 'authenticated');

create policy "Authenticated can delete announcements"
  on announcements for delete
  using (auth.role() = 'authenticated');

-- Sample data (optional — comment out before production)
insert into announcements (title, body, expires_at) values
  ('Welcome to UMS', 'The new University Management System is live. Explore your dashboard to get started.', null),
  ('Spring registration opens May 5', 'Course registration for the Spring semester begins May 5 at 9:00 AM.', '2026-06-01 00:00:00+00');
