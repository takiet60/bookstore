package com.project.store.model;

import javax.servlet.http.HttpSession;
import java.io.Serializable;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

public class WishListModel implements Serializable {
    Map<Long, ItemModel> wishlist = new HashMap<>();

    public WishListModel(){

    }

    public static WishListModel getCart(HttpSession session) {
        return session.getAttribute("wishlist") == null ? new WishListModel(): (WishListModel) session.getAttribute("wishlist");
    }

    public void put(ItemModel item){
        if(item == null) return;
        if(wishlist.containsKey(item.getProductModel().getId())){
            wishlist.get(item.getProductModel().getId()).add();
            return;
        }
        item.setQuantity(1);
        wishlist.put(item.getProductModel().getId(), item);
    }

    public void remove(long id){
        wishlist.remove(id);
    }

    public String printItem(){
        StringBuilder sb = new StringBuilder();
        for(Map.Entry<Long, ItemModel> map: wishlist.entrySet()){
            sb.append(map.getValue().getProductModel().getName() + " x" +  map.getValue().getQuantity() + "\n");
        }
        sb.append("\nTổng tiền: " + total() + " ₫");
        return sb.toString();
    }

    public long total(){
        long sum = 0;
        for(ItemModel item : wishlist.values()){
            sum += item.getProductModel().getValue() * item.getQuantity();
        }
        return sum;
    }

    public int  totalQuantity(){
        int result = 0;
        for(ItemModel item : wishlist.values()){
            result += item.getQuantity();
        }
        return result;
    }

    public Collection<ItemModel> getCart(){
        return wishlist.values();
    }

    public void commit(HttpSession session){
        session.setAttribute("wishlist", this);
    }
}
