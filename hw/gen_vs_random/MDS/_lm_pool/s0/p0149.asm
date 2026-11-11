.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rsi], 44
xor cl, dl
and rax, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rax]
and rax, 627810357
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], al
test al, 127
and rdi, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 5
and rax, -731384280
btr si, cx
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 95
or rax, 1461812833
xor dil, sil
test al, bl
and rcx, -63
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
