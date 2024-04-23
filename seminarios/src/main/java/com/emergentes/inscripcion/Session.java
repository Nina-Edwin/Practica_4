package com.emergentes.inscripcion;

public class Session {

    private int id;
    private String fecha;
    private String nombres;
    private String apellidos;
    private String turno;
    private String seminarios1;
    private String seminarios2;
    private String seminarios3;
    private String seminarios4;

    public Session() {
        this.id = id;
        this.fecha = "";
        this.nombres = "";
        this.apellidos = "";
        this.turno = "";
        this.seminarios1 = "";
        this.seminarios2 = "";
        this.seminarios3 = "";
        this.seminarios4 = "";
    }

    public int getId() {
        return id;
    }

    public String getFecha() {
        return fecha;
    }

    public String getNombres() {
        return nombres;
    }

    public String getApellidos() {
        return apellidos;
    }

    public String getTurno() {
        return turno;
    }

    public String getSeminarios1() {
        return seminarios1;
    }

    public String getSeminarios2() {
        return seminarios2;
    }

    public String getSeminarios3() {
        return seminarios3;
    }

    public String getSeminarios4() {
        return seminarios4;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public void setNombres(String nombres) {
        this.nombres = nombres;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public void setTurno(String turno) {
        this.turno = turno;
    }

    public void setSeminarios1(String seminarios1) {
        this.seminarios1 = seminarios1;
    }

    public void setSeminarios2(String seminarios2) {
        this.seminarios2 = seminarios2;
    }

    public void setSeminarios3(String seminarios3) {
        this.seminarios3 = seminarios3;
    }

    public void setSeminarios4(String seminarios4) {
        this.seminarios4 = seminarios4;
    }

}
