+++
title = "Options"
description = "Options"
weight = 6
+++

# Options

## General Options

    * `--help`
    * `--version`

## Category Options

    * `--category`=*name*
    * `--groups`
    * `--sources`
    * `--user-agents` or `--agents`
    * `--uris` or `--urls`
    * `--codes`
    * `--referers`
    * `--domains`
    * `--methods`
    * `--requests`
    * `--protocols`
    * `--users`

## Time Options

    * `--start=`*time*
    * `--stop=`*time*
    * `--reboot`
    * `--time-slot=`*duration*
    * `--minutes`
    * `--hours`
    * `--days`
    * `--one` or `-1`

## Report Format Options

These options control the format of the report.

    * `--deny`
    * `--downtime`
    * `--request`
    * `--terse`
    * `--top=`*n*
    * `--sort=``title`|`item`|`count`|`bandwidth`|`peak`|`peak-bandwidth`
    * `--fs=`*sep* or `-F`*sep*

## Search Options

These options determine how access log records are matched. By default all records are matched. It is possible to include an arbitrary number of search options. If the options are for the same field in the access log, matching any one of the option criteria is sufficient. If the options are for different fields, they must all match. For example `--method=GET` `--code=200` would match records which used the **GET** method and returned **200** (OK). Another `--method=POST` option can be added, if the method could be either a **GET** or a **POST**. The `--method`, `--group`, and `--source` options are case-insensitive. All other options are case-sensitive.

    * `--agent=`*string* or `--ua=`*string* or `--user-agent=`*string*
    * `--match-agent=`*re* or `--match-ua=`*re* or `--match-user-agent=`*re*
    * `--code=`*string*
    * `--ip=`=*IP*[`/`*mask*]
    * `--method=`*name*
    * `--group=`*name*
    * `--source=`=*name*
    * `--referer=`=*name*
    * `--match-referer=`=*re*
    * `--url=`*string* or `--uri=`*string*
    * `--match-url=`*re* or `--match-uri=`*re*

## Access Log Options

These options control which access log files are search. It is also possible to include additional access log file names as arguments after the options. These are treated the same as additional --file options.

Only options which are supported by the active control panel software are enabled. This means if no control panel software is recognized, the only options supported are --file and --directory.

    * `--panel`
    * `--domlogs`
    * `--alllogs`
    * `--main`
    * `--account=`*name*
    * `--archives`
    * `--file=`*filename*
    * `--domain=`*name*
    * `--directory=`*name* or `--dir=`*name*

## Feedback Options

In order to improve the results of the tool, a feedback mechanism is included. This will report User-agent strings to the site [alscan.info](http://alscan.info/). By default, *Unknown* User-agents are the only ones reported. This can be changed using the `--feedback-type`=`none`|`unknowns`|`all` option. There is a shortcut, `-N` which will disable feedback reporting (same as `--feedback-type=none`.) The URL used to report the information defaults to `http://alscan.info/agents/feedback`. This can be changed using the `--feedback-url`=*URL* option.
