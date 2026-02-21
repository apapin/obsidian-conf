---
tags:
  - monthlies
---


```dataview

TABLE 
  file.cday as "Created",
  file.mday as "Last Modified"
FROM "Stream"
WHERE startswith(file.name, this.file.name) 
  AND regextest("^\\d{4}-\\d{2}-\\d{2}$", file.name)
SORT file.name ASC

```
