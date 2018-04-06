Deliverable #5 Static Analysis

When running simplecov, you will notice that the test case coverage as 
printed out on the terminal for each separate file is below 90%. This is wrong. 
If you take a look at index.html in the coverage folder that will get generated, 
you will find that the file that you are testing for (CityTest.rb and DriverTest.rb) 
has a coverage of well over 90% so please make sure to check that when running these 
test files. For example, if you run DriverTest.rb, you will notice
that the coverage for driver.rb is over 90% but the coverage for the other files
is below 90%. Then if you run CityTest.rb, you will notice that the coverage for 
city.rb and going.rb are over 90%, but the coverage for driver.rb is below 90%.
This happens because the files are not tested as a group, but are tested
individually. If you run into any problems, please let me know. Thanks!
