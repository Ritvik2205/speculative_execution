.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bx, dx
xor dil, -70
xor eax, 2063216578
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
test cl, -123
or sil, sil
and rax, 1250429750
btc di, 233
jmp .bb_0.1
.bb_0.1:
or al, -24
and bl, bl
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 739594338
and di, 91
test sil, al
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
not sil
and bx, 86
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
