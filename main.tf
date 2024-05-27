# module.Security_Groups.aws_security_group.zing_Access:
resource "aws_security_group" "zing_Access" {
    description = "Access for zing systems and users"
    egress      = [
        {
            cidr_blocks      = [
                "0.0.0.0/0",
            ]
            description      = ""
            from_port        = 0
            ipv6_cidr_blocks = []
            prefix_list_ids  = []
            protocol         = "-1"
            security_groups  = []
            self             = false
            to_port          = 0
        },
    ]
    ingress     = [
        {
            cidr_blocks      = [
                "10.10.0.0/16",
            ]
            description      = "UST workspace"
            from_port        = 3306
            ipv6_cidr_blocks = []
            prefix_list_ids  = []
            protocol         = "tcp"
            security_groups  = []
            self             = false
            to_port          = 3306
        },
        {
            cidr_blocks      = [
                "10.10.0.0/16",
            ]
            description      = "UST workspace"
            from_port        = 443
            ipv6_cidr_blocks = []
            prefix_list_ids  = []
            protocol         = "tcp"
            security_groups  = []
            self             = false
            to_port          = 443
        },
        {
            cidr_blocks      = [
                "199.127.191.2/31",
                "199.127.191.4/30",
                "199.127.191.8/29",
                "199.127.191.16/29",
                "199.127.191.24/30",
                "199.127.191.28/31",
                "199.127.191.30/32",
                "199.127.188.162/31",
                "199.127.188.164/30",
                "199.127.188.168/29",
                "199.127.188.176/28",
            ]
            description      = "zing Chicago and Lexington Data Center"
            from_port        = 3306
            ipv6_cidr_blocks = []
            prefix_list_ids  = []
            protocol         = "tcp"
            security_groups  = []
            self             = false
            to_port          = 3306
        },
        {
            cidr_blocks      = [
                "199.127.191.2/31",
                "199.127.191.4/30",
                "199.127.191.8/29",
                "199.127.191.16/29",
                "199.127.191.24/30",
                "199.127.191.28/31",
                "199.127.191.30/32",
                "199.127.188.162/31",
                "199.127.188.164/30",
                "199.127.188.168/29",
                "199.127.188.176/28",
            ]
            description      = "zing Chicago and Lexington Data Center"
            from_port        = 443
            ipv6_cidr_blocks = []
            prefix_list_ids  = []
            protocol         = "tcp"
            security_groups  = []
            self             = false
            to_port          = 443
        },
    ]
    name        = "zing-Access"
    tags        = {}
    tags_all    = {}
    vpc_id      = "vpc-09ae2335d86bac5c5"

    timeouts {}
}