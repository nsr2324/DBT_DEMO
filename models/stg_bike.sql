with bike as
(	
    select
        RIDE_ID,
        replace(STARTED_AT,'"','') as STARTED_AT,
        replace(ENDED_AT,'"','') as ENDED_AT,
        START_STATION_NAME,
        START_STATIO_ID,
        END_STATION_NAME,
        END_STATION_ID,
        START_LAT,
        START_LNG,
        END_LAT,
        END_LNG,
        MEMBER_CASUAL
        from {{ source('demo', 'bike') }}
        
    where
        RIDE_ID <> 'bikeid' 
        and
        started_at <> '"starttime"'
        and
        started_at <> 'starttime'
)

select *
    from bike