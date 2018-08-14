+++
title = "Selection criteria"
description = "How specific log entries are selected."
weight = 5
+++

Much of the power in **alscan** comes from its ability to select specific requests to be included in the report. There are two general sets of selection criteria. Time-based selection, and request based selection.

# Time-based selection

There is a set of time-based selection. This divides any access log into three time periods. The *before* period the detailed scan period, the detailed scan period, and the *after* scan period. The first time which included in the detailed scan period is defined by the `--start` option. The last time which is included in the detailed scan period is defined by the `--stop` option.

If the `--start` option is defined, and the `--stop` option is not, then the scan will include all requests after the `--start` time in the detailed reporting period. (No *after* scan period.)

If the `--stop` option is defined, and the `--start` option is not, then the scan will include all requests before the `--stop` time in the detailed reporting period. (No *before* scan period.)

If neither the `--start` nor the `--stop` option is defined, then all requests in the access log are included in the detailed reporting period. (Neither a *before* nor an *after* scan period.)

The `--outside` option is used to enable the reporting of the *before* and *after* time slots (if they exist.)

## Time options

Both the `--start` and `--stop` options define a specific second in time.

General format:

* option`=reboot` – time of the last reboot is used (if available).
* option`=@`*ddddddddd*
* option`=`hh[`:`mm[`:`ss]][+ZZ[zz]]
* option`=`hh[mm[ss]][`Z`]
* option`=`[yyyy-]mm-dd[:hh[:mm[:ss]]][+ZZ[zz]
* option`=`MMM-dd[-yyyy][:hh[:mm[:ss]]][+ZZ[zz]]
* option`=`dd-MMM[-yyyy][:hh[:mm[:ss]]][+ZZ[zz]]

By default a `--stop` time's optional minutes and seconds default to 59; hours default to 23; day, month and year defaults are based upon the current date. A `--start` time's optional minutes and seconds default to 0; hours default to 0; day, month and year defaults are based upon the latest time which has the start time less than the stop time. The default time-zone offset is the current local time, or the time-zone of either `--start` or `--stop` option if defined. For example, in the America/Chicago timezone, the following are all the same:

* `--start=2012-01-01:00:00:00 --stop=2012-01-01:23:59:59`
* `--start=@1325397600 --stop=@1325483999`
* `--start=0 --stop=2012-01-01`
* `--start=1-Jan-2012 --stop=1-Jan-2012:23`
* `--start='1-Jan-2012:06:00:00 +00' --stop=2012-01-02:05:59:59`

# Request based selection

Selection criteria that is not time based is described as *Request based* selection criteria. For example: what method was given as part of the request. Another criteria would be the partial URI in the request.

## Request options

* `--method=`*name*
* `--url=`*URI*
