import { Routes } from '@angular/router';
import { authGuard } from './core/auth/auth.guard';

export const routes: Routes = [
  {
    path: '',
    loadComponent: () => import('./features/home/home.component').then(m => m.HomeComponent)
  },
  {
    path: 'bejelentkezes',
    loadComponent: () => import('./features/auth/login/login.component').then(m => m.LoginComponent)
  },
  {
    path: 'regisztracio',
    loadComponent: () => import('./features/auth/register/register.component').then(m => m.RegisterComponent)
  },
  {
    path: 'szakemberek',
    loadComponent: () => import('./features/szakember-lista/szakember-lista.component').then(m => m.SzakemberListaComponent)
  },
  {
    path: 'munkak',
    loadComponent: () => import('./features/munka-lista/munka-lista.component').then(m => m.MunkaListaComponent),
    canActivate: [authGuard]
  },
  {
    path: 'munka-feladas',
    loadComponent: () => import('./features/munka-letrehozas/munka-letrehozas.component').then(m => m.MunkaLetrehozasComponent),
    canActivate: [authGuard]
  },
  {
    path: 'uzenetek',
    loadComponent: () => import('./features/uzenetek/uzenetek.component').then(m => m.UzenetekComponent),
    canActivate: [authGuard]
  },
  {
    path: 'profil',
    loadComponent: () => import('./features/profil/profil.component').then(m => m.ProfilComponent),
    canActivate: [authGuard]
  },
  {
    path: '**',
    redirectTo: ''
  }
];
