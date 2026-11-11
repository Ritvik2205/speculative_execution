.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dil, -5
xor bx, 10
test dl, 27
test dil, dl
test al, -81
and sil, dl
or al, -78
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ecx
and rdi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rdi], esi
test al, bl
jmp .bb_0.1
.bb_0.1:
test al, -7
test eax, 1729060510
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
