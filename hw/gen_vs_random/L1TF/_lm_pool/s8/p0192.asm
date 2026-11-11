.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 40 # instrumentation
btc rbx, rbx
test al, -70
jmp .bb_0.1
.bb_0.1:
and cl, 32 # instrumentation
cmovnbe ecx, eax
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], ecx
lea rdx, qword ptr [rcx]
jmp .bb_0.2
.bb_0.2:
jnp .bb_0.3
jmp .exit_0
.bb_0.3:
and bl, bl
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], cl
and rcx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rcx]
lea rax, qword ptr [rbx + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
