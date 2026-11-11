.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rax
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 60
and rax, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rdx]
xchg dl, cl
cmp sil, 25
or rdi, 68
add al, al
and rcx, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
