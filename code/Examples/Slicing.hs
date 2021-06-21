-- Implementing slicing using take and drop.

x = [1..10]

slice list start end = (drop start (take end list))
