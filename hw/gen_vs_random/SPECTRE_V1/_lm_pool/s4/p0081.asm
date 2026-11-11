.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec si
cmp rsi, 53
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
lea rax, qword ptr [rbx]
jnle .bb_0.2
jmp .bb_0.3
.bb_0.2:
add dl, 47
sbb dl, dil
lea ecx, qword ptr [rdx]
cmp sil, dil
and rdx, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rdx]
add al, 18
jns .bb_0.3
jmp .exit_0
.bb_0.3:
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
