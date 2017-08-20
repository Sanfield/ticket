/*==============================================================*/
/* DBMS name:      ORACLE Version 11g                           */
/* Created on:     2017/8/15 14:46:18                           */
/*==============================================================*/


alter table baggages
   drop constraint FK_BAGGAGES_REFERENCE_STATIONS;

alter table baggages
   drop constraint FK_BAGGAGES_REFERENCE_ROUTES;

alter table routes
   drop constraint FK_ROUTES_END_STA_STATIONS;

alter table routes
   drop constraint FK_ROUTES_STAT_STA_STATIONS;

alter table serials
   drop constraint FK_SERIALS_REFERENCE_STATIONS;

alter table serials
   drop constraint FK_SERIALS_REFERENCE_ROUTES;

alter table tickets
   drop constraint FK_TICKETS_REFERENCE_EMPL;

alter table tickets
   drop constraint FK_TICKETS_REFERENCE_PASSENGE;

alter table tickets
   drop constraint FK_TICKETS_REFERENCE_TRIPS;

alter table trips
   drop constraint FK_TRIPS_REFERENCE_EMPL;

alter table trips
   drop constraint FK_TRIPS_REFERENCE_VEHICLES;

alter table trips
   drop constraint FK_TRIPS_REFERENCE_ROUTES;

drop table baggages cascade constraints;

drop table empl cascade constraints;

drop table passengers cascade constraints;

drop table routes cascade constraints;

drop table serials cascade constraints;

drop table stations cascade constraints;

drop table sur_ser_fee cascade constraints;

drop table tickets cascade constraints;

drop table trips cascade constraints;

drop table vehicles cascade constraints;

/*==============================================================*/
/* Table: baggages                                              */
/*==============================================================*/
create table baggages 
(
   baggage_id           INTEGER              not null,
   station_id           CHAR(4),
   route_id             CHAR(4),
   state                INTEGER              not null,
   sender_name          varchar2(20)         not null,
   sender_tel           varchar2(20)         not null,
   consignee_name       varchar2(20)         not null,
   consignee_tel        varchar2(20)         not null,
   weight               INTEGER              not null,
   worth                INTEGER,
   submit_date          DATE                 not null,
   deliverDateTime      DATE,
   constraint PK_BAGGAGES primary key (baggage_id)
);

/*==============================================================*/
/* Table: empl                                                  */
/*==============================================================*/
create table empl 
(
   emp_id               INTEGER              not null,
   account              varchar2(25)         not null,
   pwd                  varchar2(100)        not null,
   real_name            varchar2(50)         not null,
   sex                  CHAR(1)              not null,
   nationality          varchar2(20),
   certificate_type     INTEGER              not null,
   certificate_number   varchar2(50)         not null,
   dob                  DATE                 not null,
   hire_date            DATE,
   address              varchar2(100),
   telephone            varchar2(20)         not null,
   duty                 varchar2(50),
   role                 INTEGER              not null,
   DELE_FLAG            CHAR(1),
   constraint PK_EMPL primary key (emp_id)
);

/*==============================================================*/
/* Table: passengers                                            */
/*==============================================================*/
create table passengers 
(
   passenger_id         INTEGER              not null,
   account              varchar2(25)         not null,
   pwd                  varchar2(100)        not null,
   real_name            varchar2(50)         not null,
   certificate_type     INTEGER              not null,
   certificate_number   varchar2(50)         not null,
   telephone            varchar2(20)         not null,
   email                varchar2(50),
   dele_flag            char(1),
   constraint PK_PASSENGERS primary key (passenger_id)
);

/*==============================================================*/
/* Table: routes                                                */
/*==============================================================*/
create table routes 
(
   route_id             CHAR(4)              not null,
   route_name           varchar2(50)         not null,
   price                number(4,1)          not null,
   baggage_fee          number(3,1)          not null,
   start_station        char(4)              not null,
   terminal_station     char(4)              not null,
   dele_flag            char(1),
   constraint PK_ROUTES primary key (route_id)
);

/*==============================================================*/
/* Table: serials                                               */
/*==============================================================*/
create table serials 
(
   serial_id            INTEGER              not null,
   route_id             CHAR(4)              not null,
   station_id           CHAR(4)              not null,
   "order"              INTEGER              not null,
   price                number(4,1)          not null,
   baggage_fee          number(3,1)          not null,
   dele_flag            char(1),
   constraint PK_SERIALS primary key (serial_id)
);

/*==============================================================*/
/* Table: stations                                              */
/*==============================================================*/
create table stations 
(
   station_id           CHAR(4)              not null,
   station_name         varchar2(30)         not null,
   distance             INTEGER              not null,
   dele_flag            char(1),
   constraint PK_STATIONS primary key (station_id)
);

/*==============================================================*/
/* Table: sur_ser_fee                                           */
/*==============================================================*/
create table sur_ser_fee 
(
   id                   INTEGER              not null,
   surcharge            number(5,4)          not null,
   service_fee          number(3,1)          not null,
   constraint PK_SUR_SER_FEE primary key (id)
);

/*==============================================================*/
/* Table: tickets                                               */
/*==============================================================*/
create table tickets 
(
   ticket_id            INTEGER              not null,
   seat_number          INTEGER              not null,
   reserved             CHAR(1)              not null,
   sell_date            DATE,
   emp_id               INTEGER,
   reserve_date         DATE,
   passenger_id         INTEGER,
   trip_id              varchar2(20),
   half_fare            CHAR(1),
   real_price           number(4,1),
   constraint PK_TICKETS primary key (ticket_id)
);

/*==============================================================*/
/* Table: trips                                                 */
/*==============================================================*/
create table trips 
(
   trip_id              varchar2(20)         not null,
   vehicle_id           INTEGER              not null,
   emp_id               INTEGER              not null,
   route_id             CHAR(4),
   leave_time           DATE                 not null,
   return_time          DATE,
   dele_flag            char(1),
   constraint PK_TRIPS primary key (trip_id)
);

/*==============================================================*/
/* Table: vehicles                                              */
/*==============================================================*/
create table vehicles 
(
   vehicle_id           INTEGER              not null,
   vehicle_num          varchar2(15)         not null,
   buy_date             DATE                 not null,
   brand                varchar2(50)         not null,
   model                varchar2(50),
   max_carry            INTEGER              not null,
   displacement         number(4,1),
   engine_number        varchar2(50),
   dele_flag            char(1),
   constraint PK_VEHICLES primary key (vehicle_id)
);

alter table baggages
   add constraint FK_BAGGAGES_REFERENCE_STATIONS foreign key (station_id)
      references stations (station_id);

alter table baggages
   add constraint FK_BAGGAGES_REFERENCE_ROUTES foreign key (route_id)
      references routes (route_id);

alter table routes
   add constraint FK_ROUTES_END_STA_STATIONS foreign key (terminal_station)
      references stations (station_id);

alter table routes
   add constraint FK_ROUTES_STAT_STA_STATIONS foreign key (start_station)
      references stations (station_id);

alter table serials
   add constraint FK_SERIALS_REFERENCE_STATIONS foreign key (station_id)
      references stations (station_id);

alter table serials
   add constraint FK_SERIALS_REFERENCE_ROUTES foreign key (route_id)
      references routes (route_id);

alter table tickets
   add constraint FK_TICKETS_REFERENCE_EMPL foreign key (emp_id)
      references empl (emp_id);

alter table tickets
   add constraint FK_TICKETS_REFERENCE_PASSENGE foreign key (passenger_id)
      references passengers (passenger_id);

alter table tickets
   add constraint FK_TICKETS_REFERENCE_TRIPS foreign key (trip_id)
      references trips (trip_id);

alter table trips
   add constraint FK_TRIPS_REFERENCE_EMPL foreign key (emp_id)
      references empl (emp_id);

alter table trips
   add constraint FK_TRIPS_REFERENCE_VEHICLES foreign key (vehicle_id)
      references vehicles (vehicle_id);

alter table trips
   add constraint FK_TRIPS_REFERENCE_ROUTES foreign key (route_id)
      references routes (route_id);

