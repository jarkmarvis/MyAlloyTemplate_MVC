@using EPiServer.Core
@using $rootnamespace$.Controllers
@model TeaserBlock

<div class="border">
    @*Link the teaser block only if a link has been set and not displayed in preview*@
    @using(Html.BeginConditionalLink(
        !ContentReference.IsNullOrEmpty(Model.Link) && !(ViewContext.Controller is PreviewController),
        Url.PageLinkUrl(Model.Link),
        Model.Heading))
    {
        <div class="media">
            <div class="mediaImg" @Html.EditAttributes(x => x.Image)>
                <img src="@Url.ContentUrl(Model.Image)"/>
            </div>
            <div class="mediaText">
                <h2 @Html.EditAttributes(x => x.Heading)>@Model.Heading</h2>
                <p @Html.EditAttributes(x => x.Text)>@Model.Text</p>
            </div>
        </div>
    }
</div>
