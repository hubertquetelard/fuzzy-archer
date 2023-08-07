# WEEWX CONFIGURATION FILE
#
# Copyright (c) 2009-2015 Tom Keffer <tkeffer@gmail.com>
# See the file LICENSE.txt for your rights.

##############################################################################

# This section is for general configuration information.

# Set to 1 for extra debug info, otherwise comment it out or set to zero
debug = 0

# Root directory of the weewx data file hierarchy for this station
WEEWX_ROOT = /srv/weewx/root

# Whether to log successful operations
log_success = True

# Whether to log unsuccessful operations
log_failure = True

# How long to wait before timing out a socket (FTP, HTTP) connection
socket_timeout = 20

# Do not modify this. It is used when installing and updating weewx.
version = 4.10.2-1

##############################################################################

#   This section is for information about the station.

[Station]
    
    # Description of the station location
    location = {{location|default('Town / Locality')}}
    
    # Latitude and longitude in decimal degrees
    latitude = {{ latitude|default('-21.000') }}
    longitude = {{ longitude|default('55.000') }}
    
    # Altitude of the station, with unit it is in. This is downloaded from
    # from the station if the hardware supports it.
    altitude = {{ altitude|default('0') }}, meter    # Choose 'foot' or 'meter' for unit
    
    # Set to type of station hardware. There must be a corresponding stanza
    # in this file with a 'driver' parameter indicating the driver to be used.
    station_type = {{ driver|default('Vantage') }}
    
    # The start of the rain year (1=January; 10=October, etc.). This is
    # downloaded from the station if the hardware supports it.
    rain_year_start = 1
    
    # Start of week (0=Monday, 6=Sunday)
    week_start = 0
    
    # If you have a website, you may specify an URL
    station_url = http://obs.meteor-oi.re/{{station_id|default('XXX000')}}/

##############################################################################

[Vantage]
    # This section is for the Davis Vantage series of weather stations.
    
    # Connection type: serial or ethernet 
    #  serial (the classic VantagePro)
    #  ethernet (the WeatherLinkIP)
    type = serial
    
    # If the connection type is serial, a port must be specified:
    #   Debian, Ubuntu, Redhat, Fedora, and SuSE:
    #     /dev/ttyUSB0 is a common USB port name
    #     /dev/ttyS0   is a common serial port name
    #   BSD:
    #     /dev/cuaU0   is a common serial port name
    port = /dev/vp2
    
    # If the connection type is ethernet, an IP Address/hostname is required:
    host = 1.2.3.4
    
    ######################################################
    # The rest of this section rarely needs any attention. 
    # You can safely leave it "as is."
    ######################################################
    
    # Serial baud rate (usually 19200)
    baudrate = 19200
    
    # TCP port (when using the WeatherLinkIP)
    tcp_port = 22222
    
    # TCP send delay (when using the WeatherLinkIP):
    tcp_send_delay = 0.5
    
    # The type of LOOP packet to request: 1 = LOOP1; 2 = LOOP2; 3 = both
    loop_request = 1
    
    # The id of your ISS station (usually 1). If you use a wind meter connected
    # to a anemometer transmitter kit, use its id
    iss_id = 1
    
    # How long to wait for a response from the station before giving up (in
    # seconds; must be greater than 2)
    timeout = 4
    
    # How long to wait before trying again (in seconds)
    wait_before_retry = 1.2
    
    # How many times to try before giving up:
    max_tries = 4
    
    # Vantage model Type: 1 = Vantage Pro; 2 = Vantage Pro2
    model_type = 2
    
    # The driver to use:
    driver = weewx.drivers.vantage

##############################################################################

#   This section specifies what reports, using which skins, to generate.

[StdReport]
    
    # Where the skins reside, relative to WEEWX_ROOT
    SKIN_ROOT = skins
    
    # Where the generated reports should go, relative to WEEWX_ROOT
    HTML_ROOT = public_html
    
    # The database binding indicates which data should be used in reports.
    data_binding = wx_binding
    
    ####
    
    # Each of the following subsections defines a report that will be run.
    # See the customizing guide to change the units, plot types and line
    # colors, modify the fonts, display additional sensor data, and other
    # customizations. Many of those changes can be made here by overriding
    # parameters, or by modifying templates within the skin itself.
    
    # Each of the following subsections defines a report that will be run.
    # added by QUETELARD
    [[HTMLPages]]
        HTML_ROOT = public_html
        skin = Json
        enable = true    
    
    # Various options for customizing your reports.
    
    [[Defaults]]
        
        # The following section determines the selection and formatting of units.
        [[[Units]]]
            
            # The following section sets what unit to use for each unit group.
            # NB: The unit is always in the singular. I.e., 'mile_per_hour',
            # NOT 'miles_per_hour'
            [[[[Groups]]]]
                
                group_altitude = meter    # Options are 'foot' or 'meter'
                group_degree_day = degree_C_day    # Options are 'degree_F_day' or 'degree_C_day'
                group_pressure = hPa    # Options are 'inHg', 'mmHg', 'mbar', or 'hPa'
                group_rain = mm    # Options are 'inch', 'cm', or 'mm'
                group_rainrate = mm_per_hour    # Options are 'inch_per_hour', 'cm_per_hour', or 'mm_per_hour'
                group_speed = km_per_hour    # Options are 'mile_per_hour', 'km_per_hour', 'knot', or 'meter_per_second'
                group_speed2 = km_per_hour2    # Options are 'mile_per_hour2', 'km_per_hour2', 'knot2', or 'meter_per_second2'
                group_temperature = degree_C    # Options are 'degree_F' or 'degree_C'
            
            
            # The following section sets the formatting for each type of unit.
            [[[[StringFormats]]]]
                
                centibar = %.0f
                cm = %.2f
                cm_per_hour = %.2f
                degree_C = %.1f
                degree_F = %.1f
                degree_compass = %.0f
                foot = %.0f
                hPa = %.1f
                hour = %.1f
                inHg = %.3f
                inch = %.2f
                inch_per_hour = %.2f
                km_per_hour = %.0f
                km_per_hour2 = %.1f
                knot = %.0f
                knot2 = %.1f
                mbar = %.1f
                meter = %.0f
                meter_per_second = %.1f
                meter_per_second2 = %.1f
                mile_per_hour = %.0f
                mile_per_hour2 = %.1f
                mm = %.1f
                mmHg = %.1f
                mm_per_hour = %.1f
                percent = %.0f
                second = %.0f
                uv_index = %.1f
                volt = %.1f
                watt_per_meter_squared = %.0f
                NONE = "   N/A"
            
            # The following section sets the label to be used for each type of unit
            [[[[Labels]]]]
                
                day = " jour", " jours"
                hour = " heure", " heures"
                minute = " minute", " minutes"
                second = " seconde", " secondes"
                NONE = ""
            
            # The following section sets the format to be used for each time scale.
            # The values below will work in every locale, but they may not look
            # particularly attractive. See the Customization Guide for alternatives.
            [[[[TimeFormats]]]]
                
                hour = %Hh%M
                day = %Hh%M
                week = ce %A à %Hh%M
                month = %d/%m/%Y à %Hh%M
                year = %d/%m/%Y à %Hh%M
                rainyear = %d/%m/%Y à %Hh%M
                current = %d/%m/%Y à %Hh%M
                ephem_day = %Hh%M
                ephem_year = %d/%m/%Y à %Hh%M
            
            [[[[Ordinates]]]]
                
                # Ordinal directions. The last one should be for no wind direction
                directions = N, NNE, NE, ENE, E, ESE, SE, SSE, S, SSO, SO, OSO, O, ONO, NO, NNO, Nul
            
            # The following section sets the base temperatures used for the
            #  calculation of heating and cooling degree-days.
            [[[[DegreeDays]]]]
                
                # Base temperature for heating days, with unit:
                heating_base = 18.3, degree_C
                # Base temperature for cooling days, with unit:
                cooling_base = 18.3, degree_C
                # Base temperature for growing days, with unit:
                growing_base = 50.0, degree_F
            
            # A trend takes a difference across a time period. The following
            # section sets the time period, and how big an error is allowed to
            # still be counted as the start or end of a period.
            [[[[Trend]]]]
                
                time_delta = 10800    # 3 hours
                time_grace = 300    # 5 minutes
        
        # The labels to be used for each observation type
        [[[Labels]]]
            
            # Set to hemisphere abbreviations suitable for your location:
            hemispheres = N, S, E, O
            
            # Formats to be used for latitude whole degrees, longitude whole
            # degrees, and minutes:
            latlon_formats = %02d, %03d, %05.2f
            
            # Generic labels, keyed by an observation type.
            [[[[Generic]]]]
                barometer = Barometer
                dewpoint = Dew Point
                ET = ET
                heatindex = Heat Index
                inHumidity = Inside Humidity
                inTemp = Inside Temperature
                outHumidity = Humidity
                outTemp = Outside Temperature
                radiation = Radiation
                rain = Rain
                rainRate = Rain Rate
                UV = UV Index
                windDir = Wind Direction
                windGust = Gust Speed
                windGustDir = Gust Direction
                windSpeed = Wind Speed
                windchill = Wind Chill
                windgustvec = Gust Vector
                windvec = Wind Vector
                extraTemp1 = Temperature1
                extraTemp2 = Temperature2
                extraTemp3 = Temperature3
                
                # Sensor status indicators
                
                rxCheckPercent = Signal Quality
                txBatteryStatus = Transmitter Battery
                windBatteryStatus = Wind Battery
                rainBatteryStatus = Rain Battery
                outTempBatteryStatus = Outside Temperature Battery
                inTempBatteryStatus = Inside Temperature Battery
                consBatteryVoltage = Console Battery
                heatingVoltage = Heating Battery
                supplyVoltage = Supply Voltage
                referenceVoltage = Reference Voltage
        
        [[[Almanac]]]
            
            # The labels to be used for the phases of the moon:
            moon_phases = New, Waxing crescent, First quarter, Waxing gibbous, Full, Waning gibbous, Last quarter, Waning crescent

##############################################################################

#   This service acts as a filter, converting the unit system coming from
#   the hardware to a unit system in the database.

[StdConvert]
    
    # The target_unit affects only the unit system in the database. Once
    # chosen it cannot be changed without converting the entire database.
    # Modification of target_unit after starting weewx will result in
    # corrupt data - the database will contain a mix of US and METRIC data.
    #
    # The value of target_unit does not affect the unit system for
    # reporting - reports can display US, Metric, or any combination of units.
    #
    # In most cases, target_unit should be left as the default: US
    #
    # In particular, those migrating from a standard wview installation
    # should use US since that is what the wview database contains.
    
    # DO NOT MODIFY THIS VALUE UNLESS YOU KNOW WHAT YOU ARE DOING!
    target_unit = METRIC    # Options are 'US', 'METRICWX', or 'METRIC'

##############################################################################

#   This section is for configuring the archive service.

[StdArchive]
    
    # If the station hardware supports data logging then the archive interval
    # will be downloaded from the station. Otherwise, specify it (in seconds).
    archive_interval = 300
    
    # If possible, new archive records are downloaded from the station
    # hardware. If the hardware does not support this, then new archive
    # records will be generated in software.
    # Set the following to "software" to force software record generation.
    record_generation = hardware
    
    # Whether to include LOOP data in hi/low statistics
    loop_hilo = True
    
    # The data binding used to save archive records
    data_binding = wx_binding

##############################################################################

#   This section binds a data store to a database.

[DataBindings]
    
    [[wx_binding]]
        # The database must match one of the sections in [Databases].
        # This is likely to be the only option you would want to change.
        database = archive_mysql
        # The name of the table within the database
        table_name = archive
        # The manager handles aggregation of data for historical summaries
        manager = weewx.wxmanager.WXDaySummaryManager
        # The schema defines the structure of the database.
        # It is *only* used when the database is created.
        schema = schemas.wview.schema

##############################################################################

#   This section defines various databases.

[Databases]
    
    # A SQLite database is simply a single file
    [[archive_sqlite]]
        database_type = SQLite
        database_name = weewx_{{station_id|default('XXX000')}}.sdb
    
    # MySQL
    [[archive_mysql]]
        database_type = MySQL
        database_name = weewx_{{station_id|default('XXX000')}}

##############################################################################

#   This section defines defaults for the different types of databases.

[DatabaseTypes]
    
    # Defaults for SQLite databases
    [[SQLite]]
        driver = weedb.sqlite
        # Directory in which the database files are located
        SQLITE_ROOT = {{weewx_root}}/archive
    
    # Defaults for MySQL databases
    [[MySQL]]
        driver = weedb.mysql
        # The host where the database is located
        host = localhost
        # The user name for logging in to the host
        user = {{ database['user']|default('weewx') }}
        # The password for the user name. Put in quotes to guard against parsing errors.
        password = {{ database['password']|default('J_Gs_irG_W') }}

##############################################################################

#   This section configures the internal weewx engine.

[Engine]
    # The following section specifies which services should be run and in what order.
    [[Services]]
        report_services = weewx.engine.StdPrint, weewx.engine.StdReport

