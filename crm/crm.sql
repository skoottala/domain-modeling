-- Drops existing tables, so we start fresh with each
-- run of this script
-- e.g. DROP TABLE IF EXISTS ______;

-- CREATE TABLES
DROP TABLE IF EXISTS contacts;
DROP TABLE IF EXISTS activities;
DROP TABLE IF EXISTS companies;
DROP TABLE IF EXISTS contacts_company;
DROP TABLE IF EXISTS industries;
DROP TABLE IF EXISTS internal_contact;
DROP TABLE IF EXISTS join_industries_companies;

CREATE TABLE contacts (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name TEXT,
  last_name TEXT,
  email TEXT,
  phone_number TEXT
);
CREATE TABLE activities (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  email_id TEXT,
  call_id TEXT,
  date TEXT,
  time TEXT
);


  CREATE TABLE companies(
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  company_name TEXT,
  industry TEXT);

  CREATE TABLE contacts_company(
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  companies_id INTEGER,
  contacts_id INTEGER);

CREATE TABLE industries (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  industry TEXT);


CREATE TABLE internal_contact (
id INTEGER PRIMARY KEY AUTOINCREMENT,
first_name TEXT,
last_name TEXT
email TEXT,
phone_number TEXT);

CREATE TABLE join_industries_companies (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    industries_id INTEGER,
    companies_id INTEGER);