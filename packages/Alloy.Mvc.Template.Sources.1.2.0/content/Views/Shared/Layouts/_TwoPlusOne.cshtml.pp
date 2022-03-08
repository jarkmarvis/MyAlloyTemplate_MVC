@using $rootnamespace$
@model IPageViewModel<SitePageData>
@{ Layout = "~/Views/Shared/Layouts/_Root.cshtml"; }

@{Html.RenderPartial("Breadcrumbs");}

<div class="row">

    <div class="span8">
        @RenderBody()
    </div>

    <div class="span4">
        @if (IsSectionDefined("RelatedContent"))
        {
            @RenderSection("RelatedContent")
        }
        else if (Model.CurrentPage is IHasRelatedContent)
        {
            @Html.PropertyFor(x => ((IHasRelatedContent)x.CurrentPage).RelatedContentArea, new { CssClass = "row", Tag = Global.ContentAreaTags.OneThirdWidth })
        }
    </div>
</div>
