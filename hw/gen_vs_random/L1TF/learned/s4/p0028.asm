.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rcx, qword ptr [rcx]
and rdi, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rax]
and bl, 89
and rsi, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rsi]
jmp .bb_0.2
.bb_0.2:
jp .bb_0.3
jmp .exit_0
.bb_0.3:
and rdi, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
