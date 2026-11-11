.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], cl
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], -110
and rax, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bts word ptr [r14 + rax], si
and rax, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rax]
and al, -97 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovns bx, word ptr [r14 + rax]
or al, al
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 6
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsf rax, rbx
and rdx, 64
test rsi, 74
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], 85
and rax, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock bts dword ptr [r14 + rax], ecx
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], -12
bt cx, ax
and bl, 120 # instrumentation
cmovnp bx, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
