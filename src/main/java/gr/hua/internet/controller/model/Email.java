package gr.hua.internet.controller.model;

public class Email {
	private int id;
	private String email;
	private String name;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	@Override
    public String toString(){
        return "{ID="+id+",Name="+name+",Email="+email+"}";
    }
}
