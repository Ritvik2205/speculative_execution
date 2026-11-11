.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, al
xor rdi, -9
not sil
or cl, 119
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
and dl, cl
and rax, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rax]
and sil, 89
and sil, 74
or al, dl
and rdx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rdx]
and cl, cl
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
