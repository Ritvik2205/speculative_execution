.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rdi]
or dil, cl
xor rsi, -117
and rcx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rcx]
or dil, -41
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 2
xor bl, sil
test sil, al
xor di, 93
bts rbx, 56
and sil, dl
jmp .bb_0.1
.bb_0.1:
and eax, -85386306
xor bx, 49
test rdi, 37
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
