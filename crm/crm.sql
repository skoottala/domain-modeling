-- Drops existing tables, so we start fresh with each
-- run of this script
-- e.g. DROP TABLE IF EXISTS ______;

-- CREATE TABLES
DROP TABLE IF EXISTS salespeople;
DROP TABLE IF EXISTS activities;
DROP TABLE IF EXISTS companies;
DROP TABLE IF EXISTS contacts_company;
DROP TABLE IF EXISTS industries;
DROP TABLE IF EXISTS internal_contact;
DROP TABLE IF EXISTS join_industries_companies;

CREATE TABLE salespeople (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name TEXT,
  last_name TEXT,
  email TEXT,
  phone_number TEXT
);
CREATE TABLE contacts (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name TEXT,
  last_name TEXT,
  email TEXT,
  phone_number TEXT,
  company_id INTEGER);

CREATE TABLE activities (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  created_at TEXT,
  notes TEXT,
  salesperson_id INTEGER,
  contact_id INTEGER
);
);


  CREATE TABLE companies(
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  company_name TEXT);


CREATE TABLE industries (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  industry TEXT);


CREATE TABLE industry_memberships(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    industries_id INTEGER,
    companies_id INTEGER);