.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rdx]
adc bl, -73
and al, 33
cmp dl, cl
jp .bb_0.1
jmp .exit_0
.bb_0.1:
lea cx, qword ptr [rax + rdi + 78]
add bl, sil
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
