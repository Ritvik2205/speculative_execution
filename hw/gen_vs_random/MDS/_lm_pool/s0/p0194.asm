.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, -14
and rcx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rdi
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], ebx
test dil, al
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 100
xor cx, -18
and rcx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
xor eax, 2063216578
jmp .bb_0.1
.bb_0.1:
xor cx, -18
xor cl, 98
bt di, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
