.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, 72 # instrumentation
cmovz ebx, edi
btc ebx, 149
and rcx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rcx], 1
cmovp dx, bx
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rsi, qword ptr [r14 + rdx]
not bl
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], -53
and edi, 23
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], di
and rax, 1886208862
and ax, -10351
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 1227922647
and rax, -1931765367
and cl, -49 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovns rsi, qword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], ebx
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], 5
btr ebx, esi
and rdi, 0b1111111111111 # instrumentation
cmovbe rsi, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rdi]
cmovnb dx, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
