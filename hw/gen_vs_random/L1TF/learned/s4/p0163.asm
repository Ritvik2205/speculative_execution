.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea ax, qword ptr [rax]
and rdi, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rdi]
xor rax, 20
test al, -32
and dil, -82
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
add edi, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
