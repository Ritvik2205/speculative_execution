.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdx]
cmovb bx, si
and rbx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rbx
or al, -61
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], dl
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], -68
cmovl rsi, rdx
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], 125
or dl, -97
bts rbx, rdi
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -337720409
and rax, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rax]
test bx, 25542
not rsi
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], di
and rdi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btc qword ptr [r14 + rdi], rbx
bts dx, bx
test cl, cl
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 56
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
