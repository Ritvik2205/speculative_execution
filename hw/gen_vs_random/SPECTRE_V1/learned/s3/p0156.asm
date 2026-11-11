.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
and rbx, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rbx]
xor cl, bl
adc bl, dl
lea ax, qword ptr [rdi + rsi + 46]
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
