.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, sil
test cl, dl
xor dil, -42
btr bx, dx
jmp .bb_0.1
.bb_0.1:
jnle .bb_0.2
jmp .bb_0.3
.bb_0.2:
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf esi, edi
and rsi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rax]
adc cl, sil
jmp .bb_0.3
.bb_0.3:
test al, -56
jmp .bb_0.4
.bb_0.4:
and rax, 0b1111111111111 # instrumentation
movzx rax, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btr qword ptr [r14 + rbx], rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
