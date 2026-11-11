.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ecx, ebx
add bl, al
and bl, bl
or bl, 114
btc dx, di
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], ecx
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf ebx, dword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], cl
and rcx, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rcx]
jmp .bb_0.2
.bb_0.2:
test dl, 84
xor bx, 96
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
