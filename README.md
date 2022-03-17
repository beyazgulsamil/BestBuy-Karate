# BestBuy Web App Automation Project

This project includes bestbuy web application automation

## Tool Stack

* Karate UI
* Cucumber
* maven

## Karate UI

Karate UI is written over cucumber.
Thanks to the steps it has prepared in karate, it will lighten your scenario load quite a bit.
It allows you to prepare stable and useful scenarios without the need to use BDD.
```
<dependency>
            <groupId>com.intuit.karate</groupId>
            <artifactId>karate-apache</artifactId>
            <version>0.9.6.RC3</version>
            <scope>test</scope>
        </dependency>
        
        <dependency>
            <groupId>com.intuit.karate</groupId>
            <artifactId>karate-junit5</artifactId>
            <version>0.9.5</version>
            <scope>test</scope>
        </dependency>
```

## Project Structure
```
└── test
└── java
├── examples
│   ├── bestbuy_case.feature
│   └── test.feature
├── karate-config.js
└── logback-test.xml
```






