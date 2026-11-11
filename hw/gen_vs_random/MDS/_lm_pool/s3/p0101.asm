.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, sil
or al, 16
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 53
test al, bl
test al, cl
and rdi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdi]
test cl, 62
not al
and al, al
and ax, 29207
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
test esi, 1857129931
and rsi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rsi], 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
