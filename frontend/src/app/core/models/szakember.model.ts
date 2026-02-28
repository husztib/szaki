export interface Szakterulet {
  id: number;
  nev: string;
}

export interface SzakemberProfil {
  id: number;
  userId: number;
  nev: string;
  varos?: string;
  bemutatkozas?: string;
  tapasztalatEv?: number;
  minAr?: number;
  maxAr?: number;
  munkaterulet?: string;
  szakteruletek: Szakterulet[];
  atlagPontszam?: number;
}
