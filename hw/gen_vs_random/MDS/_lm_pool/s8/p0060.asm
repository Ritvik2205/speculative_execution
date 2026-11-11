.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dx, di
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 2
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 72
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 6
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 36
xor bl, -61
and rax, -1701787862
xor cl, dil
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], sil
and cl, -71
test rax, -1579405415
or al, -58
or sil, cl
xor dl, -19
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 59
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
