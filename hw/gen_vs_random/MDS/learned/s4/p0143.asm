.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and di, dx
btr ebx, edi
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], al
not al
and dx, 3
test rdi, 100
or al, -24
or sil, -78
or dil, al
test sil, -55
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
test esi, 1857129931
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
