.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, dl
add bl, 68
xor bl, al
and rcx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rcx]
not cl
test sil, bl
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], sil
and ax, 26813
and cl, al
and rcx, 4
and al, -68
and rdx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
