.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx ecx, ax
lea rdi, qword ptr [rbx]
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], bl
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], sil
sub bl, cl
test al, 84
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
jp .bb_0.2
jmp .exit_0
.bb_0.2:
lea cx, qword ptr [rdx]
bt edx, ebx
and rsi, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rsi]
mov sil, al
sbb al, dil
and al, 33
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
