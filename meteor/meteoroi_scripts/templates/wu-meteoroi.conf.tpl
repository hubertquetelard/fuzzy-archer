# EXAMPLE CONFIGURATION FILE FOR IMPORTING FROM THE WEATHER UNDERGROUND
#
# Copyright (c) 2009-2019 Tom Keffer <tkeffer@gmail.com> and Gary Roderick.
# See the file LICENSE.txt for your rights.

##############################################################################

# Specify our source. Available options are:
#   CSV - import obs from a single CSV format file
#   WU - import obs from a Weather Underground PWS history
#   Cumulus - import obs from a one or more Cumulus monthly log files
#   WD - import obs from a one or more WD monthly log files
# Format is:
#   source = (CSV | WU | Cumulus)
source = WU

##############################################################################

[WU]
    # Parameters used when importing from a WU PWS

    # WU PWS Station ID to be used for import.
    station_id = {{ Wunderground['station']|default('WUXXXX') }}

    # WU API key to be used for import.
    api_key = 38660702419644c1a607024196b4c190

    #
    # When importing WU data the following WeeWX database fields will be
    # populated directly by the imported data (provided the corresponding data
    # exists on WU):
    #   barometer
    #   dateTime
    #   dewpoint
    #   heatindex
    #   outHumidity
    #   outTemp
    #   radiation
    #   rain
    #   rainRate
    #   windchill
    #   windDir
    #   windGust
    #   windSpeed
    #   UV
    #
    # The following WeeWX database fields will be populated from other
    # settings/config files:
    #   interval
    #   usUnits
    #
    # The following WeeWX database fields will be populated with values derived
    # from the imported data provided the --calc-missing command line option is
    # used during import:
    #   altimeter
    #   ET
    #   pressure
    #
    # The following WeeWX fields will be populated with derived values from the
    # imported data provided the --calc-missing command line option is used
    # during import. These fields will only be saved to the WeeWX database if
    # the WeeWX schema has been modified to accept them. Note that the pyephem
    # module is required in order to calculate maxSolarRad - refer WeeWX Users
    # Guide.
    #   appTemp
    #   cloudbase
    #   humidex
    #   maxSolarRad
    #   windrun

    # How will the interval field be determined for the imported records.
    # Available options are:
    #   derive - Derive the interval field from the timestamp of successive
    #            records. This setting is best used when there are no missing
    #            records from period being imported. Missing records will
    #            cause the interval field to be incorrectly calculated for some
    #            records.
    #   conf   - Use the interval setting from weewx.conf. This setting is
    #            best used if the records to be imported have been produced by
    #            WeeWX or some other means with the same archive interval as
    #            set in weewx.conf on this machine.
    #   x      - Use a fixed interval of 'x' minutes for every record where 'x'
    #            is a number. This setting is best used if the records to be
    #            imported are equally spaced in time but there are some missing
    #            records.
    # Due to WU frequently missing uploaded records, use of 'derive' may give
    # incorrect or inconsistent interval values. Better results may be
    # achieved by using the 'conf' setting (if WeeWX has been doing the WU
    # uploading and the WeeWX archive_interval matches the WU observation
    # spacing in time) or setting the interval to a fixed value (eg 5). The
    # most appropriate setting will depend on the completeness and (time)
    # accuracy of the WU data being imported.
    # Format is:
    #   interval = (derive | conf | x)
    interval = conf

    # Should the [StdQC] max/min limits in weewx.conf be applied to the
    # imported data. This may be useful if the source has extreme values that
    # are clearly incorrect for some observations. This is particulalrly useful
    # for WU imports where WU often records clearly erroneous values against
    # obs that are not reported. Available options are:
    #   True  - weewx.conf [StdQC] max/min limits are applied.
    #   False - weewx.conf [StdQC] max/min limits are not applied.
    # Format is:
    #   qc = (True | False)
    qc = True

    # Should any missing derived observations be calculated from the imported
    # data if possible. Available options are:
    #   True  - Any missing derived observations are calculated.
    #   False - Any missing derived observations are not calculated.
    # Format is:
    #   calc_missing = (True | False)
    calc_missing = True

    # Specify how imported data fields that contain invalid data (eg a numeric
    # field containing non-numeric data) are handled. Available options are:
    #   True  - The invalid data is ignored, the WeeWX target field is set to
    #           None and the import continues.
    #   False - The import is halted.
    # Format is:
    #   ignore_invalid_data = (True | False)
    # Default is True.
    ignore_invalid_data = True

    # Imported records are written to archive in transactions of tranche
    # records at a time. Increase for faster throughput, decrease to reduce
    # memory requirements. Format is:
    #   tranche = x
    # where x is an integer
    tranche = 250

    # Lower and upper bounds for imported wind direction. It is possible,
    # particularly for a calculated direction, to have a value (eg -45) outside
    # of the WeeWX limits (0 to 360 inclusive). Format is:
    #
    # wind_direction = lower,upper
    #
    # where :
    #   lower is the lower limit of acceptable wind direction in degrees
    #   (may be negative)
    #   upper is the upper limit of acceptable wind direction in degrees
    #
    # WU has at times been known to store large values (eg -9999) for wind
    # direction, often no wind direction was uploaded to WU. The wind_direction
    # parameter sets a lower and upper bound for valid wind direction values.
    # Values inside these bounds are normalised to the range 0 to 360. Values
    # outside of the bounds will be stored as None. Default is 0,360
    wind_direction = 0,360
