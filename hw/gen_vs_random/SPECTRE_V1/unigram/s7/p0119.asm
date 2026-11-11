.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdi], 98
and rbx, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rbx]
sbb cl, dl
cmovno di, cx
xchg ecx, edi
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rsi], rcx
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 41
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], 64
sbb ax, bx
adc si, 6
and rcx, 0b1111111111111 # instrumentation
cmovb si, word ptr [r14 + rcx]
or al, 19
and rbx, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rbx]
bt edi, 134
sbb sil, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
