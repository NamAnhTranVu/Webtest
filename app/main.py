from typing import Union
import os

from fastapi import FastAPI
import subprocess



app = FastAPI()


@app.get("/")
async def read_root():
    proc = subprocess.Popen(["ifconfig"], stdout=subprocess.PIPE, shell=True)
    (out, err) = proc.communicate()
    return {out}

