.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rcx], 9
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], dx
or rax, -443578116
sbb bl, sil
sbb sil, dl
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdi]
sub bl, al
lea rdi, qword ptr [rsi]
lea rcx, qword ptr [rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
