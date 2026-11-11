.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, sil
add cl, cl
xchg al, sil
and rdx, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
test al, -71
lea rsi, qword ptr [rax + rdi]
sbb al, dl
sbb eax, 99727957
cmp cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
