.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 114
or al, -57
and rsi, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rsi], 71
and sil, 93
jmp .bb_0.1
.bb_0.1:
lea rbx, qword ptr [rdx + rdi + 48]
or al, -48
xor cl, dl
add eax, -1
add sil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
