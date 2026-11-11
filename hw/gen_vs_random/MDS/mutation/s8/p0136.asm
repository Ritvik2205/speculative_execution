.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rbx
not rsi
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
test bx, 25542
and rdx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -1939205136
bts dx, bx
and rdi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btc qword ptr [r14 + rdi], rbx
cmovb bx, si
or al, 24
or dl, -8
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], dl
bts rbx, rdi
test cl, cl
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], di
cmovl rsi, rdx
and rax, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 56
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], -86
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], -68
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
