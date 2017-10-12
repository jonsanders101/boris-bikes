## Domain Model

This week, we were introduced to domain models and their role in building software in an object-oriented way. I will keep notes on the domain model as it changes throughout the project here.

*Nouns*

Person
Bike
Bocking station

*Verbs*

use
release a bike
see if a bike is working

Objects         | Messages
-------------   | -------------
Person          |
Bike            | working?
DockingStation  | release_bike

Bike <-- working? --> true/false
DockingStation <-- release_bike --> a Bike

# Appendix

# Boris Bikes Challenges

London's [Boris Bikes](https://tfl.gov.uk/modes/cycling/santander-cycles) (well, 'Santander Cycles') are awesome. Anyone can hire out a bike and ride it around London.

### Welcome to being a developer

Let's go back several years, to the days when there were no Boris Bikes. Imagine that you're a junior developer (that was easy). Transport for London, the body responsible for delivery of a new bike system, come to you with a plan: a network of docking stations and bikes that anyone can use. They want you to build a program that will emulate all the docking stations, bikes, and infrastructure (repair staff, and so on) required to make their dream a reality.

To help structure your work, here are 22 challenges. They all build on one another. They require you to research things, to get stuck, and to find your own solutions. This is on purpose. A developer is a 'knowledge worker' - someone who will spend the majority of their time researching and learning how to solve problems. It'll suck for a bit, but with practice, you will get faster: and there's no better feeling than finding the answer to a problem that's been standing in your way for hours.

## Learning objectives

### Goals for the week

Ask yourself the same two questions:

* Are you having fun?

* Are you a better developer than you were yesterday?

#### Primary goal

By the end of the week, the goal is to be able to answer "yes" to the week's primary question:

* **Can you use a test-driven approach to write object-oriented code?**

### Sequence & Schedule
* [Onsite](../sequence/onsite/week01.md)
* [Remote](../sequence/remote/week01.md)

### Challenges

1. [Setting up a Project](1_setting_up_a_project.md)
2. [Working with User Stories](2_working_with_user_stories.md)
3. [From a Domain Model to a Feature Test](3_from_domain_models_to_feature_tests.md)
4. [Errors are good](4_errors_are_good.md)
5. [From Feature Tests to Unit Tests](5_from_feature_tests_to_unit_tests.md)
6. [Passing your first Unit Test](6_passing_your_first_unit_test.md)
7. [Back to the feature](7_back_to_the_feature.md)
8. [Back to the unit](8_back_to_the_unit.md)
9. [Building a bike](9_building_a_bike.md)
10. [Making Docking Stations get Bikes](10_making_stations_release_bikes.md)
11. [Using Instance Variables](11_using_instance_variables.md)
12. [Raising Exceptions](12_raising_exceptions.md)
13. [Limiting Capacity](13_limiting_capacity.md)
14. [Using Complex Attributes](14_complex_attributes.md)
15. [The Single Responsibility Principle](15_single_responsibility_principle.md)
16. [Removing Magic Numbers](16_removing_magic_numbers.md)
17. [Initialization Defaults](17_initialization_defaults.md)
18. [Dealing with Broken Bikes](18_dealing_with_broken_bikes.md)
19. [Isolating Tests with Doubles](19_isolating_tests_with_doubles.md)
20. [Mocking Behaviour on Doubles](20_mocking_behaviour_on_doubles.md)
21. [Men with Ven](21_men_with_ven.md)
22. [Modules as Mixins](22_modules_as_mixins.md)

### Post-challenge

After the challenges, you can stretch yourself by implementing additional User Stories that significantly enhance the domain.

1. [Post-challenge](post_challenge.md)
