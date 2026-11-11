.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, dil
test sil, -96
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 4
xor ax, -4010
xor al, cl
jmp .bb_0.2
.bb_0.2:
xor dl, dil
xor cl, dil
and rax, 41
or cl, dl
or rdx, -48
jmp .bb_0.3
.bb_0.3:
and rdx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bts qword ptr [r14 + rdx], rsi
xor cl, bl
xor cl, 83
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
