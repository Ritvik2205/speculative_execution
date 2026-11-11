.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rbx]
lea dx, qword ptr [rdx + rdi]
and dl, -86
lea si, qword ptr [rdi]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], ebx
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 5
jmp .bb_0.3
.bb_0.3:
test dl, 84
and bl, 89
and rax, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
