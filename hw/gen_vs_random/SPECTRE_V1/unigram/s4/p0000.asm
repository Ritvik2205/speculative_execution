.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdx]
add cl, 43 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rdx]
add sil, -26 # instrumentation
cmovle rax, rsi
and rsi, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rsi]
sbb edi, 72
cmovno edx, ebx
add al, -76 # instrumentation
adc dl, 99
and rcx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rcx]
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
add al, 13 # instrumentation
cmovno rcx, rdi
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], -170871715
and rcx, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rcx], rbx
and rcx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
movzx ecx, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
