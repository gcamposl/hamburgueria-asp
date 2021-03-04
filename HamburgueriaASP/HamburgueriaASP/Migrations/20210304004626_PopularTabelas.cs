using Microsoft.EntityFrameworkCore.Migrations;

namespace HamburgueriaASP.Migrations
{
    public partial class PopularTabelas : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.Sql("insert into Categorias(CategoriaNome,Descricao) values('Normal','Lanche feito com ingredientes normais')");
            migrationBuilder.Sql("insert into Categorias(CategoriaNome,Descricao) values('Natural','Lanche feito com ingredientes integrais e naturais')");


            migrationBuilder.Sql("insert into Lanches(Nome, DescricaoCurta, DescricaoDetalhada, ImagemUrl, ImagemThumbnailUrl, Preco, IsLanchePreferido, EmEstoque, CategoriaId) values('Cheese Salada', 'Pão, hambúrger, ovo, presunto, queijo e batata palha','Delicioso pão de hambúrger com ovo frito; presunto e queijo de primeira qualidade acompanhado com batata palha','http://www.macoratti.net/Imagens/lanches/cheesesalada1.jpg','http://www.macoratti.net/Imagens/lanches/cheesesalada1.jpg',12.50,0,0,1)");
            migrationBuilder.Sql("insert into Lanches(Nome, DescricaoCurta, DescricaoDetalhada, ImagemUrl, ImagemThumbnailUrl, Preco, IsLanchePreferido, EmEstoque, CategoriaId) values('Misto Quente', 'Pão, presunto, mussarela e tomate', 'Delicioso pão francês quentinho na chapa com presunto e mussarela bem servidos com tomate preparado com carinho.', 'http://www.macoratti.net/Imagens/lanches/mistoquente4.jpg', 'http://www.macoratti.net/Imagens/lanches/mistoquente4.jpg', 8.00, 0, 1, 1)");
            migrationBuilder.Sql("insert into Lanches(Nome, DescricaoCurta, DescricaoDetalhada, ImagemUrl, ImagemThumbnailUrl, Preco, IsLanchePreferido, EmEstoque, CategoriaId) values('Cheese Burger', 'Pão, hambúrger, presunto, mussarela e batalha palha', 'Pão de hambúrger especial com hambúrger de nossa preparação e presunto e mussarela; acompanha batata palha.', 'http://www.macoratti.net/Imagens/lanches/cheeseburger1.jpg', 'http://www.macoratti.net/Imagens/lanches/cheeseburger1.jpg', 11.00, 1, 1, 1)");
            migrationBuilder.Sql("insert into Lanches(Nome, DescricaoCurta, DescricaoDetalhada, ImagemUrl, ImagemThumbnailUrl, Preco, IsLanchePreferido, EmEstoque, CategoriaId) values('Lanche Natural Peito Peru', 'Pão Integral, queijo branco, peito de peru, cenoura, alface, iogurte', 'Pão integral natural com queijo branco, peito de peru e cenoura ralada com alface picado e iorgurte natural.', 'http://www.macoratti.net/Imagens/lanches/lanchenatural.jpg', 'http://www.macoratti.net/Imagens/lanches/lanchenatural.jpg', 15.00, 0, 0, 2)");
        

            // insert alternativo
            //migrationBuilder.Sql("INSERT INTO Lanches(CategoriaId,DescricaoCurta,DescricaoDetalhada,EmEstoque,ImagemThumbnailUrl,ImagemUrl,IsLanchePreferido,Nome,Preco) VALUES(1,'Pão, hambúrger, ovo, presunto, queijo e batata palha','Delicioso pão de hambúrger com ovo frito; presunto e queijo de primeira qualidade acompanhado com batata palha',1, 'http://www.macoratti.net/Imagens/lanches/cheesesalada1.jpg','http://www.macoratti.net/Imagens/lanches/cheesesalada1.jpg', 0 ,'Cheese Salada', 12.50)");
            //migrationBuilder.Sql("INSERT INTO Lanches(CategoriaId,DescricaoCurta,DescricaoDetalhada,EmEstoque,ImagemThumbnailUrl,ImagemUrl,IsLanchePreferido,Nome,Preco) VALUES(1,'Pão, presunto, mussarela e tomate','Delicioso pão francês quentinho na chapa com presunto e mussarela bem servidos com tomate preparado com carinho.',1,'http://www.macoratti.net/Imagens/lanches/mistoquente4.jpg','http://www.macoratti.net/Imagens/lanches/mistoquente4.jpg',0,'Misto Quente', 8.00)");
            //migrationBuilder.Sql("INSERT INTO Lanches(CategoriaId,DescricaoCurta,DescricaoDetalhada,EmEstoque,ImagemThumbnailUrl,ImagemUrl,IsLanchePreferido,Nome,Preco) VALUES(1,'Pão, hambúrger, presunto, mussarela e batalha palha','Pão de hambúrger especial com hambúrger de nossa preparação e presunto e mussarela; acompanha batata palha.',1,'http://www.macoratti.net/Imagens/lanches/cheeseburger1.jpg','http://www.macoratti.net/Imagens/lanches/cheeseburger1.jpg',0,'Cheese Burger', 11.00)");
            //migrationBuilder.Sql("INSERT INTO Lanches(CategoriaId,DescricaoCurta,DescricaoDetalhada,EmEstoque,ImagemThumbnailUrl,ImagemUrl,IsLanchePreferido,Nome,Preco) VALUES(2,'Pão Integral, queijo branco, peito de peru, cenoura, alface, iogurte','Pão integral natural com queijo branco, peito de peru e cenoura ralada com alface picado e iorgurte natural.',1,'http://www.macoratti.net/Imagens/lanches/lanchenatural.jpg','http://www.macoratti.net/Imagens/lanches/lanchenatural.jpg',0,'Lanche Natural Peito Peru', 15.00)");

        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.Sql("delete from Categorias");
            migrationBuilder.Sql("delete from Lanches");
        }
    }
}
