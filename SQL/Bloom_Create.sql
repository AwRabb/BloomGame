create schema if not exists bloom;
use bloom;

drop table if exists flowers;
drop table if exists users;

/*
Creates the User Table. probably unnecessary for the time being, but will be important at some point
*/
create table users(
user_id bigint auto_increment primary key,
username varchar(15),
password varchar(15),
creation_date datetime,
update_date datetime
);


/*
Creates the Flower table. I don't believe we will end up storing flowers here, but its possible, so the framework is here now.
*/
create table flowers(
genome varchar(10),
user_id bigint,
creation_date datetime,
update_date datetime,
Constraint flower_user_id foreign key (user_id) references users (user_id) on delete cascade);


/*
Creates basic triggers for the Database

*/

#delimiter changed to allow use of triggers. changed after triggers activated
delimiter //

create trigger date_input_users before insert on users
	for each row 
    Begin
		set new.creation_date = Now();
		set new.update_date = Now();
    end;//
    
create trigger date_input_flowers before insert on flowers
	for each row 
    Begin
		set new.creation_date = Now();
		set new.update_date = Now();
    end;//
    
delimiter ;
#returning delimiter to normal

create trigger date_update_users before update on users
	for each row set new.update_date = Now();
        
create trigger date_update_flowers before update on flowers
	for each row set new.update_date = Now();

/*
End Triggers
*/

	#test inserts
    /*
	insert into users (username, password) values ("Test", "Test");
	insert into flowers (genome, user_id) values ("abcdefg", null);
    update users set password = "test23";
	update flowers set genome = "hijklmnop";
        
	select * from users, flowers;
    */
    
    #EOF