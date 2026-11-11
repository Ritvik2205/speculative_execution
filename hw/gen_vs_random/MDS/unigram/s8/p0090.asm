.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 50
and bl, bl
xor rbx, 89
or dl, dil
xor bl, -61
bts cx, bx
and rdx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rdx], 3
and rbx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rbx]
or ecx, 67
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], rdi
jmp .bb_0.1
.bb_0.1:
and dil, dil
and rax, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], -28205
and rdx, 0b1111111111111 # instrumentation
cmovbe ax, word ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdi], edx
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
btc rsi, rsi
and al, -3 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnl esi, dword ptr [r14 + rdx]
and cx, ax
btc dx, 67
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
