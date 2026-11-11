.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, 110 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rbx]
test si, 27
or dl, -18
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], bx
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr ecx, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rdx]
and dl, -7
bt esi, 18
and rdi, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rdi]
bts rax, rsi
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 64
or sil, cl
cmovz ax, dx
cmovnz esi, edx
xor bl, 2
bt di, ax
cmovnl esi, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
