.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, bl
test dil, -51
and rax, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rax]
btc di, 164
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], cl
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 1238525395
or rdx, -109
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], al
bt di, 52
test rsi, 82
or al, 16
and rcx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rcx], 1
test ecx, -1843375753
xor dl, 8
and al, 75
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
