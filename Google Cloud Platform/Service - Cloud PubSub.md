```Bash
#
gcloud config set project <project_id>

# Create a topic
gcloud pubsub topics create <topic_name>

# Delete a topic
gcloud pubsub topics delete <topic_name>

# Create a subscription for a topic
gcloud pubsub suscriptions create <subscription_name> --topic=<topic_name> [--enable-message-ordering] [--ack-deadline] [--message-filter]
```

```Bash
# Publish a message to a topic
gcloud pubsub topics publish <topic_name> --message="<message>"

# Pull messages from a topic
gcloud pubsub subscriptions pull <subscription_name> [--auto-ack] [--limit]

#
gcloud pubsub subscriptions ack <subscription_name> --ack-ids=<ack_id>
```

```Bash
# List all the active topics
gcloud pubsub topics list

# List all the subscriptions of a topics
gcloud pubsub topics list-subscriptions <topic_name>
```
