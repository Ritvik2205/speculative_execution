.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, dil
test di, bx
xor rdi, -9
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 1
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], ecx
and rdi, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], dx
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 40
and rbx, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rsi]
btr eax, eax
and al, 54 # instrumentation
cmovnp di, di
cmovno rax, rax
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 4
and rdx, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], 67
and sil, 89
bt ax, 76
and rbx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
