.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 1324040999
and rsi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rsi], 0
btr esi, ebx
not sil
and rax, 41
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 2
jmp .bb_0.1
.bb_0.1:
and eax, 943733866
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 39
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
test esi, 1857129931
xor cl, 83
test sil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
