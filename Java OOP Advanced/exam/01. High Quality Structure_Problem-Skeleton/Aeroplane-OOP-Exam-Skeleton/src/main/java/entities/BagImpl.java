package entities;

import entities.interfaces.Bag;
import entities.interfaces.Passenger;
import entities.items.interfaces.Item;

import java.util.List;

public class BagImpl implements Bag {

   private Passenger owner;

   private  List<Item> items;

    public BagImpl(Passenger owner, List<Item> items) {
        this.owner = owner;
        this.items = items;
    }

    @Override
    public Passenger getOwner() {
        return this.owner;
    }

    @Override
    public List<Item> getItems() {
        return this.items;
    }
}
