.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, -98 # instrumentation
and rdi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdi], bx
mov dl, sil
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rbx]
js .bb_0.2
jmp .bb_0.3
.bb_0.2:
cmp rdi, 70
jnp .bb_0.3
jmp .exit_0
.bb_0.3:
mov dil, dl
sbb rsi, 97
add rax, -704585563
and rcx, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
lea si, qword ptr [rbx]
and rsi, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
