.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 43 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rax]
test al, 34
and rcx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], -46
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
jnp .bb_0.2
jmp .exit_0
.bb_0.2:
cmp al, dl
setnz dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
