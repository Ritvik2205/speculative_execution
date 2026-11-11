.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 47
test al, 40
lea cx, qword ptr [rcx]
lea cx, qword ptr [rcx]
and rdi, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rdi]
xchg cl, dl
xor cl, dl
or sil, dl
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], cl
or dl, 41
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
