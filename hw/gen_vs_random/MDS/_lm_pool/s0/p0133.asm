.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], ecx
and al, -103
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 2
and dil, 125
and bl, bl
or esi, ecx
jmp .bb_0.1
.bb_0.1:
test al, 22
xor cl, sil
test sil, bl
and rbx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rbx]
or cl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
