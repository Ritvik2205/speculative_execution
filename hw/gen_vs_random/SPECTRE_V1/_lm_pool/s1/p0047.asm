.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], -55
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 6
or sil, bl
sbb dil, cl
and rbx, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rbx]
or cl, dl
sbb al, sil
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
add dl, sil
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], 51
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
