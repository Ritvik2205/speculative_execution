.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 39 # instrumentation
lea cx, qword ptr [rsi]
or edi, 1 # instrumentation
and edx, edi # instrumentation
shr edx, 1 # instrumentation
div edi
cmovbe si, si
test al, -56
and rcx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], ebx
and al, dil
lea rax, qword ptr [rax]
lea si, qword ptr [rdi]
and rdi, 0b1111111111111 # instrumentation
sub rbx, qword ptr [r14 + rdi]
sub ebx, 50
lea rdx, qword ptr [rdi]
adc dl, sil
sub cl, -49
sbb dl, -26
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
