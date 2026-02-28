import { Component } from '@angular/core';
import { RouterLink, RouterLinkActive } from '@angular/router';
import { MatToolbarModule } from '@angular/material/toolbar';
import { MatButtonModule } from '@angular/material/button';
import { MatIconModule } from '@angular/material/icon';
import { MatMenuModule } from '@angular/material/menu';
import { AuthService } from '../../../core/auth/auth.service';

@Component({
  selector: 'app-navbar',
  standalone: true,
  imports: [RouterLink, RouterLinkActive, MatToolbarModule, MatButtonModule, MatIconModule, MatMenuModule],
  template: `
    <mat-toolbar color="primary">
      <a mat-button routerLink="/" class="brand">Szaki</a>

      <a mat-button routerLink="/szakemberek" routerLinkActive="active">Szakemberek</a>

      @if (auth.isMegrendelo()) {
        <a mat-button routerLink="/munka-feladas" routerLinkActive="active">Munka feladás</a>
      }
      @if (auth.isSzakember()) {
        <a mat-button routerLink="/munkak" routerLinkActive="active">Munkák</a>
      }

      <span class="spacer"></span>

      @if (auth.isLoggedIn()) {
        <a mat-button routerLink="/uzenetek" routerLinkActive="active">
          <mat-icon>mail</mat-icon>
          Üzenetek
        </a>
        <button mat-button [matMenuTriggerFor]="menu">
          <mat-icon>account_circle</mat-icon>
          {{ auth.currentUser()?.nev }}
        </button>
        <mat-menu #menu="matMenu">
          <a mat-menu-item routerLink="/profil">Profil</a>
          <button mat-menu-item (click)="auth.logout()">Kijelentkezés</button>
        </mat-menu>
      } @else {
        <a mat-button routerLink="/bejelentkezes" routerLinkActive="active">Bejelentkezés</a>
        <a mat-raised-button routerLink="/regisztracio" routerLinkActive="active">Regisztráció</a>
      }
    </mat-toolbar>
  `,
  styles: [`
    .brand {
      font-size: 1.3rem;
      font-weight: bold;
      margin-right: 16px;
    }
    .spacer {
      flex: 1;
    }
    .active {
      border-bottom: 2px solid currentColor;
    }
  `]
})
export class NavbarComponent {
  constructor(public auth: AuthService) {}
}
