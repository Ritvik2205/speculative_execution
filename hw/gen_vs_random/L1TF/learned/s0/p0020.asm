.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 65 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rsi]
cmp rdi, 16
and rcx, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdx]
sbb sil, dil
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], 50
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
or al, -5
adc bl, 86
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 10
imul rbx, rcx, 37
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
