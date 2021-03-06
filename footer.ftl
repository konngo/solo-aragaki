<#--
    Solo - A beautiful, simple, stable, fast Java blogging system.
    Copyright (c) 2010-2018, b3log.org & hacpai.com
    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU Affero General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.
    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU Affero General Public License for more details.
    You should have received a copy of the GNU Affero General Public License
    along with this program.  If not, see <https://www.gnu.org/licenses/>.
-->

<aside>
	<#include "side.ftl"/>
	
	
	 <#if mostUsedTags?? >
	<div class="aside-right sidebar">
		<h3>分门别类</h3>
		<ul>
			 <#list mostUsedTags as tag>
				<#if (tag_index<5)>
				 <li>
				 	<a href="${servePath}/tags/${tag.tagTitle?url('UTF-8')}" >
				 		${tag.tagTitle}
				 	</a>
				 	<span>${tag.tagPublishedRefCount}篇</span>
				 </li>	
				</#if>
			 </#list>
		</ul>
		<div class="clear"></div>
	</div>
	 </#if>
	 <div class="clear"></div>
</aside>


<footer class="footer">
    <#include "../../common-template/macro-user_site.ftl"/>
    <div class="ft__center" style="text-align: center;font-size: 13px;line-height: 20px;">
        <@userSite dir="n"/>
    </div>
	
    <nav class="footer__nav mobile__none">
        <a class="ft__link" rel="alternate" href="${servePath}/rss.xml" rel="section">RSS</a>
		&nbsp;
        <#if isLoggedIn>
        <a class="ft__link" href="${servePath}/admin-index.do#main" title="${adminLabel}">${adminLabel}</a>
		&nbsp;
        <a class="ft__link" href="${logoutURL}">${logoutLabel}</a>
		&nbsp;
        <#else>
        <a class="ft__link" href="${servePath}/start">${startToUseLabel}</a>
		&nbsp;
        </#if>
    </nav>
    <div class="footer__border mobile__none"></div>
  
	<span>&copy; ${year} &nbsp;<a href="${servePath}">${blogTitle}</a> - 
		<a href="${servePath}/archives.html">
            ${statistic.statisticPublishedBlogArticleCount} posts crafted 	
        </a>
	</span>
	<span> ♥ <a href="https://github.com/pengljun/solo-aragaki">Solo-Aragaki</a></span>
	<div class="powered_by">Powered by 
			<a href="https://solo.b3log.org/">Solo </a>
	</div>
	<div class="footer_slogan">
		<h5>${footerContent}</h5>
	</div>
</footer>


<div class="back-to-top" onclick="Util.goTop()"><label>△</label></div>

<script type="text/javascript" src="${staticServePath}/js/lib/jquery/jquery.min.js" charset="utf-8"></script>
<script type="text/javascript" src="${staticServePath}/js/common${miniPostfix}.js?${staticResourceVersion}"
        charset="utf-8"></script>
<#include "../../common-template/label.ftl">

${plugins}
