#!/usr/bin/python3
""" State Module for HBNB project """
from models.base_model import BaseModel
from models.base import Base
from sqlalchemy import Column, String, ForeignKey
from sqlalchemy.orm import relationship, backref
from os import getenv


class State(BaseModel, Base):
    """ State class """
    __tablename__ = 'states'
    name = Column(String(128), nullable=False)
    cities = relationship("City", cascade="all, delete"
                          backref=backref("state", cascade="all"))

    if getenv('HBNB_TYPE_STORAGE') != 'db':
        @property
        def cities(self):
            """ Getter attribute that returns the list of City instances with
                state_id equals
                to the current State.id
            """
            city_list = []
            all_cities = models.storage.all('City')
            for city in all_cities.values():
                if city.state_id == self.id:
                    city_list.append(city)
            return city_list
