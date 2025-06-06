package com.eye.eyecouturestore.cart.model;

import com.eye.eyecouturestore.common.model.BaseEntity;
import com.eye.eyecouturestore.product.model.CProduct;
import com.fasterxml.jackson.annotation.JsonIgnore;
import jakarta.persistence.*;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.experimental.SuperBuilder;

import java.math.BigDecimal;

@Setter
@Getter
@SuperBuilder
@Entity
@NoArgsConstructor
@Table(name = "c_cart_item")
public class CCartItem extends BaseEntity {
    @JsonIgnore
    @ManyToOne(cascade = {CascadeType.MERGE,CascadeType.PERSIST})
    @JoinColumn(name="cart_id", nullable=false)
    private CCart cart;

    @Column(name="quantity")
    private int quantity;

    @Column(name = "color_id")
    private String color;

    @Column(name = "size_id")
    private String size;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "product_id")
    private CProduct product;

    public BigDecimal originalPrice() {
        return product.getPrice().multiply(BigDecimal.valueOf(quantity));
    }
    public BigDecimal finalPrice() {
        return product.priceDiscounted().multiply(BigDecimal.valueOf(quantity));
    }

    public void increaseQuantity() {
        this.quantity ++;
    }
    public void decreaseQuantity() {
        this.quantity --;
    }
}
