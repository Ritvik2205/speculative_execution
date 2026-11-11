.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, dil
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 3
test sil, bl
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
test al, sil
xor dl, -43
and rdi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rbx
btr di, si
and al, 49
and rcx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rcx]
and dil, -39
xor bx, 30
test bl, -114
and rdx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdx]
xor cl, 24
and al, 82
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 6
and rax, -731384280
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
