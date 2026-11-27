create table if not exists places (
  id text primary key, kind text, name text, memo text default '',
  closed int[] default '{}', ts bigint
);
alter table places enable row level security;
drop policy if exists "open" on places;
create policy "open" on places for all using (true) with check (true);

insert into places (id, kind, name, memo, closed, ts) values
('mwx1l9opatez', 'lunch', '백소정', '돈까스, 마제소바 등', '{}', 1700000000001),
('mwx1mkipdagl', 'lunch', '콩밭뜰', '두부 한 상', '{}', 1700000000002),
('mwx1nncqrqbg', 'lunch', '뜨돈', '돈까스', '{}', 1700000000003),
('mwx1ny8pufl8', 'lunch', '초계담', '닭요리', '{}', 1700000000004),
('mwx1ofmhos5j', 'lunch', '반마이', '태국음식', '{1}', 1700000000005),
('mwx1opw9fa0b', 'lunch', '라이하호첸', '중식당', '{}', 1700000000006),
('mwx1p9uxtyro', 'lunch', '삼동소바', '', '{1}', 1700000000007),
('mwx1pju1xjtn', 'lunch', '등촌샤브칼국수', '', '{}', 1700000000008),
('mwx1qcy9x3yf', 'lunch', '돈까스클럽', '', '{2}', 1700000000009),
('mwx1tr294bmx', 'lunch', '푸켓테이블', '태국 음식', '{1}', 1700000000010),
('mwx1uiohr9h2', 'lunch', '명가원설농탕', '설렁탕, 곰탕', '{}', 1700000000011),
('mwx1uvihazmi', 'lunch', '산남정 떡갈비', '', '{}', 1700000000012),
('mwx1vtf5rfk5', 'lunch', '심학산닭갈비', '부대찌개, 라면', '{1,2}', 1700000000013),
('mwx1w7gpxlv5', 'lunch', '우아한비빔밥', '', '{6}', 1700000000014),
('mwx1xddtfe6v', 'lunch', '강릉장칼', '', '{}', 1700000000015),
('mwx1xo89fzp7', 'lunch', '심학산수제돼지갈비', '제육', '{}', 1700000000016),
('mwx1yvc9dyej', 'lunch', '광릉불고기', '된장찌개', '{1}', 1700000000017),
('mwx1zk35kd90', 'lunch', '사과떡볶이', '', '{}', 1700000000018),
('mwx1zvflmex5', 'lunch', '소코아', '카레', '{}', 1700000000019),
('mwx21m6pn55d', 'lunch', '문발애 직화불백', '', '{}', 1700000000020),
('mwx22dqha8r1', 'lunch', '나능이버섯백숙', '', '{}', 1700000000021),
('mwx22o09ixsv', 'lunch', '비밥돈까스', '', '{}', 1700000000022),
('mwx23bqhrssh', 'lunch', '도깨비탕수육', '', '{}', 1700000000023),
('mwx23s4h3ar8', 'lunch', '한결같은비빔밥', '', '{0}', 1700000000024),
('mwx24m6pb87w', 'lunch', '구복만두', '', '{1}', 1700000000025),
('mwx269zsii71', 'lunch', '모락모락돼지고등어', '생선구이', '{3}', 1700000000026),
('mwx26jc0rket', 'lunch', '화목칼국수', '칼국수, 돈까스', '{3}', 1700000000027),
('mwx26scgiwj7', 'lunch', '강남면옥', '갈비탕', '{}', 1700000000028),
('mwx27xrcg4ly', 'cafe', '피스피스', '', '{}', 1700000000029),
('mwx28788qbya', 'cafe', '아르디움', '', '{}', 1700000000030),
('mwx28dz4okmz', 'cafe', '식물정거장', '', '{}', 1700000000031),
('mwx28mkpt1lc', 'cafe', '투바비앙', '', '{}', 1700000000032),
('mwx2992pjxny', 'cafe', '락가든', '루피', '{}', 1700000000033),
('mwx2aeggqs1e', 'cafe', '라라비지솔트', '소금빵', '{0,1}', 1700000000034),
('mwx2ama861w8', 'cafe', '루버월', '', '{}', 1700000000035),
('mwx2b36907s2', 'cafe', '과일의숲', '심학산쪽 단독건물 2층', '{}', 1700000000036),
('mwx2bqognwu1', 'cafe', '엘레노', '소코아 근처', '{}', 1700000000037),
('mwx2cbc047xv', 'cafe', '카페 움', '(구)혜지원', '{1}', 1700000000038),
('mwx2fby1x3ez', 'cafe', '어반그로브', '호두과자', '{6,0}', 1700000000039)
on conflict (id) do nothing;
