.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -103 # instrumentation
cmovbe dx, dx
and bl, 124
and rax, 0b1111111111111 # instrumentation
cmovb ecx, dword ptr [r14 + rax]
inc rax
and rdi, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdi]
lea rcx, qword ptr [rdx + rdi + 28]
and rdi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdi]
and bl, dl
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
