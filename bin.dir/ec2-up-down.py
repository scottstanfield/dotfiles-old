#!/usr/local/bin/python
#
# Auto-start and stop EC2 instances
#
import boto.ec2
import datetime, sys
from time import gmtime, strftime, sleep

# The instances that we want to auto-start/stop
instances = [
    # You can have tuples in this format:
    # [instance-id, name/description, startHour, stopHour, ipAddress]
    ["i-1d274d29", "Utopia", "07", "23", "54.214.42.114"]
]

# --------------------------------------------

# Get current hour
hour = datetime.datetime.today().hour

# If its the weekend, then quit
# weekday = datetime.datetime.today().weekday()
# if (weekday == 5) or (weekday == 6):
#     sys.exit()

# Connect to EC2
conn = boto.ec2.connect_to_region('us-west-2')

# For each instance
for (instance, description, start, stop, ip) in instances:
    # If it's now between the start and stopping hours, open for business
    if (hour >= int(start) and hour < int(stop)):
        print "Starting %s..." % (description)
        # Start the instance
        l = [instance]
        conn.start_instances(instance_ids=l)

        # Associate the Elastic IP with instance
        if ip:
            print "Waiting 10 seconds..."
            # Sleep for a few seconds to ensure starting
            sleep(10)
            print "Associating %s" % (ip)
            conn.associate_address(instance, ip)
    else:
        # Stop the instance
        print "Stopping %s" % (description)
        conn.stop_instances(instance_ids=[instance])
