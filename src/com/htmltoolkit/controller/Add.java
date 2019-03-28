package com.htmltoolkit.controller;
import java.util.Scanner;
public class Add
{
    int x,y,z;
    public void addnumbers()
    {
        z=x+y;
        System.out.println(z);
    }
    public static void main(String args[])
    {
        Add a=new Add();
        Scanner sc=new Scanner(System.in);
        a.x=sc.nextInt();
        a.y=sc.nextInt();
        a.addnumbers();
        
    }
}