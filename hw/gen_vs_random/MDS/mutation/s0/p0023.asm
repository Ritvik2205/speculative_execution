.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, -97
bts rbx, rdi
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], di
test bx, 25542
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], 125
cmovl rsi, rdx
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -1939205136
and rdi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btc qword ptr [r14 + rdi], rbx
test cl, cl
and rbx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rbx
bts dx, bx
and rax, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 56
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdx]
cmovb bx, si
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], dl
not rsi
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], -68
or al, 30
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock btc dword ptr [r14 + rdi], edi
and rcx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rcx]
cmovz si, di
or al, al
btr ebx, 0
and cl, 114 # instrumentation
cmovz dx, si
cmovo dx, dx
and rbx, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rbx]
cmovnle cx, si
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
