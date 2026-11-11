.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs bx, cx
bts rax, rsi
and rax, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rbx
or cl, 7
bt ecx, ebx
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 3
and rcx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rcx]
and cl, al
or dl, cl
xor cx, -18
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 6
and dl, -73
xor dl, 8
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
