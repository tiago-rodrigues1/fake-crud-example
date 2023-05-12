package model;

public class Aluno {
	private int id;
	private String nome;
	private String turma;
	private int ira;
	private static int index = 0;
	
	public Aluno() {
	}
	
	
	public Aluno(String nome, String turma, int ira) {
		this.id = ++index;
		this.nome = nome;
		this.turma = turma;
		this.ira = ira;
	}


	public int getId() {
		return id;
	}
	
	public void setId(int id) {
		this.id = id;
	}
	
	public String getNome() {
		return nome;
	}
	
	public void setNome(String nome) {
		this.nome = nome;
	}
	
	public String getTurma() {
		return turma;
	}
	
	public void setTurma(String turma) {
		this.turma = turma;
	}
	
	public int getIra() {
		return ira;
	}
	
	public void setIra(int ira) {
		this.ira = ira;
	}
	
	
}
