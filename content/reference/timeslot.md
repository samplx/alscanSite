+++
title = "Time slots"
description = "Time slots"
weight = 4
+++
# Time-slots

As requests are processed from the access log, they are placed into time-slots based upon the reported time of the request. The number of time-slots maintained by **alscan** varies with the reporting requirements for a specific scan. Each time-slot has four-times associated with it. There are the hard-limits: the *start* and *stop* time of the time-slot. There are also two soft-limits: the *first* and *last* times. The *start* time is the earliest time when a request can be included in a particular time-slot. The *stop* time is the latest time when a request can be included. The *first* time is the time of the actual first request inside the time-slot. The *last* time is the latest actual request time in the time-slot.

The duration of the time-slot is defined by a command-line option. There are also two special time-slots. These are used to capture all requests which fall *outside* of any detailed reporting period. There is a *before* time-slot which occurs prior to the detailed reporting period, and an *after* time-slot which follows the detailed reporting period. Depending upon the scan options, these two special time-slots may be empty. The reporting of these time-slots is also optional.

The temporal "width" of the time-slot can be:

    * one minute (default for downtime report.)
    * one hour (the default for other reports.)
    * one day.
    * arbitrary number of seconds.
    * infinite (only one time-slot).
