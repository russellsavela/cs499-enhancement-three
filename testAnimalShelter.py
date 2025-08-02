import unittest
from AnimalShelter import AnimalShelter
import pandas as pd

class TestAnimalShelter(unittest.TestCase):


    db = AnimalShelter()

    df = pd.DataFrame.from_records(db.read({}))

    def test_01_create(self):
        testData = {
                    'animal_id' : 'A999999',
                    'age_upon_outcome_in_weeks' : '999',
                    'animal_type' : 'Tiger',
                    'breed' : 'Bengal',
                    'color' : 'White',
                    'date_of_birth' : '2025-01-01',
                    'datetime' : '2025-01-01 14:19:00',
                    'location_lat' : '30.645761489711',
                    'location_long' : '-97.5957374356492',
                    'monthyear' : '2025-01-01T12:07:00',
                    'name' : 'Pickle',
                    'outcome_subtype' : 'Partner',
                    'outcome_type' : 'Adoption',
                    'rec_num' : '9999',
                    'sex_upon_outcome' : 'Unknown'
        }
    
        # we should see a 200 HTTP status response for success
        self.assertTrue(self.db.create(testData))
        

    def test_02_update(self):
         
         updateKey = {
                    'animal_id' : 'A999999'
                    }
         updateExpression = "SET animal_type = :n"

         updateData = { 
                      ':n': 'Cat'
                    }

         self.assertTrue(self.db.update(updateKey, updateExpression, updateData))

    def test_03_read(self):
            
         # ensure the dataframe contains data
         #  this is easier than looking at a response code
         self.assertFalse(self.df.empty)

    def test_04_delete(self):
         testKey = {
                    'animal_id' : 'A999999'
                    }

         self.assertTrue(self.db.delete(testKey))

if __name__ == '__main__':
    unittest.main()
