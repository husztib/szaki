export interface User {
  id: number;
  email: string;
  nev: string;
  role: 'SZAKEMBER' | 'MEGRENDELO';
}

export interface AuthResponse {
  token: string;
  user: User;
}

export interface RegisterRequest {
  email: string;
  password: string;
  nev: string;
  telefon?: string;
  varos?: string;
  role: 'SZAKEMBER' | 'MEGRENDELO';
}

export interface LoginRequest {
  email: string;
  password: string;
}
