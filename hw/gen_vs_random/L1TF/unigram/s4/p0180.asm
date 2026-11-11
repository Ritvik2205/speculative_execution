.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea ax, qword ptr [rdx]
and rcx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rcx]
and cl, dl
and rax, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rax]
lea rdi, qword ptr [rdi + rax]
xor rcx, rcx
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], -12
add sil, bl
xor dl, -91
adc bl, sil
add bl, 81 # instrumentation
and rdi, 0b1111111111111 # instrumentation
movsx ax, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rdx]
sbb ax, 67
and rax, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovb edx, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
