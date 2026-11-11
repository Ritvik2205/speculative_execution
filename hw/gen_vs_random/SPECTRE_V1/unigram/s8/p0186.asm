.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts rax, rsi
movsx rdi, ax
add al, dil
and rcx, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], al
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdx], 34
neg rbx
add bl, bl
cmovbe rax, rsi
not eax
sub bl, -19
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], al
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], 7
and rcx, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rcx]
sbb sil, dl
add bl, 6 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnz di, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
