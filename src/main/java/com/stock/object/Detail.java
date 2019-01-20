package com.stock.object;


import javax.persistence.*;

@Entity
@Table(name = "DETAILS")
public class Detail {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID")
    private long id;

    @Column(name = "NAME")
    private String name;

    @Column(name = "NECESSITY")
    private boolean necessity;

    @Column(name = "COUNT")
    private int count;

    protected Detail(){
    }
    public Detail(String name, boolean necessity, int count) {
        this.name = name;
        this.necessity = necessity;
        this.count = count;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public boolean getNecessity() {
        return necessity;
    }

    public void setNecessity(boolean necessity) {
        this.necessity = necessity;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    @Override
    public String toString() {
        return "Detail{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", necessity=" + necessity +
                ", count=" + count +
                '}';
    }
}
