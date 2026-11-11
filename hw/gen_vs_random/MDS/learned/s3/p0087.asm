.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, bl
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 3
or bl, 100
xor ax, -23364
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 12
and rbx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rbx]
and cl, al
or al, -24
jmp .bb_0.1
.bb_0.1:
xor al, 122
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dil
or cl, 119
xor ax, -6793
and rsi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rsi], 35
test ecx, -1843375753
test al, 22
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
