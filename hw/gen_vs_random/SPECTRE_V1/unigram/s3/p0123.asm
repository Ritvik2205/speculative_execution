.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -76 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rcx]
add rdx, 95
cmp sil, 25
cmovns rbx, rsi
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], -123
lea rcx, qword ptr [rax + rbx + 10]
add rdx, 95
and rax, 0b1111111111111 # instrumentation
movzx rcx, word ptr [r14 + rax]
sbb sil, dil
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
add cl, -123 # instrumentation
cmovnp rbx, rsi
and rdi, 0b1111111111111 # instrumentation
add ax, word ptr [r14 + rdi]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], dx
and dil, dil
test al, -71
xor sil, -33
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
