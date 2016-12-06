/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lojaonline.modelo;

import java.io.Serializable;

/**
 *
 * @author Home
 */
public class Produto  implements Serializable {
    
    private int idProduto;
    private int codigoProduto;
    private String nomeProduto;
    private double precoProduto;

    public Produto() {
    }

    public Produto(int idProduto, int codigoProduto, String nomeProduto, double precoProduto) {
        this.idProduto = idProduto;
        this.codigoProduto = codigoProduto;
        this.nomeProduto = nomeProduto;
        this.precoProduto = precoProduto;
    }

    public int getIdProduto() {
        return idProduto;
    }

    @Override
    public int hashCode() {
        int hash = 3;
        hash = 23 * hash + this.idProduto;
        return hash;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final Produto other = (Produto) obj;
        if (this.idProduto != other.idProduto) {
            return false;
        }
        return true;
    }

    
    
    
    
    @Override
    public String toString() {
        return "Produto{" + "idProduto=" + idProduto + '}';
    }

    public void setIdProduto(int idProduto) {
        this.idProduto = idProduto;
    }

    public int getCodigoProduto() {
        return codigoProduto;
    }

    public void setCodigoProduto(int codigoProduto) {
        this.codigoProduto = codigoProduto;
    }

    public String getNomeProduto() {
        return nomeProduto;
    }

    public void setNomeProduto(String nomeProduto) {
        this.nomeProduto = nomeProduto;
    }

    public double getPrecoProduto() {
        return precoProduto;
    }

    public void setPrecoProduto(double precoProduto) {
        this.precoProduto = precoProduto;
    }

    public void add(Produto produto) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    
}
