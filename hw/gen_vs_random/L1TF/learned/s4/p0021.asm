.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdi], 10
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovle rdi, qword ptr [r14 + rax]
xor al, dl
inc eax
and dil, dil
jmp .bb_0.2
.bb_0.2:
jp .bb_0.3
jmp .bb_0.4
.bb_0.3:
jmp .bb_0.4
.bb_0.4:
inc eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
