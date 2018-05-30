import { SpringbtangUiPage } from './app.po';

describe('springbtang-ui App', function() {
  let page: SpringbtangUiPage;

  beforeEach(() => {
    page = new SpringbtangUiPage();
  });

  it('should display message saying app works', () => {
    page.navigateTo();
    expect(page.getParagraphText()).toEqual('app works!');
  });
});
