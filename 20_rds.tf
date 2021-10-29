
resource "aws_db_subnet_group" "dhk_db_group" {
  name = "db-group"
  subnet_ids = [aws_subnet.dhk_pria.id,aws_subnet.dhk_pric.id] 
  tags ={
      Name = "dhk-dbgroup"
  }
}


resource "aws_db_instance" "dhk_db" {
  allocated_storage =  10
  engine = "mysql"
  engine_version = "5.7"
  instance_class = "db.t2.micro" 
  name = "mydb"
  identifier = "my-db"
  username = "root"
  password = "It12345!"
  parameter_group_name = "default.mysql5.7"
  availability_zone = "ap-northeast-2a"
  skip_final_snapshot = true
  db_subnet_group_name = aws_db_subnet_group.dhk_db_group.id
  tags = {
      name = "mydb"
  }
  
  
}