.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, al
or cl, -36
and rax, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rax]
or al, -58
test sil, cl
and al, 82
and rax, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -78
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 28
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], 3898
and cx, -2
xor dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
