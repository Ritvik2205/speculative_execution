.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 80 # instrumentation
sbb bl, bl
and rdx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rdx]
xor al, 38
and rdx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bts qword ptr [r14 + rdx], rbx
jmp .bb_0.1
.bb_0.1:
lea rax, qword ptr [rcx + rdx]
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 0
xor al, sil
adc al, 80
test dil, -126
jmp .bb_0.2
.bb_0.2:
and dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
