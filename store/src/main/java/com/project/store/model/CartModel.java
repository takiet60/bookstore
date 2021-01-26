package com.project.store.model;

import javax.servlet.http.HttpSession;
import java.io.Serializable;
import java.util.*;

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

    public List<ItemModel> getItem(){
        List<ItemModel> list = new ArrayList<>();
        for(Map.Entry<Long, ItemModel> map: cart.entrySet()){
            list.add(map.getValue());
        }
        return list;
    }

    public String printItem(){
        StringBuilder sb = new StringBuilder();
        for(Map.Entry<Long, ItemModel> map: cart.entrySet()){
            sb.append(map.getValue().getProductModel().getName() + " x" +  map.getValue().getQuantity() + "\n");
        }
        sb.append("\nTổng tiền: " + total() + " ₫");
        return sb.toString();
    }

    public long total(){
        long sum = 0;
        for(ItemModel item : cart.values()){
            sum += item.getProductModel().getValue() * item.getQuantity();
        }
        return sum;
    }

    public int  totalQuantity(){
        int result = 0;
        for(ItemModel item : cart.values()){
            result += item.getQuantity();
        }
        return result;
    }

    public Collection<ItemModel> getCart(){
        return cart.values();
    }

    public void commit(HttpSession session){
        session.setAttribute("cart", this);
    }

    public void remove(HttpSession session){
        session.removeAttribute("cart");
    }

}
