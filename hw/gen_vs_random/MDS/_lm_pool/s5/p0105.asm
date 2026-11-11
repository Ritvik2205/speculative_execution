.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ebx, 55
test dl, -85
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rbx
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], cl
and dl, al
or dil, -71
or ax, -6817
xor bl, dil
and rcx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rcx], dx
or dil, bl
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 5
xor al, 55
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], edx
test rcx, -613256812
and dl, -73
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
