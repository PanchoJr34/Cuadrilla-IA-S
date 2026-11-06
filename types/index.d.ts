export type AgentState = 'running' | 'done' | 'failed' | 'stopped'

export type CuadrillaAgent = {
  id: string
  label: string
  role?: string
  tier?: string
  why?: string
  model: string
  write: boolean
  state: AgentState
  doing: string
  task: string
  /** Solo en escritura: la rama y la carpeta aisladas donde trabaja. */
  branch?: string
  worktree?: string
  report?: string
  changed: string[]
  problem?: string
}

export type CuadrillaLimit = { kind: string; percentUsed: number; resetsAt?: string }

export type GeminiQuota = { id: string; percentUsed: number; resetsAt?: string }
export type GeminiState = { quotas: GeminiQuota[]; sessionTokens: number; seenAt?: number }

declare module 'claude-code' {
  interface PluginState {
    cuadrilla: { agents: Shaped<CuadrillaAgent[]>; limits: Shaped<CuadrillaLimit[]>; team: Shaped<Record<string, string>>; gemini: Shaped<GeminiState> }
  }
}
