.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, cl
and rbx, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btc word ptr [r14 + rbx], cx
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dil
or al, 37
and rsi, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rsi]
or al, bl
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
test sil, dl
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
test sil, dil
and rbx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rbx]
test bl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
