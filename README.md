# `test_cookbook` Chef cookbook

This is a blank cookbook. Its purpose is to run test-kitchen and chefspec tests in TravisCI on pull requests, then the test output can be shared easily. This cookbook can be useful when you have a complex problem, but need to mock up a simplified and less cluttered example of the issue.

To share test results of an issue youre having, submit a PR with the code to reproduce the problem. Then you can share [the test results from TravisCI with anyone](https://travis-ci.org/atheiman/test-cookbook).

Feel free to fork this repo, but know that you'll have to setup your own TravisCI builds (which is very easy and can be found in their documentation).
