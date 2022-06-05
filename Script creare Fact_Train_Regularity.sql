CREATE TABLE TrainStation.Fact_Train_Regularity (
    Date_Key integer not null,
    Departure_Station_Key integer not null,
    Arrival_Station_Key integer not null,
    Average_Journey_Time decimal(30,20),
    No_Of_Planned_Trips integer ,
    No_Of_Canceled_Trips integer ,
    No_Of_Late_Departing_Trains integer ,
    Avg_Delay_At_Departure decimal(30,20),
    Avg_Delay_Of_All_Departing decimal(30,20),
    No_Of_Late_Arriving_Trains integer ,
    Avg_Delay_On_Arrival decimal(30,20),
    Avg_Delay_Of_All_Arriving decimal(30,20),
    No_Of_Late_Trains_Gt_15_Min integer ,
    Avg_Late_Train_Delay_Gt_15_Min decimal(30,20),
    No_Of_Late_Trains_Gt_30_Min integer ,
    No_Of_Late_Trains_Gt_60_Min integer ,
    Delay_Due_To_External_Causes decimal(30,20),
    Delay_Due_To_Rail_Infrastr decimal(30,20),
    Delay_Due_To_Traffic_Mgmt decimal(30,20),
    Delay_Due_To_Rolling_Stock decimal(30,20),
    Delay_Due_To_Mgmt_In_Station decimal(30,20),
    Delay_Due_To_Passenger decimal(30,20),
    Primary Key(Date_key, Departure_Station_Key, Arrival_Station_Key ),
    FOREIGN KEY(Date_Key) REFERENCES Dim_Date(Date_Key),
    FOREIGN KEY(Departure_Station_Key) REFERENCES Dim_Station(Station_key),
    FOREIGN KEY(Arrival_Station_Key) REFERENCES Dim_Station(Station_key)
    );
   

   
    