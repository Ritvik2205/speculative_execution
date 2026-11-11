.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov bl, dil
and rdi, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rdi]
adc bl, 86
lea rbx, qword ptr [rdx]
and rcx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rcx]
mov dil, bl
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
