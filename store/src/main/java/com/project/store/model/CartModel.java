package com.project.store.model;

import com.mysql.cj.Session;

import javax.servlet.http.HttpSession;
import java.io.Serializable;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

public class CartModel implements Serializable {
    Map<Long, ItemModel> cart = new HashMap<>();

    public CartModel(){

    }

    public static CartModel getCart(HttpSession session) {
        return session.getAttribute("cart") == null ? new CartModel(): (CartModel) session.getAttribute("cart");
    }

    public void put(ItemModel item){
        if(item == null) return;
        if(cart.containsKey(item.getProductModel().getId())){
            cart.get(item.getProductModel().getId()).add();
            return;
        }
        item.setQuantity(1);
        cart.put(item.getProductModel().getId(), item);
    }

    public void remove(long id){
        cart.remove(id);
    }

    public long total(){
        long sum = 0;
        for(ItemModel item : cart.values()){
            sum += item.getProductModel().getValue() * item.getQuantity();
        }
        return sum;
    }

    public Collection<ItemModel> getCart(){
        return cart.values();
    }

    public void commit(HttpSession session){
        session.setAttribute("cart", this);
    }

}
