# Using Celery with Flask

Forked from https://github.com/miguelgrinberg/flask-celery-example 

Related blog: [Using Celery with Flask](http://blog.miguelgrinberg.com/post/using-celery-with-flask).


# How to use

On a terminal: 

```
docker-compose up
```

On another terminal: 
```
curl -X POST http://localhost:5555/longtask

# task id returned

curl -X GET http://localhost:5555/status/<task_id>
```

Experiments: 

- attempt to create (almost) concurrently N tasks, N > C, where C is the Celery "concurrency" 
  specified in docker-compose.yml. Check the status of the queued tasks. 
- exec into the worker container, and check the celery processes. Verify they are equal to the 
  specified concurrency
