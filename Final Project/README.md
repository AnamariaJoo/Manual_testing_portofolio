
# Final project for ITF Manual Testing Course
The scope of the final project for ITF Manual Testing Course is to use all gained knowledge throught the course and apply them in practice, using a live application.

Application under test: https://opensource-demo.orangehrmlive.com/

API Documentation: https://orangehrm.github.io/orangehrm-api-doc/

The final project will be split into 2 sections: Testing section and SQL section.

Tools used:
JIRA, Zephyr Squad, Postman, MySQL Workbench.

# Functional specifications
The following Stories have been created in JIRA and they describe the functional specifications of the PIM module, for which the final project was performed.


![stories.pdf](https://github.com/AnamariaJoo/Manual_testing_portofolio/files/9167246/stories.pdf)


# 1 Testing section
## 1.1 Test Planning
The Test Plan is designed to describe all details of testing for the PIM module from the OrangeHRM application.

The plan identifies the items to be tested, the features to be tested, the types of testing to be performed, the personnel responsible for testing, the resources and schedule required to complete testing, and the risks associated with the plan.

### 1.1.1 Roles assigned to the project and persons allocated

- Project manager - Georgiana Malan
- Product owner - Sebastian Duma
- Software developer - Maria Sabau
- QA Engineer - Anamaria Joo

### 1.1.2 Entry criteria defined

- The necessary roles for the project are assigned and the persons are allocated
- The functional specifications are defined
- The test environment is stable and the test data is in the database
- Initial project risks were detected and mitigated 

### 1.1.3 Exit criteria defined

- All planned tests have been executed
- The level of requirement coverage has been met
- The number of unresolved bugs is insignificant or they have low priority
- All resolved bugs have been re-tested and approved
- Deadline was reached
- Sanity testing must be performed on the PIM Module

### 1.1.4 Test scope
**Tests in scope:** All the feature of PIM module which were defined in software requirement specifications need to be tested: functional testing, GUI testing and API testing.  
**Tests not in scope:** integration testing of the PIM module with other modules, stress testing, load testing, volum testing, compatibility testing, and security testing.

### 1.1.5 Risks detected
**Project risks:** lack of experience and resources of the QA team, unclear software requirement specifications, short deadline of Zephyr Squad trial, unavailability of the test environment.  
**Product risks:** the software may contains major defects that haven't been detected.

### 1.1.6 Evaluating entry criteria
The entry criterias defined in the Test Planning phase have been achieved and the test process can continue.

### 1.2 Test Monitoring and Control
Various periodic reports have been generated to reflect the current status of the testing process, so that action can be taken in case of major issues.
The following status report was generated on 1st of July 2022:

![monitoring   control](https://user-images.githubusercontent.com/109798595/181042574-fee63079-f874-47d8-881a-a7faa1d16756.jpg)


### 1.3 Test Analysis
The testing process will be executed based on the above requirements for the PIM module. The following test conditions were found:

- Verify that one or all optional fields can be added/removed
- Verify that the checkbox is working correctly
- Enter data for all available fields and check that a custom field is added
- Enter data only for mandatory fields and check that a custom field is added
- Verify all validation constraints for the fields
- Verify that a custom field can be deleted
- Verify that user can cancel action when edit a custom field
- Verify that the Sample CSV file can be downloaded and ensure that a hand icon is displayed over the Download link
- Check all validation contraints to import data from a CSV file
- Verify that multiple entries of reporting methods can be deleted at the same time
- Verify that a termination reason can added/deleted or edited
- Ensure that an asterisk is displayed next to the mandatory fields
- Verify that user can Copy and Paste text into the textboxes
- Verify that the radio buttons and drop-down lists are working correctly
- Verify that the dates are in the correct format and ensure that an expiration date earlier than an issue date cannot be selected

### 1.4 Test Design
Functional test cases were created in Zephyr Squad. Based on the analysis of the specifications, the test design techniques used for generating test cases are:
equivalence partitioning, boundary value analysis and use case testing.

**Test cases:** 

![test cases](https://user-images.githubusercontent.com/109798595/181040122-2f7255ce-5c37-4020-afda-870c46c2a7d6.jpg)



The test cases with steps can be viewed here: test_cases.pdf

### 1.5 Test Implementation
The following elements are needed to be ready before the test execution phase begins:

enter here what needs to be ready for the test execution to begin
### 1.6 Test Execution
Test cases are executed on the created test Cycle summary: cycle_summary_execution.pdf
Bugs have been created based on the failed tests. The complete bug reports can be found here: created_bugs.pdf
enter here bug titles
### 1.7 Test Completion
Exit criteria was evaluated and passed
The traceability matrix was generated and can be found here: Traceability_matrix.csv
Test execution chart was generated, the final report shows.... -> describe the final report
-> enter here test execution report/chart

# 2 SQL section
