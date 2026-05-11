-- Schema
CREATE SCHEMA IF NOT EXISTS wikiaves;

-- Observations Table
CREATE TABLE wikiaves.records (
    record_id          INTEGER PRIMARY KEY,
    media_type         VARCHAR,
    scientific_name    VARCHAR,
    common_name        VARCHAR,
    sex                VARCHAR,
    age                VARCHAR,
    main_action        VARCHAR,
    photo_date         DATE,
    publication_date   DATE,
    location           VARCHAR,
    municipality       VARCHAR,
    state              CHAR(2),
    camera             VARCHAR,
    author             VARCHAR,
    guide              VARCHAR,
    author_notes       TEXT,
    sound_emitter      VARCHAR,
    emitter_seen       BOOLEAN,
    context            VARCHAR,
    after_playback     BOOLEAN,
    rec_datetime       TIMESTAMP,
    rec_date           DATE,
    rec_time           TIME,
    recorder           VARCHAR,
    microphone         VARCHAR,
    file_size          FLOAT,
    duration           INTEGER,
    banded             BOOLEAN,
    possible_release   BOOLEAN
);

-- Reference Tables
CREATE TABLE wikiaves.df_subjects (
    subject_id   INTEGER PRIMARY KEY,
    subject      VARCHAR
);

CREATE TABLE wikiaves.df_sounds (
    sound_id     INTEGER PRIMARY KEY,
    sound_type   VARCHAR
);

-- Relationship Tables
CREATE TABLE wikiaves.df_subjects_bridge (
    record_id   INTEGER REFERENCES wikiaves.records(record_id),
    subject_id  INTEGER REFERENCES wikiaves.df_subjects(subject_id),
    PRIMARY KEY (record_id, subject_id)
);

CREATE TABLE wikiaves.df_sounds_bridge (
    record_id   INTEGER REFERENCES wikiaves.records(record_id),
    sound_id    INTEGER REFERENCES wikiaves.df_sounds(sound_id),
    PRIMARY KEY (record_id, sound_id)
);