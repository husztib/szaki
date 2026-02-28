import { Component } from '@angular/core';

@Component({
  selector: 'app-munka-letrehozas',
  standalone: true,
  template: `
    <div class="container">
      <h2>Munka feladás</h2>
      <p>A munka feladás űrlap hamarosan elérhető lesz.</p>
    </div>
  `,
  styles: [`
    .container {
      max-width: 800px;
      margin: 0 auto;
      padding: 2rem;
    }
  `]
})
export class MunkaLetrehozasComponent {}
