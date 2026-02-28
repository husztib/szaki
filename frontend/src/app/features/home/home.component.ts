import { Component } from '@angular/core';
import { RouterLink } from '@angular/router';
import { MatButtonModule } from '@angular/material/button';
import { MatIconModule } from '@angular/material/icon';

@Component({
  selector: 'app-home',
  standalone: true,
  imports: [RouterLink, MatButtonModule, MatIconModule],
  template: `
    <div class="hero">
      <h1>Találd meg a legjobb szakembert!</h1>
      <p>Villanyszerelő, vízszerelő, festő vagy bármilyen más szakember — nálunk megtalálod.</p>
      <div class="hero-actions">
        <a mat-raised-button color="primary" routerLink="/szakemberek" class="hero-btn">
          <mat-icon>search</mat-icon>
          Szakember keresés
        </a>
        <a mat-raised-button routerLink="/regisztracio" class="hero-btn">
          <mat-icon>person_add</mat-icon>
          Regisztráció
        </a>
      </div>
    </div>

    <div class="features">
      <div class="feature">
        <mat-icon>handyman</mat-icon>
        <h3>Szakemberek</h3>
        <p>Böngéssz tapasztalt szakemberek között, szűrj szakterületre és városra.</p>
      </div>
      <div class="feature">
        <mat-icon>work</mat-icon>
        <h3>Munkák</h3>
        <p>Adj fel munkát, és a szakemberek jelentkezhetnek rá.</p>
      </div>
      <div class="feature">
        <mat-icon>star</mat-icon>
        <h3>Értékelések</h3>
        <p>Olvasd el mások véleményét, és válaszd a legjobb szakembert.</p>
      </div>
    </div>
  `,
  styles: [`
    .hero {
      text-align: center;
      padding: 4rem 2rem;
      background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
      color: white;
    }
    .hero h1 {
      font-size: 2.5rem;
      margin-bottom: 1rem;
    }
    .hero p {
      font-size: 1.2rem;
      margin-bottom: 2rem;
      opacity: 0.9;
    }
    .hero-actions {
      display: flex;
      gap: 1rem;
      justify-content: center;
      flex-wrap: wrap;
    }
    .hero-btn {
      font-size: 1rem;
    }
    .features {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
      gap: 2rem;
      padding: 3rem 2rem;
      max-width: 1000px;
      margin: 0 auto;
    }
    .feature {
      text-align: center;
      padding: 1.5rem;
    }
    .feature mat-icon {
      font-size: 48px;
      width: 48px;
      height: 48px;
      color: #667eea;
    }
    .feature h3 {
      margin: 1rem 0 0.5rem;
    }
  `]
})
export class HomeComponent {}
