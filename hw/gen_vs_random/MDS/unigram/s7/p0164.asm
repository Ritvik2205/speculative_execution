.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], di
bts dx, bx
test dil, -51
test bl, -14
and rax, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rax]
bt eax, 37
or di, 0b1000000000000000 # instrumentation
bsf di, di
and rax, 0b1111111111111 # instrumentation
cmovle edi, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], -30
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], -62
and dl, 21 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rcx]
test dil, dil
and dl, 81 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovnbe di, word ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], ax
and rdx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rdx]
btc rdx, 35
and bl, 120 # instrumentation
cmovnp ax, si
btc rdx, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
