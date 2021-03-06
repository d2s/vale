Feature: Checks

  Scenario: SentenceCase
    When I test "checks/SentenceCase"
    Then the output should contain exactly:
      """
      test.md:5:3:demo.SentenceCase:'this isn't in sentence case' should be sentence-cased
      test.md:11:3:demo.SentenceCase:'This Does Not Comply' should be sentence-cased
      """

  Scenario: Repetition
    When I test "checks/Repetition"
    Then the output should contain exactly:
      """
      test.tex:31:21:Vale.Repetition:'not' is repeated!
      text.rst:6:17:Vale.Repetition:'as' is repeated!
      text.rst:15:7:Vale.Repetition:'and' is repeated!
      text.rst:16:22:Vale.Repetition:'on' is repeated!
      text.rst:20:13:Vale.Repetition:'be' is repeated!
      """
