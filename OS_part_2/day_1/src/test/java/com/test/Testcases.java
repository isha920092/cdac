package com.test;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.Select;

public class Testcases {

	public static void main(String[] args) {
		WebDriver driver=new ChromeDriver();
		Actions act = new Actions(driver);
		
		//visit site
		driver.get("https://artoftesting.com/samplesiteforselenium");
		
		//click on site with url
		driver.findElement(By.xpath("//a[@href='http://www.artoftesting.com/sampleSiteForSelenium.html']")).click();
		
		//enter data in text box with given id
		driver.findElement(By.name("firstName")).sendKeys("cats");
		
		//click the button
		driver.findElement(By.id("idOfButton")).click();
		
		//get button by id and perform double click action on it 
		WebElement double_click = driver.findElement(By.id("dblClkBtn"));
		act.doubleClick(double_click).perform();
		//click okay on alert
		driver.switchTo().alert().accept();
		
		//select radio button
		driver.findElement(By.id("male")).click();
		
		//select check box
		driver.findElement(By.className("Automation")).click();
		driver.findElement(By.className("Performance")).click();
		
		//select value from drop down
		WebElement ele = driver.findElement(By.id("testingDropdown"));
		Select list = new Select(ele);
		list.selectByValue("Manual");
		
		//click on button
		driver.findElement(By.xpath("//div[@id='AlertBox']/button")).click();
		//click cancel on confirmation popup
		driver.switchTo().alert().accept();
		
		//click on button
		driver.findElement(By.xpath("//div[@id='ConfirmBox']/button")).click();
		driver.switchTo().alert().dismiss();
	}
	
}
