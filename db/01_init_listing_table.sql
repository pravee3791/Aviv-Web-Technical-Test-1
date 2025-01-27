CREATE USER postgres;

CREATE TABLE IF NOT EXISTS public.listing
(
    id                   serial           primary key,
    name                 varchar          not null,
    description          varchar          not null,
    building_type        varchar          not null,
    street_address       varchar          not null,
    postal_code          varchar          not null,
    city                 varchar          not null,
    country              varchar          not null,
    surface_area_m2      double precision not null,
    rooms_count          integer          not null,
    bedrooms_count       integer          not null,
    price                double precision not null,
    contact_phone_number varchar,
    created_date         timestamp,
    updated_date         timestamp
);

CREATE TABLE IF NOT EXISTS public.price_updates_log
(
    id             serial           primary key,
    listing_id     integer          not null,
    price          double precision not null,
    updated_date   timestamp        not null,
    foreign key (listing_id) references public.listing (id)
);