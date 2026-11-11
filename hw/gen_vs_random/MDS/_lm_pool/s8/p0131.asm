.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, 46
test bl, cl
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 5
and rbx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rbx]
and sil, -56
and rax, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], cx
test bl, -9
and dl, bl
test al, 22
jmp .bb_0.1
.bb_0.1:
test sil, -96
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], 23
and rax, 1886208862
and rcx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
