{{ define "charts/index.tpl" }}

<!--Embed the header.html template at this location-->
{{ template "charts/header.tpl" .}}

<!-- Dashboard Card Tiles -->
<div class='wrapper container'>
  {{range $k, $v:= .chartData}}
    <a class="dash-tile" href="/chart/{{(index $v 0).Name}}">
      <div class="icon-container">
        {{ if (index $v 0).Icon}}  
        <img class="card-img-top" src={{ (index $v 0).Icon }}>
        {{else}}
        <img class="card-img-top" src="static/img/default_icon.png">
        {{end}}
      </div>
      <div class="chart-info">
        <div>{{ (index $v 0).Name }}</div>
        <div class="version">version : {{ (index $v 0).Version }}</div>
      </div>
    </a>
  {{end}}
</div>

<!-- Footer section -->
{{ template "charts/footer.tpl" .}}

{{ end }}