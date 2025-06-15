/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package poly.cafe.entity;

import java.util.*;
import lombok.*;

/**
 *
 * @author Asus
 */
@NoArgsConstructor 
@AllArgsConstructor 
@Builder 
@Data 
public class Bill { 
    private Long id;
    private String username; 
    private int cardId; 
    @Builder.Default 
    private Date checkin = new Date(); 
    private Date checkout;
    public int status; 
} 
