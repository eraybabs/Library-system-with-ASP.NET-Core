namespace Belediye_Kutuphane_Sistemi.Models
{
    public interface IKitapRepository : IRepository<Kitap>

    {

        void Guncelle(Kitap kitap);

        void Kaydet();

    }
}
