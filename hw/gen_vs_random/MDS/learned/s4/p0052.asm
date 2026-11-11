.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dx, 60
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 43
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 2
or dx, 125
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], bx
or cl, dil
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rsi], 1
or dl, -21
jmp .bb_0.3
.bb_0.3:
and rdx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rbx
and al, -114
test sil, dil
bt ax, cx
jmp .bb_0.4
.bb_0.4:
and al, 14
and rdi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
