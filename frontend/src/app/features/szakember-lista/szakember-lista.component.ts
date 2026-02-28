import { Component } from '@angular/core';

@Component({
  selector: 'app-szakember-lista',
  standalone: true,
  template: `
    <div class="container">
      <h2>Szakemberek</h2>
      <p>A szakember lista hamarosan elérhető lesz.</p>
    </div>
  `,
  styles: [`
    .container {
      max-width: 1200px;
      margin: 0 auto;
      padding: 2rem;
    }
  `]
})
export class SzakemberListaComponent {}
