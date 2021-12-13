"""
    
"""
from typing import List, Optional
import logging

from fastapi import FastAPI
from fastapi.logger import logger as fastapi_logger

from . import schemas

app = FastAPI()

logger = logging.getLogger("uvicorn")
fastapi_logger.handlers = logger.handlers
fastapi_logger.setLevel(logger.level)
logger.error("API Started")


@app.get("/movies/", response_model=List[schemas.Movie])
def read_movies(skip: Optional[int] = 0, limit: Optional[int] = 100):
    # return them as json
    return [
        {"id":1, "title":"No Time To Die", "year":2021},
        {"id":2, "title":"Nobody", "year":2021},
        ]

@app.get("/movies/by_id/{movie_id}", response_model=schemas.MovieDetail)
def read_movie(movie_id: int):
    return { "id":1, "title":"No Time To Die", "year":2021 }

