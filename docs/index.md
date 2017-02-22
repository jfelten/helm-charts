---
# You don't need to edit this file, it's empty on purpose.
# Edit theme's home layout instead if you wanna make some changes
# See: https://jekyllrb.com/docs/themes/#overriding-theme-defaults

layout: home
---

# [](#header-1)Quick Start

```bash
helm repo add jfelten https://jfelten.github.io/helm-charts/charts
helm install jfelten/<CHART_NAME>
```
## [](#header-2)Available Charts

> <LIST of Charts>
{% for chart in site.data.index.entries %}
  <h2>{{ chart[0] }}(  
  	{% for properties in chart %}
		{{ properties[0].version }}
  	{% endfor %}
   )</h2>
{% endfor %}


---
