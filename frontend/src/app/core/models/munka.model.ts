import { Szakterulet } from './szakember.model';

export interface Munka {
  id: number;
  megrendeloId: number;
  megrendeloNev: string;
  cim: string;
  leiras: string;
  varos?: string;
  statusz: 'NYITOTT' | 'FOLYAMATBAN' | 'LEZART';
  hatarido?: string;
  letrehozva: string;
  szakteruletek: Szakterulet[];
}

export interface MunkaRequest {
  cim: string;
  leiras: string;
  varos?: string;
  hatarido?: string;
  szakteruletIds: number[];
}
