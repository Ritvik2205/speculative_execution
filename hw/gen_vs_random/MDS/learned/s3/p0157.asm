.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, 39 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
xor cl, sil
test sil, dl
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdx], 39
jmp .bb_0.3
.bb_0.3:
jmp .bb_0.4
.bb_0.4:
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, edi
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], sil
cmovle bx, dx
xor al, -19
jmp .bb_0.5
.bb_0.5:
xor dil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
