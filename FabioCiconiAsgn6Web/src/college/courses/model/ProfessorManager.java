package college.courses.model;

import java.util.List;

import college.courses.exceptions.ProfessorNotFoundException;
import fabio.ciconi.asgn6.entities.Professor;

public class ProfessorManager extends CourseManager {

	public ProfessorManager() {
		super();
	}

	public Professor getProfessor(int profId) {
		return null;
	}

	// may or may not be used in Assignment 6
	public Professor addProfessor(Professor professor) {
		return null;
	}

	// may or may not be used in Assignment 6
	public Professor deleteProfessor(int profId) throws ProfessorNotFoundException{
			return null;
	}

	public List<Professor> getProfessorList() {
		return null;
	}

}
