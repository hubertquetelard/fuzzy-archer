############################################################################################
############################################################################################
############################################################################################
#                                                                                          #
#                                                                                          #
#                          JSON SKIN CONFIGURATION FILE                                    #
#                                                                                          #
#                                                                                          #
############################################################################################
#                                                                                          #
#                    Copyright (c) 2010 Tom Keffer <tkeffer@gmail.com>                     #
#                           Modified by QUETELARD (2021-07-16)                             #
#                                                                                          #
#                      See the file LICENSE.txt for your full rights.                      #
#                                                                                          #
############################################################################################
#
#    $Revision: 737 $
#    $Author: tkeffer $
#    $Date: 2012-11-04 09:05:51 -0800 (Sun, 04 Nov 2012) $
#
############################################################################################

[Extras]

    #
    # Put any extra tags here that you want to be available in the templates
    #
    
    # added by QUETELARD
    station_id  = {{ station_id|default('XXX000') }}
    
[CheetahGenerator]

    # This section is used by the generator CheetahGenerator, and specifies
    # which files are to be generated from which template.

    encoding = html_entities    # Possible encodings are 'html_entities', 'utf8', or 'strict_ascii'

    max_delta = 100 # The largest difference in time is acceptable to search record

    [[ToDate]]
    #
    # Reports that show statistics "to date", such as day-to-date,
    # week-to-date, month-to-date, etc.
    #
    # added by QUETELARD
	[[[JSON]]]
	    encoding = utf8
            template = json/arch.{{ station_id|default('XXX000') }}.YYYY-MM-DDTHH-mm.json.tmpl

############################################################################################

#
# The list of generators that are to be run:
#
[Generators]
        generator_list = user.translategenerator.CheetahGeneratorTranslated

