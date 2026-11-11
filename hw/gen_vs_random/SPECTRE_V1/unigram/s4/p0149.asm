.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub sil, bl
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], al
setnle dl
or ax, ax
and rax, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rax]
lea rdx, qword ptr [rax + rax + 75]
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], edx
add cl, -127
and al, -54
lea si, qword ptr [rdi + rdx + 28]
neg al
add bl, 32 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], -36
add al, -95 # instrumentation
lea ax, qword ptr [rbx + rbx + 1]
and rcx, 0b1111111111111 # instrumentation
cmp rcx, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
