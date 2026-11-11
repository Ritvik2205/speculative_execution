.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -122 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rsi]
cmp si, 59
and rax, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], cl
test cl, 79
add dil, cl
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
movzx rcx, word ptr [r14 + rcx]
add al, al
and al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
