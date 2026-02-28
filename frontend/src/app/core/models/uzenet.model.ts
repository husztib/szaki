export interface Beszelgetes {
  id: number;
  masikFelhasznaloId: number;
  masikFelhasznaloNev: string;
  utolsoUzenet?: string;
  utolsoUzenetIdo?: string;
}

export interface Uzenet {
  id: number;
  beszelgetesId: number;
  kuldoId: number;
  tartalom: string;
  olvasva: boolean;
  kuldve: string;
}
