.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, 22
btc rdx, 138
and cl, -101
and rax, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rax]
cmovbe ax, di
and cl, -109 # instrumentation
cmovns rsi, rsi
and al, -17 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rax]
and cl, 48 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl ax, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovb si, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], 83
and al, dil
and rcx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rcx], 6
and ax, bx
and rdi, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btr qword ptr [r14 + rdi], rdx
cmovns ebx, ebx
or cl, 10
cmovnb cx, dx
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], 11
and rdx, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rdx]
or dx, 20
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
