.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov bl, dl
and rbx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rbx], 5
and rax, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rax], 21
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], sil
and al, 33
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], edx
sub dil, -111
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
