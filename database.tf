# Creating RDS Instance
resource "aws_db_subnet_group" "subnetgroup" {
name = "main"
subnet_ids = ["${aws_subnet.subnet-1.id}","${aws_subnet.subnet-2.id}"]
tags = {
Name = "My DB subnet group"
}
}
resource "aws_db_instance" "mysqlinstance" {
identifier = "mysqlinstance"
allocated_storage = 10
db_subnet_group_name = "main"
vpc_security_group_ids = [aws_security_group.master_sg.id]
engine = "mysql"
engine_version = "5.7"
instance_class = "db.t2.micro"
multi_az = true
backup_retention_period= "7"
db_name = "mydb"
username = "admin"
password = "admin1234"
skip_final_snapshot = true
#
depends_on = [aws_instance.chandudemo-1]
}
# Create the replica RDS instance in the destination region
resource "aws_db_instance" "replica" {
identifier = "my-replica-db-instance"
replicate_source_db = "${aws_db_instance.mysqlinstance.id}"
instance_class = "db.t2.micro"
allocated_storage = 11
vpc_security_group_ids = [aws_security_group.master_sg.id]
publicly_accessible = false
multi_az = true
depends_on = [aws_instance.chandudemo-2]
skip_final_snapshot = true
}
