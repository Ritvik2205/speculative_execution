.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovp bx, ax
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], dl
test cx, si
and rcx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btr dword ptr [r14 + rcx], eax
cmovnbe edx, edx
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], 9
and rax, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btc qword ptr [r14 + rax], rcx
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -3918
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -232610484
and bl, 49 # instrumentation
cmovbe rax, rsi
and al, 53 # instrumentation
cmovnl rax, rax
bt di, ax
and bl, 127 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btr word ptr [r14 + rdi], bx
and rax, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rax]
test edx, ebx
and edi, 23
cmovbe eax, esi
or ecx, eax
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf edi, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
