.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], 91
or eax, 1276549484
setnb al
xchg rbx, rax
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
js .bb_0.2
jmp .bb_0.3
.bb_0.2:
or si, 31
lea di, qword ptr [rdi]
and dl, al
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
test al, 84
jp .bb_0.3
jmp .exit_0
.bb_0.3:
xor cl, -91
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
