package br.com.guilhermeevangelista.selenium.steps;

import br.com.guilhermeevangelista.selenium.pages.CadastroPage;
import io.cucumber.java.pt.E;

public class CadastroSteps {
    CadastroPage cadastroPage;

    public CadastroSteps(){
        cadastroPage = new CadastroPage();
    }

    @E("crio um usuario preenchendo corretamente os campos de cadastro")
    public void crioUmUsuarioPreenchendoCorretamenteOsCamposDeCadastro() {
        cadastroPage.preencherNome();
        cadastroPage.preencherEmail();
        cadastroPage.preencherSenha();
        cadastroPage.clicarBotaoCadastrar();
    }
}
