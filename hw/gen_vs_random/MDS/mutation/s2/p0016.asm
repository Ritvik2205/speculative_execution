.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovl rsi, rdx
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], -86
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], dl
not rsi
and rax, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], -68
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 1324040999
and rdi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btc qword ptr [r14 + rdi], rbx
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 56
bts rbx, rdi
bts dx, bx
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], di
or al, 30
cmovb bx, si
and rbx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rbx
test cl, cl
and rdx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
test bx, 4954
or dl, -21
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
