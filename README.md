# sqlUpdateSystem

This is not an application.  This is simply a PROOF-OF-CONCEPT that demonstrates
how to version your sql changes for your software releases.

The files in the project serve as an example of how to do this kind of versioning.  

This is a commonly used approach to versioning your database releases but is certainly
not the only way it can be done.

## Usage

The 'createScripts' folder is an example of sql object creation scripts as they
might exist in your source control server

These files are your "master" files.  In other words, they represent the only place
you would go to make changes to an existing sql object.  That folder and sub-folders
would contain ALL create scripts of ALL of the sql objects that currently exist in
your database.  

The 'updates' folder has a folder for each release of your software.  In this 
proof-of-concept, there is a release folder for your 1.0 release and your 1.1 release.

The template folder is the one you copy to make a new release folder.  If you figure 
out improvements you can make the template folder is where you make them.

These release folders, after they are created, are placed into source control.  
You can then use them in your build process to generate the master SQL script that
needs to be run against your staging/production databases.

## Workflow

Here is how it would work.  

*  To create a release - copy the template folder and rename it to match the name of 
   your release.  (In the proof-of-concept we would create the next release as folder
   1.2).  
*  To make SCHEMA changes to your database for a release, put sql script code into the 
   DDL.sql file for that release folder.  (DDL stands for Data Definition Language.)
*  To do INSERT/UPDATE/DELETE statements for a release put sql script code into the 
   DML.sql file.  (DML stands for Data Modification Language)
*  To make changes to your Sql Objects (procedures, functions, views, etc) your add 
   TYPE statement to the RUN_CreateUpdateScript.bat file.  You add these lines only
   when you add or update one of your master create scripts in the 'createScripts' 
   folder.  That way, only the changed objects will be in the UpdateScript.sql
*  To generate the UpdateScript.sql file, simply run the RUN_CreateUpdateScript for 
   the release you are interested in.  This is the command script that your build 
   process would run.  Your build process would then execute the script on the target
   database server for each environment.

## Why do it this way?

This approach assures that your sql object scripts only live in one place and are only 
changed in one place.  

Of course, when you change or add a sql object, you have to remember to update the 
RUN_CreateUpdateScript.bat file (and possibly the DDL and DML scripts.)  However, this
process is "set it and forget it".  You make the change when you know you need to (when 
adding or editing a file) and then you can move on.  This way there is no need to 
remember later to add the changes to some kind of master release script.  

To test the UpdateScript, simply generate (by running the RUN_CreateUpdateScript.bat file).
You will see that this will create the script in the folder.  Then test the script on a 
test database.

This approach also create a database release history for you.  Since these release changes
are checked into source you can add commit comments for documenting your database release
changes.  And, of course, the release folders themselves are a kind of history as well.

This approach avoids (or at least front-loads) collisions in sql object script changes.
If more than one developer needs to change something, your source control system will
warn you about conflicts which can then be collaboratively modified.  And tracking the 
changes to scripts is MUCH easier to manage in TYPE statement of a batch file as opposed
to giant hand-made udpate scripts.  It is easier to avoid modifying objects twice since
eyeballing to see if your object change is already in the release just requires you to 
scan a short batch file.  

## Credits

Seth Brian Spearman
SpearSoft LLC 
www.spearsofttech.com

## License

Public Domain