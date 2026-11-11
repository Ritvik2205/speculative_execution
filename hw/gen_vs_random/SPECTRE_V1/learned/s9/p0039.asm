.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 86 # instrumentation
and rcx, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rcx]
cmp edi, 14
xchg dil, dl
and rsi, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rsi]
add cl, -127
cmp rbx, 91
add al, 18
add dl, 47
sbb cl, al
xchg sil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
