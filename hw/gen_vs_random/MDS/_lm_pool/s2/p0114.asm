.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, 79
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
and bx, 45
and bl, 68
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dil
or dil, bl
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
xor dl, dil
jmp .bb_0.1
.bb_0.1:
btr ax, di
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], ebx
xor ax, 31969
xor bl, -88
test ebx, -961564216
xor bl, -61
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
