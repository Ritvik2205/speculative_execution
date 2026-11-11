.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, cl
xor bl, -102
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 1626470119
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], cl
xor dl, al
and rsi, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rsi]
test al, 22
test dil, -80
and cl, -6
btr dx, di
xor rdx, -59
and rbx, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], -65
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
