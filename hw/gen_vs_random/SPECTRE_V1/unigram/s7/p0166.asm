.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rsi]
sbb al, cl
lea si, qword ptr [rbx + rdi]
and rdi, 0b1111111111111 # instrumentation
movzx si, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], rbx
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], si
neg eax
not cx
setz bl
cmovle ebx, edx
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], 70
xor rcx, 74
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
cmovnb esi, edi
and rdx, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rdx]
adc bl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
