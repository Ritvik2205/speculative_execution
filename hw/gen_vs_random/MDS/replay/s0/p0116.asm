.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, 72 # instrumentation
cmovz ebx, edi
btc ebx, 149
cmovnb dx, si
and rax, -636362975
and ax, -16061
cmovp dx, bx
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 1227922647
and rdi, 0b1111111111111 # instrumentation
cmovbe rsi, qword ptr [r14 + rdi]
and rax, 1886208862
not bl
and rdi, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rdi]
and edi, 23
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], 108
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rsi, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], di
and rcx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rcx], 1
btr ebx, esi
and cl, -49 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovns rsi, qword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], 5
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
