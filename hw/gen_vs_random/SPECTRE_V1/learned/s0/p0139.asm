.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 116 # instrumentation
cmovbe rdi, rdi
sub rsi, 121
and rdi, 0b1111111111111 # instrumentation
and si, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rax]
test bl, 20
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], sil
jmp .bb_0.1
.bb_0.1:
add al, -39 # instrumentation
and rax, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rax]
jnp .bb_0.2
jmp .exit_0
.bb_0.2:
add cl, -83 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btr dword ptr [r14 + rdi], eax
and rax, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btr word ptr [r14 + rax], dx
and rax, 0b1111111111111 # instrumentation
movzx rax, word ptr [r14 + rax]
setp dil
setp sil
test dil, 18
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
