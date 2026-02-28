import { Component } from '@angular/core';

@Component({
  selector: 'app-uzenetek',
  standalone: true,
  template: `
    <div class="container">
      <h2>Üzenetek</h2>
      <p>Az üzenetküldés hamarosan elérhető lesz.</p>
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
export class UzenetekComponent {}
