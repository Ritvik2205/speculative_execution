.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf edi, edi
and rdi, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rdi]
xor al, -15
xor dl, -68
and rbx, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rbx]
or dl, dl
and rcx, 0b1111111111111 # instrumentation
cmovns bx, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovno ax, word ptr [r14 + rsi]
cmovz ecx, edx
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 31
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
and ecx, 97
and rcx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], ax
xor rcx, 19
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], 56
and rdx, 0b1111111111111 # instrumentation
cmovnle si, word ptr [r14 + rdx]
and dil, -49 # instrumentation
cmovno di, ax
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 3
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
