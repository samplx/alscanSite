+++
title = "Report types"
description = "Report Types"
weight = 3
+++

# Report Types

There are five basic types of reports generated. They include:

    * A verbose summary report of the activity during each time-slot.
    * A terse version of the summary report.
    * A down-time activity report.
    * A deny report.
    * A copy of the access log records which match the search criteria (grep-like.)

## Summary Report Categories

The verbose and terse summary reports concern a specific category. These include:

    * User-agent groups.
    * User-agent sources.
    * User-agent string.
    * URI
    * Request address.
    * Domain.
    * HTTP method.
    * Result-code.
    * Referer (sic).
    * Request line.
    * Authenticated user.
    * Protocol.

## User-agent groups and sources

For the purposes of classification, the user-agent strings are split into groups, and sources. These can be used to simplify the reporting when using the raw user-agent string is too complex.

### User-agent groups

The group is a general classification based upon how the user-agent is normally used. The groups include:

    * Bot – this group includes robots, spiders, crawlers and other automated access user-agents.
    * Browser – A general browser, when more specific information about its environment is not available.
    * Desktop – A browser used in desktop (and laptop) keyboard based operating environments.
    * Mobile – A browser used in a non-keyboard operating environment.
    * Tablet – A mobile browser known to be operating on a tablet.
    * Phone – A mobile browser known to be operating on a phone.
    * Game – A browser known to be operating on a game console or environment.
    * Download – A tool (like wget), or library used to download web content.
    * Proxy – A proxy interface between the actual requester and the site.
    * Checker – A link or content checker.
    * None – When no user-agent information is available. Either because it is not logged, or was not provided.
    * Unclassified – When the user-agent is known, but has not yet been classified in a more specific group.
    * Unwanted – this group includes site scrapers, spam email collectors and similar known user-agents.
    * Unknown – Everything else.

### User-agent sources

The user-agent source is a generalization of the user-agent string based upon the owner or provider of the software. For browsers, this is the general browser-type: Chrome, Firefox, IE, Opera, et al. For bots, this is the controller of the service using the bot: Google, Yahoo, Baidu, et al.
