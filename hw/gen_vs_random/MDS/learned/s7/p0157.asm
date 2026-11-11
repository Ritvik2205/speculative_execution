.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 5
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], 120
or al, 24
xor al, 9
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 5
and rdx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rsi
test dil, bl
xor cl, 83
cmp ax, 77
test eax, 1838539683
xor cl, -13
or dil, -76
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
test sil, -55
and al, -103
test rdi, 27
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
