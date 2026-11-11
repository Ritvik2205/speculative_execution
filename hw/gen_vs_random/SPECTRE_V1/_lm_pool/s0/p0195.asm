.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -59 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], 15
and rcx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rcx]
sbb bl, cl
jb .bb_0.1
jmp .bb_0.2
.bb_0.1:
test cl, -62
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 44
add rdx, 95
and al, 33
jmp .bb_0.2
.bb_0.2:
sbb bl, dl
add cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
