.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setnp dil
xor rdx, 63
cmovnbe rdi, rbx
add bl, -15 # instrumentation
and rdi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdi], cl
bswap ecx
nop
add al, 24 # instrumentation
lea rax, qword ptr [rax]
xchg al, sil
jb .bb_0.1
jmp .exit_0
.bb_0.1:
add bl, 124 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rax]
cmp dl, -115
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], -105
setp bl
imul cl
and rcx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rcx], dil
test al, -75
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
