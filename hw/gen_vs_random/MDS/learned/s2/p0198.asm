.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
xor bl, sil
and rdx, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
or dil, cl
xor al, 9
test rsi, 93
btr rdi, 129
and dl, dl
xor bl, 67
and dx, 60
test dl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
