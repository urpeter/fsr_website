</div>
		<div id="push"></div>
    </div>

    <div id="footer" class="navbar-text text-center">
        © Fachschaftsrat SpraWiTech (Universität des Saarlandes), ${.now?string("yyyy")}
        <br>
        <span id="impressum">
          <a href="http://www.coli.uni-saarland.de/page.php?id=impressum">Impressum</a>
        </span>
        <span id="disclaimer">
          -
          <a href="http://www.coli.uni-saarland.de/page.php?id=disclaimer">Haftungsausschluss</a>
        </span>
        <span id="data protection">
          -
          <a href="https://www.uni-saarland.de/footer/dialog/datenschutz.html">Datenschutz</a>
        </span>
        <br>
        Mixed with <a href="http://getbootstrap.com/">Bootstrap
        v3.3.7</a> | Baked with <a href="http://jbake.org">JBake ${version}</a>
    </div>

    <!-- Le javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="<#if (content.rootpath)??>${content.rootpath}<#else></#if>js/jquery-1.11.1.min.js"></script>
    <script src="<#if (content.rootpath)??>${content.rootpath}<#else></#if>js/bootstrap.min.js"></script>
    <script src="<#if (content.rootpath)??>${content.rootpath}<#else></#if>js/prettify.js"></script>
    
  </body>
</html>