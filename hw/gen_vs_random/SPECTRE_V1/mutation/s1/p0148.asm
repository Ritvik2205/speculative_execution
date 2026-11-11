.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub dil, -111
and rcx, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rdi]
adc bl, al
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, 34 # instrumentation
add al, -28 # instrumentation
and rdi, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btr qword ptr [r14 + rdi], rcx
and rsi, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rsi]
sbb dl, cl
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
and rdx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdx], edi
movzx eax, dil
imul cx, bx, -29
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], 51
and rdi, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rdi]
cmovle si, di
and rbx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rbx], eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
