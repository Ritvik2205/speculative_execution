.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
bts rcx, rax
xor al, 115
or dil, -76
or cl, 6
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rsi
and rdi, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bts word ptr [r14 + rdi], cx
jmp .bb_0.1
.bb_0.1:
xor al, dl
xor bl, dil
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], bl
and rax, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rax]
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
test sil, dil
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
