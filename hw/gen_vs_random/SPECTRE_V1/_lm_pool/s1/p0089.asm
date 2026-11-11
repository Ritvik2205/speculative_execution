.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, -116
cmovnle rdx, rdi
xor rax, 620504108
cmovs rax, rax
inc eax
sub cl, sil
lea rax, qword ptr [rdx]
mov dil, bl
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], cx
lea ax, qword ptr [rbx + rdi]
and rax, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rbx]
setz al
lea dx, qword ptr [rcx + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
