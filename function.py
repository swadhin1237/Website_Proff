from database.connect import conn
from psycopg2 import Error

def get_proffs_by_dept_and_research_area(dept_name, research_area):
    try:
        cursor = conn.cursor()
        query = f"""
        SELECT DISTINCT p.id,p.name,p.proff_website
        FROM proff p
        JOIN department d ON p.dept_name = d.dept_name
        JOIN proff_researcharea pra ON p.id = pra.proff_id
        JOIN researcharea ra ON pra.researcharea_id = ra.id
        WHERE d.dept_name = '{dept_name}' AND ra.researcharea_name = '{research_area}';
        """
        cursor.execute(query)
        professors = cursor.fetchall()
        cursor.close()
        if professors:
            allproffs = [(prof[1],prof[2]) for prof in professors]
            return allproffs
        else:
            return []
    except Error as e:
        print(f"Error executing query: {e}")
        
# get all researchareas

def get_all_researchareas():
    try:
        cursor = conn.cursor()
        query = """
        SELECT * FROM researcharea;
        """
        cursor.execute(query)
        researchareas = cursor.fetchall()
        cursor.close()
        if researchareas:
            allresearchareas = [(researcharea[1],researcharea[2]) for researcharea in researchareas]
            return allresearchareas
        else:
            return []
    except Error as e:
        print(f"Error executing query: {e}")
        
        
def get_proffs_by_research_area(research_area):
    try:
        cursor = conn.cursor()
        query = f"""
        SELECT DISTINCT p.id,p.name,p.proff_website
        FROM proff p
        JOIN proff_researcharea pra ON p.id = pra.proff_id
        JOIN researcharea ra ON pra.researcharea_id = ra.id
        WHERE ra.researcharea_name = '{research_area}';
        """
        cursor.execute(query)
        professors = cursor.fetchall()
        cursor.close()
        if professors:
            allproffs = [(prof[1],prof[2]) for prof in professors]
            return allproffs
        else:
            return []
    except Error as e:
        print(f"Error executing query: {e}")