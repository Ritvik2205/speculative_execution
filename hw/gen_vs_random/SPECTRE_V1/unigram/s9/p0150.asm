.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, dil
xor cl, -40
sbb ebx, 60
add rsi, 109
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], edi
test rax, 1469613902
btr bx, cx
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
lea ax, qword ptr [rdx + rcx]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dil
and rsi, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rsi], 49
cmovnp dx, ax
cmovp rcx, rsi
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf eax, edi
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], sil
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], 69
adc dil, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
