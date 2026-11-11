.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 2
test ebx, -2015966884
or al, 74
not cl
xor dl, cl
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], bl
test bl, sil
and al, 35
or bl, al
and rbx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rbx
test al, bl
xor dil, -5
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
