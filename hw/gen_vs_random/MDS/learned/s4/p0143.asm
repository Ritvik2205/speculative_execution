.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ebx, -104
and rbx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rbx]
test cl, sil
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
jmp .bb_0.2
.bb_0.2:
test dil, -51
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
or rax, 302048971
sbb bl, 17
jmp .bb_0.3
.bb_0.3:
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], -1734
jmp .bb_0.4
.bb_0.4:
not bl
or cl, dl
xor al, 115
xor dl, -59
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
