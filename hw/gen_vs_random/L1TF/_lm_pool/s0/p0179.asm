.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rsi]
or edi, 18
jmp .bb_0.1
.bb_0.1:
add al, -102
cmovle rcx, rdi
or bx, 90
xor al, dl
lea ecx, qword ptr [rdi]
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
