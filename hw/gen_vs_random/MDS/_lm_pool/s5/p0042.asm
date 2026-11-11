.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cx, -2
and rdi, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
xor dil, -70
and rdi, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rdi]
test al, 66
not dil
jmp .bb_0.1
.bb_0.1:
or cl, 7
xor bl, al
and rax, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btc word ptr [r14 + rax], di
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
test ax, -11534
xor ax, -23364
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
