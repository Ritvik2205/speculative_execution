.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc bl, sil
mov cl, sil
bts cx, 48
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], dil
xor cl, 78
and rdx, 0b1111111111111 # instrumentation
cmovno ax, word ptr [r14 + rdx]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and dil, dl
mul cx
add dl, 91 # instrumentation
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rax
lea si, qword ptr [rsi + rax + 44]
imul esi, esi, -106
not edi
and rdx, 0b1111111111111 # instrumentation
movsx ecx, word ptr [r14 + rdx]
lea rcx, qword ptr [rdx + rax]
movzx ecx, di
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 76
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
