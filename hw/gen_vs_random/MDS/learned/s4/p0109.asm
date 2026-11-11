.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, edx
test edx, -1561252782
or cl, bl
test esi, 1857129931
test bl, 65
jmp .bb_0.1
.bb_0.1:
test al, 22
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], 111
xor dil, -5
test bl, 65
xor sil, bl
xor ax, -12492
test rax, 1000448998
and eax, 461212071
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
