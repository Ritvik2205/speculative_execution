.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea dx, qword ptr [rdx]
add bl, bl
mov dl, bl
and dx, 4
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
