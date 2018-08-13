# Reports

There are five report types. In general they are used for different purposes.

1. Summary Report.
    This is the most commonly used report. It provides a summary of the *interesting* activity found in the logs.
2. Terse Report.
    This report provides the same information as the Summary Report, but it is designed to be easy to parse by other tools. This report is most often used as the source of data for further processing.
3. Downtime Report.
    This report is used to find when the server may have been non-reponsive. Often times, third-party tools will report that a sever is down. This report shows the number of requests processed during each *time-slot*, which can be used to verify or refute the third-party report.
4. Deny Report.
    This provides a list of IP address to block in a format compatible with an Apache .htaccess file.
5. Request Report.
    This is report simply copies the requested log file entries. It allows the alscan tool to function much as grep, but with the advantage that the selection criteria are tailored to the access log data. Anyone who has ever tried to grep out a date range of log data will see the advantages.
