package me.jy.factorymethod;

/**
 * @author jy
 * @date 2018/01/09
 */
public interface Factory {

    Product create(String type);
}