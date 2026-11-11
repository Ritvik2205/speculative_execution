.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov al, dl
and al, dil
movsx bx, sil
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rcx]
add al, -13
and rax, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], rdx
lea ax, qword ptr [rdi]
movzx edx, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
