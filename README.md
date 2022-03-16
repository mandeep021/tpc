# TPC

## Laravel setup
```
- Dependency setup
    1. composer install
- Database setup
    1. name: tpc
    ## run migration for table
    2. php artisan migrate
    ## run seeder for dummy data
    3. php artisan db:seed
- passport setup
    1. php artisan passport:install
- .env file changes
    ## copy .env.example to .env
    1. change `APP_URL`
    2. change `VUE_URL`
    3. change `database settings`

```

## VUE setup
```
npm install
```

### Compiles and hot-reloads for development
```
npm run watch
```

### Login details for testing
```
email id: mandeep.aghera@gmail.com
password: password
```