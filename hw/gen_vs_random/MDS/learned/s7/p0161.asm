.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 95
xor rbx, 89
xor al, -19
and rbx, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], cl
and bl, 68
jmp .bb_0.1
.bb_0.1:
xor dl, cl
xor dil, -70
jmp .bb_0.2
.bb_0.2:
and esi, 31
and rbx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
cmovb cx, si
test al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
