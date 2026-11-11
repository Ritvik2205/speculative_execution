.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc al
xor ax, 913
add al, 10
and rbx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rsi], 5
adc al, -92
and dl, al
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rbx]
not edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
