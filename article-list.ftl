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

<div class="wrapper" style="margin-top:0px;">
<main >
	<section class="article-list">
		 <#list articles as article>
			<article>
				<h2 style="margin-top:0px;padding-top:0px;">
					<a href="${servePath}${article.articlePermalink}">
                        ${article.articleTitle}
                    </a> <span>${article.articleViewCount}度</span>
				</h2>
				<div class="excerpt">
				
				${article.articleAbstractText}</div>
				<div class="meta">
					<span class="item">
						<i class="fa fa-calendar-o" ></i>
						&nbsp;${article.articleCreateDate?string('yyyy.MM.dd')}
					</span>
					<span class="item">
						<i class="fa fa-code" aria-hidden="true"></i>
						<#list article.articleTags?split(",") as articleTag>
							<a rel="tag"  href="${servePath}/tags/${articleTag?url('UTF-8')}">
								${articleTag}<#if articleTag_has_next>,</#if>
							</a>
						</#list>
					</span>
					<span class="item">
						<i class="fa fa-battery-three-quarters" aria-hidden="true"></i>
						<span>&nbsp;${article.articleViewCount}度</span>
					</span>
					<span class="item">
						<i class="fa fa-comment-o" aria-hidden="true"></i>
						<span>&nbsp;${article.articleCommentCount}评</span>
					</span>
				</div>
				
			</article>
		 </#list>
	</section>
	
   
</main>


<#if 0 != paginationPageCount>
    <nav class="pagination">
        <#if 1 != paginationPageNums?first>
            <a href="${servePath}${path}?p=${paginationPreviousPageNum}" class="pagination__item">←</a>
            <a class="pagination__item" href="${servePath}${path}">1</a>
            <span class="pagination__item pagination__item--text">...</span>
        </#if>
        <#list paginationPageNums as paginationPageNum>
            <#if paginationPageNum == paginationCurrentPageNum>
            <span class="pagination__item pagination__item--current">${paginationPageNum}</span>
            <#else>
            <a class="pagination__item"
               href="${servePath}${path}?p=${paginationPageNum}">${paginationPageNum}</a>
            </#if>
        </#list>
        <#if paginationPageNums?last != paginationPageCount>
            <span class="pagination__item pagination__item--text">...</span>
            <a href="${servePath}${path}?p=${paginationPageCount}"
               class="pagination__item">${paginationPageCount}</a>
            <a href="${servePath}${path}?p=${paginationNextPageNum}" class="pagination__item">→</a>
        </#if>
    </nav>
</#if>

</div>