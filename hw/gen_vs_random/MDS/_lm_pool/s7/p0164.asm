.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rbx], 0
or al, -17
and bl, bl
test sil, dil
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 4
jmp .bb_0.1
.bb_0.1:
or bl, sil
and rbx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rbx]
and di, 99
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], cl
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rsi]
and sil, dil
test edx, -372470678
and rsi, 83
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], -109
or dil, 12
test al, 66
test dil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
