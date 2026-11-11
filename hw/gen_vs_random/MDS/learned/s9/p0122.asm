.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 7
or rbx, -72
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 2
jmp .bb_0.1
.bb_0.1:
btr dx, ax
xor sil, cl
xor al, dil
test cl, al
test al, dl
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dil
jmp .bb_0.2
.bb_0.2:
or al, -75
or sil, -78
test sil, dil
or rcx, -17
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
