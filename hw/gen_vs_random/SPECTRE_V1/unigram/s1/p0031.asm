.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], -40
and rdi, 0b1111111111111 # instrumentation
cmovnbe edi, dword ptr [r14 + rdi]
sub bl, -19
movzx ebx, bl
add al, 110 # instrumentation
add cl, -22 # instrumentation
cmovnz ecx, ecx
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], ebx
lea cx, qword ptr [rax + rax + 48724]
add cl, 43 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rbx]
add bl, -5 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], 22
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 2
and rax, 0b1111111111111 # instrumentation
sub edx, dword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], dil
and rax, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rax]
test rdi, -1846965753
sbb al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
