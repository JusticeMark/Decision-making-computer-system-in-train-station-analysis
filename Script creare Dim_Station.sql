CREATE TABLE TrainStation.Dim_Station (
    Station_Key  integer Not null  auto_increment,
    Station_Code_Uic integer,
    Station_Name varchar(100),
    City_Name varchar(100),
    Department_Name varchar(100),
    X decimal(17,15),
    Y decimal(17,15),
    Primary Key(Station_Key)
    );
 
    INSERT INTO Dim_station VALUES (-1,99999999,'Default','Default','Default', null, null )
