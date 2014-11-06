package org.inria.score;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.concurrent.TimeUnit;

import org.openqa.selenium.By;
import org.openqa.selenium.NoSuchElementException;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.interactions.Actions;

public class AutomaticSelenium {

	public static void main(String[] args) {
		for (int number_of_user = 50; number_of_user <= 50; number_of_user+=10) {
			for (int typing_speed = 1; typing_speed <= 1; typing_speed++) {
				for (float exp_id = 0.25f; exp_id < 1; exp_id += 1) {
					System.out.println ("Running: " + number_of_user + " " + typing_speed + " " + exp_id);
					WebDriver driver = new FirefoxDriver ();
					driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);
					driver.get ("https://docs.google.com/document/d/1UmEc42z6bAD95fvdU5zTdv4ODcgu3LDpC9lDNJgjzGg/edit?usp=sharing");
					WebElement content;
					try {
						content = driver.findElement(By.className("kix-page-content-wrapper"));
					} catch (NoSuchElementException e) {
						continue;
					}
					
					int delay = 1000 / number_of_user / typing_speed / 4;
					ProcessBuilder pb = new ProcessBuilder ("./auto_type.sh", Integer.toString(number_of_user), Integer.toString(delay));
					Process p = null;
					
					try {
						p = pb.start();
					} catch (IOException e) {
						e.printStackTrace();
						continue;
					}										
					
					int MAX_CHAR = 100;
					boolean[] getChar = new boolean[MAX_CHAR];
					for (int i = 0; i < MAX_CHAR; i++) getChar[i] = false;
					int counter = 0;
					while (true) {
						//80 cases is enough
						if (counter >= 80) {							
							break;
						}
						String str = content.getText();
						for (int i = 0; i < MAX_CHAR; i++) {
							String subStr = "";
							subStr += Integer.toString((i+1)/100);
							subStr += Integer.toString(((i+1)%100)/10);
							subStr += Integer.toString((i+1)%10);
							if (getChar[i] == false && str.indexOf(subStr) >= 0) {
								try(PrintWriter out = new PrintWriter(new BufferedWriter(new FileWriter("result.txt", true)))) {
									out.print(subStr);
									out.print(" ");
								    out.println(System.currentTimeMillis());
								    getChar[i] = true;
								    counter++;								    
								}catch (IOException e) {
									e.printStackTrace();
								}
								break;
							}							
						}						
					}			
					
					System.out.println ("Found characters");
					
					try {
						p.waitFor();
					} catch (InterruptedException e) {
						e.printStackTrace();
					}
					
					try(PrintWriter out = new PrintWriter(new BufferedWriter(new FileWriter("result.txt", true)))) {
						out.println ("---");							    
					} catch (IOException e) {
						e.printStackTrace();
					}
					driver.quit();
				}
			}
		}
				
		/*
		WebDriver driver = new ChromeDriver();
		driver.get ("https://docs.google.com/document/d/1UmEc42z6bAD95fvdU5zTdv4ODcgu3LDpC9lDNJgjzGg/edit?usp=sharing");
		WebElement content = driver.findElement(By.className("kix-page-content-wrapper"));
		content.sendKeys("abc");
		System.out.println (content.getText());
		*/
	}

}
