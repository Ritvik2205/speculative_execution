.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btc dword ptr [r14 + rsi], eax
or dl, -31
test cl, dl
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 0
and al, 87
xor cl, 15
xor cl, 55
and cx, -2
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 1
test al, 22
and rax, -1931765367
bts cx, ax
btr ax, di
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
and bl, 68
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
