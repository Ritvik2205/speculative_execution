.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], ecx
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 25
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 2
xor bl, -27
or dl, cl
or dl, -97
xor al, bl
xor rcx, -2
and ecx, -104
or cl, bl
and rbx, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rbx]
or al, -58
jmp .bb_0.1
.bb_0.1:
and dil, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
