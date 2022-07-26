
# Final project for ITF Manual Testing Course
The scope of the final project for ITF Manual Testing Course is to use all gained knowledge throught the course and apply them in practice, using a live application.

Application under test: https://opensource-demo.orangehrmlive.com/

API Documentation: https://orangehrm.github.io/orangehrm-api-doc/

The final project is split into 2 sections: Testing section and SQL section.

Tools used:
JIRA, Zephyr Squad, Postman, MySQL Workbench.

# Functional specifications
The following Stories have been created in JIRA and they describe the functional specifications of the PIM module, for which the final project was performed : 

[PIM_module_Stories.pdf](https://github.com/AnamariaJoo/Manual_testing_portofolio/blob/main/Final%20Project/PIM_module_Stories.pdf)

# 1 Testing section
## 1.1 Test Planning
The Test Plan is designed to describe all details of testing for the PIM module from the OrangeHRM application.

The plan identifies the items to be tested, the features to be tested, the types of testing to be performed, the personnel responsible for testing, the resources and schedule required to complete testing, and the risks associated with the plan.

### 1.1.1 Roles assigned to the project and persons allocated

- Project manager - Georgiana Popescu
- Product owner - Sebastian Dinescu
- Software developer - Maria Stan
- QA Engineer - Anamaria Joo

### 1.1.2 Entry criteria defined

- The necessary roles for the project are assigned and the persons are allocated
- The functional specifications are defined
- Initial project risks were detected and mitigated 

### 1.1.3 Exit criteria defined

- All planned tests have been executed
- The level of requirement coverage has been met
- The number of unresolved bugs is insignificant or they have low priority
- All resolved bugs have been re-tested and approved
- Deadline was reached

### 1.1.4 Test scope
**Tests in scope:** All the features of PIM module which were defined in software requirement specifications need to be tested: functional testing, compatibility testing, GUI testing and API testing.  
**Tests not in scope:** integration testing of the PIM module with other modules, stress testing, load testing, volum testing and security testing.

### 1.1.5 Risks detected
**Project risks:** lack of experience and resources of the QA team, unclear software requirement specifications, short deadline of Zephyr Squad trial, unavailability of the test environment.  
**Product risks:**  the software may contains major defects that haven't been detected because of the relative inexperience of the QA team and the short deadline.

### 1.1.6 Evaluating entry criteria
The entry criteria defined in the Test Planning phase have been achieved and the test process can continue.

### 1.2 Test Monitoring and Control
Various periodic reports have been generated to reflect the current status of the testing process, so that action can be taken in case of major issues.
The following status report was generated on 1st of July 2022:


![monitoring   control2](https://user-images.githubusercontent.com/109798595/181908697-f20948a9-d4f4-4554-9b2d-ebdd917f7dc5.jpg)


### 1.3 Test Analysis
The testing process will be executed based on the above requirements for the PIM module. The following test conditions were found:

- Verify that optional and custom fields can be added/deleted/edited
- Verify all validation constraints for the fields
- Verify that user can cancel action when edit a custom field
- Verify that the Sample CSV file can be downloaded and ensure that a hand icon is displayed over the Download link
- Check all validation contraints to import data from a CSV file
- Verify that multiple entries of reporting methods can be deleted at the same time
- Verify that a termination reason can added/deleted or edited
- Verify that the checkboxes, radio buttons and drop-down lists are working correctly
- Verify that the dates are in the correct format and ensure that an expiration date earlier than an issue date cannot be selected

### 1.4 Test Design
Functional test cases were created in Zephyr Squad. Based on the analysis of the specifications, the test design techniques used for generating test cases are:
equivalence partitioning, boundary value analysis and use case testing.

**Test cases:** 

![test cases1](https://user-images.githubusercontent.com/109798595/181908589-30493e01-6eee-4703-b78d-c117300cf7e5.jpg)

The test cases with steps can be viewed here: [PIM_module_test_cases.xlsx](https://github.com/AnamariaJoo/Manual_testing_portofolio/blob/main/Final%20Project/PIM_module_test_cases.xlsx)

For the PIM Module API, the following checklist was generated: [API_test_checklist.xlsx](https://github.com/AnamariaJoo/Manual_testing_portofolio/blob/main/Final%20Project/API_test_checklist.xlsx)

### 1.5 Test Implementation
The following elements are needed to be ready before the test execution phase begins:

- Testing environment is up and running: https://opensource-demo.orangehrmlive.com/
- Access to the testing environment is given: Username : Admin | Password : admin123
- Cycle summary was created
- Test cases were added to the cycle summary
- Postman collection with the PIM Module API methods was created
- Authorization token was created for accessing the API

### 1.6 Test Execution
- Test cases are executed on the created test Cycle summary: [PIM_Module_CycleSummary_Execution.xlsx](https://github.com/AnamariaJoo/Manual_testing_portofolio/blob/main/Final%20Project/PIM_Module_CycleSummary_Execution.xlsx)
- Bugs have been created based on the failed tests, and exploratory testing. The complete bug reports can be found here: [PIM_module_Bugs.pdf](https://github.com/AnamariaJoo/Manual_testing_portofolio/blob/main/Final%20Project/PIM_module_Bugs.pdf)

  - Values separated by other characters than commas
  - Show US Tax Exemptions menu was not added
  - Accepted as photograph another file extension than jpg., png., gif.
  - Missing asterisk next to required field
  - Missing Add/Delete/Edit buttons
  - Missing specification for supported file type
  - Inactive ‘Performance’ tab

- API tests are executed based on the checklist. The collection used can be found here: [Collection of requests created for PIM Module API](https://github.com/AnamariaJoo/Manual_testing_portofolio/blob/main/Final%20Project/orangeHRMrestAPI.postman_collection.json)

- Regression testing is needed after the bugs are fixed.

### 1.7 Test Completion
- Exit criteria was evaluated and passed.
- The traceability matrix was generated and can be found here: [Traceability_Matrix.xlsx](https://github.com/AnamariaJoo/Manual_testing_portofolio/blob/main/Final%20Project/Traceability_Matrix.xlsx)
- Test execution chart was generated, the final report shows that a number of 3 tests have failed of a total of 30 tests.
- A number of 30 test cases were planned for execution and all of them were executed.
- A number of 7 bugs were found (including the ones found through exploratory testing), from which the priority is : 2 high, 2 medium and 3 low.

![PIM_Module_Test execution chart](https://user-images.githubusercontent.com/109798595/181763111-5d956d65-168d-43a5-9ee2-71959a58e0af.jpg)

# 2 SQL section

Created a database named 'orangeHrmPIM' and 3 tables named 'employeelist', 'supervisors' and 'reportingmethod' with all the columns needed to save data per specifications.   
Performed different queries inside the sql file : [OrangeHRM PIM Module.sql](https://github.com/AnamariaJoo/Manual_testing_portofolio/blob/main/Final%20Project/OrangeHRM%20PIM%20Module.sql)

