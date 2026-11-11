.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], 4
lea rcx, qword ptr [rbx + rax + 95]
and rsi, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
lea dx, qword ptr [rax]
add al, 93
and rax, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rax]
and dil, 58
cmovl ebx, ecx
bt rsi, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
