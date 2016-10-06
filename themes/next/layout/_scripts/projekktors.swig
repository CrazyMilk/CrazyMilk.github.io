
{% set projekktors_data = url_for(theme.vendors._internal + '/projekktors/data/playlist.js') %}
<audio class="projekktor speakker dark">
        <source src="{{ projekktors_data }}?v={{ theme.version }}" type="application/json"/>
</audio>
{% set projekktors = url_for(theme.vendors._internal + '/projekktors/speakker-big.js') %}
<script type="text/javascript" src="{{ projekktors }}?v={{ theme.version }}"></script>
<script type="text/javascript">
    $(document).ready(function() {
        projekktor('.projekktor');
    });
</script>
