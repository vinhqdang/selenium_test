package org.inria.score;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.concurrent.TimeUnit;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.interactions.Actions;

public class AutomaticSelenium {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		//content.sendKeys("abc");
		/*
		for (int number_of_user = 2; number_of_user <= 50; number_of_user++) {
			for (int typing_speed = 1; typing_speed <= 3; typing_speed++) {
				for (int exp_id = 0; exp_id < 20; exp_id++) {
					WebDriver driver = new FirefoxDriver ();
					driver.get ("https://docs.google.com/document/d/1UmEc42z6bAD95fvdU5zTdv4ODcgu3LDpC9lDNJgjzGg/edit?usp=sharing");
					WebElement content = driver.findElement(By.className("kix-page-content-wrapper"));
					while (true) {
						if (content.getText().indexOf('x') >= 0) {
							System.out.println (System.currentTimeMillis());
							break;
						}
					}
					driver.quit();
				}
			}
		}
		*/
		WebDriver driver = new FirefoxDriver ();
		driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);
		driver.get ("https://docs.google.com/document/d/1UmEc42z6bAD95fvdU5zTdv4ODcgu3LDpC9lDNJgjzGg/edit?usp=sharing");
		WebElement content = driver.findElement(By.className("kix-page-content-wrapper"));
		
		/*
		System.out.println ("Loaded");
		Actions builder = new Actions (driver);
		builder.sendKeys("abc");
		content.sendKeys("123");
		*/
		
		while (true) {
			if (content.getText().indexOf('x') >= 0) {
				try(PrintWriter out = new PrintWriter(new BufferedWriter(new FileWriter("res.txt", true)))) {
				    out.println(System.currentTimeMillis());
				}catch (IOException e) {
				    //exception handling left as an exercise for the reader
					e.printStackTrace();
				}
				//System.out.println (System.currentTimeMillis());
				break;
			}
		}
		driver.quit();
		/*
		WebDriver driver = new ChromeDriver();
		driver.get ("https://docs.google.com/document/d/1UmEc42z6bAD95fvdU5zTdv4ODcgu3LDpC9lDNJgjzGg/edit?usp=sharing");
		WebElement content = driver.findElement(By.className("kix-page-content-wrapper"));
		content.sendKeys("abc");
		System.out.println (content.getText());
		*/
	}

}
