.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
and rbx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
sub edx, dword ptr [r14 + rdi]
xor dl, sil
lea rax, qword ptr [rcx + rcx + 47]
lea bx, qword ptr [rbx]
and al, bl
cmp dil, cl
sub rdx, 32
sbb al, sil
and rdi, 0b1111111111111 # instrumentation
movsx rcx, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
