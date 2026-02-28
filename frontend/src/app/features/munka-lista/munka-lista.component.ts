import { Component } from '@angular/core';

@Component({
  selector: 'app-munka-lista',
  standalone: true,
  template: `
    <div class="container">
      <h2>Elérhető munkák</h2>
      <p>A munka lista hamarosan elérhető lesz.</p>
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
export class MunkaListaComponent {}
