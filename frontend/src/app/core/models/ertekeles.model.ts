export interface Ertekeles {
  id: number;
  ertekeloId: number;
  ertekeloNev: string;
  ertekeltId: number;
  pontszam: number;
  szoveg?: string;
  letrehozva: string;
  valasz?: ErtekelesValasz;
}

export interface ErtekelesValasz {
  id: number;
  szoveg: string;
  letrehozva: string;
}

export interface ErtekelesRequest {
  ertekeltId: number;
  pontszam: number;
  szoveg?: string;
}
