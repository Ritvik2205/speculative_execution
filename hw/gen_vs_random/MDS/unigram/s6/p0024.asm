.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], -45
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 0
and rcx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rcx], 7
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], 105
test dil, -51
cmovnp rax, rbx
and dx, dx
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 93
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], al
and ax, 27170
and rdx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btr word ptr [r14 + rdx], dx
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], 67
and dl, -5 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], 25
and rsi, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btc dword ptr [r14 + rsi], esi
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], 73
and rdi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdi], 93
and rsi, 0b1111111111111 # instrumentation
not word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
