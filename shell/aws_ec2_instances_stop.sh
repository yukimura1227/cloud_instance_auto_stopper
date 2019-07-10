#!/bin/bash

echo "aws ec2 stop-instances --instance-ids ${AWS_TARGET_INSTANCE_IDS}"
aws ec2 stop-instances --instance-ids ${AWS_TARGET_INSTANCE_IDS}
