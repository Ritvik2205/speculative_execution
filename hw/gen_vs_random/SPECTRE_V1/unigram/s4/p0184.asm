.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovle rdi, rbx
add cl, 75 # instrumentation
sbb dl, sil
not rax
or dl, 1 # instrumentation
add cl, -47 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovs rdi, qword ptr [r14 + rcx]
add bl, 26 # instrumentation
sbb bl, al
and rdx, 0b1111111111111 # instrumentation
add dl, -51 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rcx]
cmovnbe cx, bx
cbw
or rsi, 16
js .bb_0.1
jmp .exit_0
.bb_0.1:
sub dl, -29
mov bl, al
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], dl
add bl, -108 # instrumentation
sbb sil, 1
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], 97
test dl, 40
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], 49
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
