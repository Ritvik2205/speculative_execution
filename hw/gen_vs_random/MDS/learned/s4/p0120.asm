.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor eax, 2063216578
xor dx, 73
xor sil, -15
bts ax, 22
test bl, -9
and rax, 627810357
and bl, bl
and dil, -62
jmp .bb_0.1
.bb_0.1:
and ax, 13090
test ecx, -1843375753
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rdi]
test al, -7
and dil, -62
xor dl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
