module Chapter.CoursePolicies where

data =
  { title = "Course Policies"
  , content = """

# Homework Grading Policy

Homework is graded on a 5-point scale. If you submit correct homework before the due date, you will receive the full 5 points. If you submit incorrect homework on time, you will receive 0 points; however, you may resubmit your work any number of times, and if your new work is correct you will receive 4.5 points. If you submit homework after the due date, it will be graded in the same way, but your score will be reduced by one point. In summary:

<table>
<thead>
<tr><th>Pts.<th>Submitted<th>Accuracy
<tbody>
<tr><td>5.0<td>On time<td>Correct
<tr><td>4.5<td>On time<td>Incorrect, corrections submitted
<tr><td>4.0<td>Late<td>Correct
<tr><td>3.5<td>Late<td>Incorrect, corrections submitted
<tr><td>0.0<td colspan=2>Incorrect or not submitted
</table>

"""
  }
