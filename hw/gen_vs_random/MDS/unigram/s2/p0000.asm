.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, sil
and rbx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bts dword ptr [r14 + rbx], edi
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 6
test edx, -1561252782
cmovnl ecx, ecx
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 0
xor bl, bl
or dl, -31
or bx, 0b1000000000000000 # instrumentation
bsf bx, bx
and rbx, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rcx]
and cl, 51 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rsi]
btr rdi, 129
and rax, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 2
xor cl, sil
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
