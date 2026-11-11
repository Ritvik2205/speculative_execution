.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 4
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 2
and al, dl
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], bl
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
test rcx, -613256812
and bl, al
or dil, 16
and cl, -71
not sil
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 49
xor cl, 15
or rax, -1523798580
and al, -55
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dl
xor rsi, -117
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
