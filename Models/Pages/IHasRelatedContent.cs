using EPiServer.Core;

namespace MyAlloyTemplate_MVC.Models.Pages
{
    public interface IHasRelatedContent
    {
        ContentArea RelatedContentArea { get; }
    }
}
