package authz.terraform
test_no_instance {
    no_instance with input as {
        "resource_changes": [{
            "type": "aws_autoscaling_group",
            "change": {
                "actions": [
                    "delete"
                ]
            }
        }]
    }
}

test_not_no_instance {
    not no_instance with input as {
        "resource_changes": [{
            "type": "aws_instance",
            "change": {
                "actions": [
                    "delete"
                ]
            }
        }]
    }
}