import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { MenuComponent } from './componetes/menu/menu.component';
import { CaruselComponent } from './componetes/carusel/carusel.component';
import { PieComponent } from './componetes/pie/pie.component';
import { CabezeraComponent } from './componetes/cabezera/cabezera.component';
import { IndexComponent } from './pagina/index/index.component';

@NgModule({
  declarations: [
    AppComponent,
    MenuComponent,
    CaruselComponent,
    PieComponent,
    CabezeraComponent,
    IndexComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
