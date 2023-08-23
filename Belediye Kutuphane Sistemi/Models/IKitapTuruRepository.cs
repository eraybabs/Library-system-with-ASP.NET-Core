namespace Belediye_Kutuphane_Sistemi.Models
{
    public interface IKitapTuruRepository : IRepository<KitapTuru>

    {

        void Guncelle(KitapTuru kitapTuru);

        void Kaydet();

    }
}
