.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
imul word ptr [r14 + rsi]
and bl, -65
and rax, 0b1111111111111 # instrumentation
cmp rdx, qword ptr [r14 + rax]
neg rsi
and rdi, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rdi]
sub esi, ecx
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], 31
and rdi, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rdi]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
sbb dl, al
adc al, al
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], cl
adc al, -92
not edi
and rdx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdx], bx
sub rcx, 13
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
