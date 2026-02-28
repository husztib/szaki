import { Component } from '@angular/core';
import { AuthService } from '../../core/auth/auth.service';

@Component({
  selector: 'app-profil',
  standalone: true,
  template: `
    <div class="container">
      <h2>Profil</h2>
      <p>Üdvözlünk, {{ auth.currentUser()?.nev }}!</p>
      <p>A profil szerkesztés hamarosan elérhető lesz.</p>
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
export class ProfilComponent {
  constructor(public auth: AuthService) {}
}
