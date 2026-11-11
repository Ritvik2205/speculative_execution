.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, sil
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rbx]
jmp .bb_0.2
.bb_0.2:
test rbx, rsi
jmp .bb_0.3
.bb_0.3:
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], 84
jmp .bb_0.4
.bb_0.4:
and rax, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
or sil, bl
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], cl
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], 51
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
