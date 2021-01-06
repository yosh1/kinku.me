## create model

ex. 
```
$ rails generate scaffold student name:string faculty_id:integer
```

## add migration

```
rails generate migration AddGradeToStudents grade:integer
```

or edit

```
db/migrate/xxx
```

## rollback

```
rails db:rollback
```

## reset

```
rails db:migrate:reset
```

## model's class

```
ls app/models
```

## add data to db

### create file db/seeds.rb

```
@user = User.new
@user.name = 'Soushi Yamamoto'
@user.username = 'soushiy'
@user.location = 'Tokyo, Japan'
@user.about = 'Hello, I am Soushi.'
@user.save
```


```
rake db:seed
```
