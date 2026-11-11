.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or esi, eax
and rdx, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rdx]
mov al, bl
and rsi, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rsi]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and cl, cl
xor ax, 913
inc edx
sub al, -1
mov al, bl
and rdi, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rdi]
test bl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
