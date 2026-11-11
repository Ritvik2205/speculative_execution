.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 86
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], 46
and rdx, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rdx]
or al, -48
lea si, qword ptr [rdx + rbx]
jmp .bb_0.1
.bb_0.1:
add bl, 68
lea edx, qword ptr [rax + rax]
add bl, 68
and al, -68
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
