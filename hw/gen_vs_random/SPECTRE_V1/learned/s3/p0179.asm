.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx ebx, ax
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], 61
cmp rax, 900122030
add cl, -127
xor cl, -91
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
adc ebx, dword ptr [r14 + rsi]
jns .bb_0.2
jmp .exit_0
.bb_0.2:
sbb eax, 2098460225
cmovnle rcx, rdx
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
