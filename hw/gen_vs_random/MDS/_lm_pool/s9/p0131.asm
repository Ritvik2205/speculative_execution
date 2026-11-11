.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rbx]
xor cl, -13
test dil, -80
test al, -81
or ax, -7150
jmp .bb_0.1
.bb_0.1:
xor cl, -13
and rcx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rcx]
test al, cl
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 3
or al, -24
or rbx, -77
xor dl, al
and rcx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rcx]
or cl, sil
test al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
