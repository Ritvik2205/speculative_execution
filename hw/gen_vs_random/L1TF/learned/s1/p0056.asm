.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rsi]
or rax, -443578116
mov sil, al
or al, -57
and sil, 93
xchg edx, ecx
lea edi, qword ptr [rbx + rax]
lea rdi, qword ptr [rdx + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
