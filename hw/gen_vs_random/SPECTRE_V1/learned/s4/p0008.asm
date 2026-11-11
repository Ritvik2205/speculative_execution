.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rsi]
or ebx, -124
jp .bb_0.1
jmp .exit_0
.bb_0.1:
sub al, dl
mov al, dl
add sil, dl
and rdx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rdx]
and al, bl
lea cx, qword ptr [rcx + rdi]
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], 2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
