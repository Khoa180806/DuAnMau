/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package poly.cafe.ui.manager;

import poly.cafe.entity.Drink;

/**
 *
 * @author Asus
 */
public interface DrinkController extends CrudController<Drink>{
    void fillCategories();
    void chooseFile();
}
