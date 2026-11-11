.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 43 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rcx]
btc ax, bx
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
setb cl
and cl, 81
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], ax
sbb bl, cl
bt esi, ecx
jmp .bb_0.2
.bb_0.2:
and si, 36
xor ax, 32760
and cl, dil
add dil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
