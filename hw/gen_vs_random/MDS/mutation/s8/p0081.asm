.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], 125
test bx, 4954
test cl, cl
or dl, -31
bts dx, bx
bts rbx, rdi
and rax, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], dl
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -884248205
cmovb bx, si
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], di
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdx]
not rsi
or al, -75
and rdi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btc qword ptr [r14 + rdi], rbx
and rbx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rbx
cmovl rsi, rdx
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], -68
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 77
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
